require "bundler/gem_tasks"
Rake::Task[:release].clear

# @see http://qiita.com/items/d3111ea76b2941d71ef5
require "bundler/gem_helper"

t = Bundler::GemHelper.new

desc "Create tag #{t.send(:version_tag)}"
task :tag do
  t.send(:tag_version) { t.send(:git_push) } unless t.send(:already_tagged?)
end
