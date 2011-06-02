require 'rake'

desc "Symlink dotfiles into home directory"
task :install do
  linkables = Dir.glob('*/**{.symlink}')

  skip_all = false
  overwrite_all = false
  backup_all = false

  linkables.each do |linkable|
    skip = false
    overwrite = false
    backup = false

    file = File.basename(linkable).chomp('.symlink')
    target = "#{ENV["HOME"]}/.#{file}"

    if File.exists?(target) || File.symlink?(target)
      unless skip_all || overwrite_all || backup_all
        puts "File already exists: #{target} what do you want to do? " +
             "[s]kip, [S]kip all, [o]verwrite, [O]verwrite all, [b]ackup, [B]ackup all"
        case STDIN.gets.chomp
        when 'o' then overwrite = true
        when 'b' then backup = true
        when 's' then skip = true
        when 'O' then overwrite_all = true
        when 'B' then backup_all = true
        when 'S' then skip_all = true
        end
      end
    end

    unless skip || skip_all
      FileUtils.rm_rf(target) if overwrite || overwrite_all
      `mv "$HOME/.#{file}" "$HOME/.#{file}.backup"` if backup || backup_all
      `ln -s "$PWD/#{linkable}" "#{target}"`
    end
  end
end

desc "Remove dotfile symlinks from the home directory"
task :uninstall do
  puts "Does not exist yet. How about you write one?"
end

task :default => 'install'
