require 'rake'
require 'rspec/core/rake_task'

desc 'Default: run specs.'
task default: :spec

desc 'Run specs'
RSpec::Core::RakeTask.new(:spec) do |t|
  t.pattern = ['spec/**/*_spec.rb', 'ruby_basics/**/*_spec.rb']
  t.verbose = false
end
