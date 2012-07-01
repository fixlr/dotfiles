require 'rake'

SOURCE_PATH  = File.dirname(__FILE__)
INSTALL_PATH = ENV['INSTALL_PATH'] || ENV['HOME']

# Define file tasks for symlink creation
DOTS = FileList.new("#{SOURCE_PATH}/**/*.symlink").collect do |src|
  dst = src.pathmap("#{INSTALL_PATH}/.%n")

  file dst do
    symlink(src, dst)
  end
end


desc 'Create dotfile symlinks in the target directory (home)'
task :install => DOTS

desc 'Destroy dotfile symlinks in the target directory (home)'
task :uninstall do
  FileList.new("#{INSTALL_PATH}/.*").each do |dot|
    if File.symlink?(dot) && File.readlink(dot).include?(SOURCE_PATH)
      rm dot
    end
  end
end
