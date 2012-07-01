ENV['INSTALL_PATH'] = File.join(File.dirname(__FILE__), 'home')

require 'test/unit'
require 'fileutils'
require 'stringio'
require 'rake'
load File.dirname(__FILE__) + '/../Rakefile'

class TestInstall < Test::Unit::TestCase
  INSTALL_PATH = ENV['INSTALL_PATH']

  def setup
    FileUtils.mkdir(INSTALL_PATH)
  end

  def teardown
    reenable_all_tasks
    FileUtils.rm_r(INSTALL_PATH)
  end

  def test_home_exists
    assert File.exists?(INSTALL_PATH)
  end

  def test_install_task_exists
    assert_equal true, Rake::Task.task_defined?('install')
  end

  def test_uninstall_task_exists
    assert_equal true, Rake::Task.task_defined?('uninstall')
  end

  def test_install_task_creates_all_symlinks
    invoke_install_task
    src_dots = Dir.glob("#{File.expand_path(File.dirname(__FILE__)+'/..')}/**/*.symlink")
    dst_dots = Dir.glob("#{INSTALL_PATH}/.*").delete_if {|f| !File.symlink?(f) }

    assert_equal src_dots.length, dst_dots.length
  end

  def test_install_does_not_clobber_existing_files
    FileUtils.touch(INSTALL_PATH + '/.zshrc')
    invoke_install_task

    assert_equal false, File.symlink?(INSTALL_PATH + '/.zshrc')
  end

  def test_uninstall_task_removes_all_symlinks
    invoke_install_task
    invoke_uninstall_task
    dst_dots = Dir.glob("#{INSTALL_PATH}/.*").delete_if {|f| !File.symlink?(f) }

    assert_equal 0, dst_dots.length
  end

  def test_uninstall_does_not_remove_real_files
    FileUtils.touch(INSTALL_PATH + '/.zshrc.local')
    invoke_install_task
    invoke_uninstall_task

    assert File.exists?(INSTALL_PATH + '/.zshrc.local')
  end

  def capture_rake_output
    s = StringIO.new
    $stderr = s
    yield
    s.string
  ensure
    $stderr = STDERR
  end

  def invoke_install_task
    capture_rake_output { Rake::Task['install'].invoke }
  end

  def invoke_uninstall_task
    capture_rake_output { Rake::Task['uninstall'].invoke }
  end

  def reenable_all_tasks
    Rake::Task.tasks.each(&:reenable)
  end
end
