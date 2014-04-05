require 'bundler'
Bundler.setup

require 'rake'

begin
  require 'rspec/core/rake_task'

  RSpec::Core::RakeTask.new(:spec) do |task|
    task.rspec_opts = %w[--color]
    task.pattern = 'spec/**/*_spec.rb'
  end

  task default: :spec
rescue LoadError
  # Don't generate Rspec tasks if we don't have it installed
end
