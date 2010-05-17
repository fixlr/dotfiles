require 'rake'

desc "Symlink dotfiles into home directory"
task :install do
  linkables = Dir.glob('*/**{.symlink}')
  
  linkables.each do |linkable|
    file = linkable.split('/').last.chomp('.symlink')
    `ln -s "$PWD/#{linkable}" "$HOME/.#{file}"`
  end
end
