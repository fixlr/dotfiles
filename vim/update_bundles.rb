#!/usr/bin/env ruby
# Original: http://tammersaleh.com/posts/the-modern-vim-config-with-pathogen

# Get list of vim bundles from my .vim/bundles_list.txt instead of
# adding all of them to this file.
git_bundles = File.readlines(File.dirname(__FILE__) + '/vim.symlink/bundles_list.txt').
                   map(&:strip).
                   delete_if(&:empty?)

require 'fileutils'
require 'open-uri'

bundles_dir = File.join(File.dirname(__FILE__), "vim.symlink", "bundle")

FileUtils.cd(bundles_dir)

trash = ARGV.include?('--trash')

if trash
  puts "Trashing everything (lookout!)"
  Dir["*"].each {|d| FileUtils.rm_rf d }
end

git_bundles.each do |url|
  dir = url.split('/').last.sub(/\.git$/, '')
  if !trash && File.exists?(dir)
    puts " Skipping #{dir}"
    next
  end
  puts " Unpacking #{url} into #{dir}"
  `git clone #{url} #{dir}`
  FileUtils.rm_rf(File.join(dir, ".git"))
end