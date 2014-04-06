require 'bundler'
Bundler.setup

require 'rake'
require 'rspec/core/rake_task'

begin

  RSpec::Core::RakeTask.new(:spec) do |task|
    task.rspec_opts = %w[--color]
    task.pattern = 'spec/**/*_spec.rb'
  end
  
  RSpec::Core::RakeTask.new(:acceptance) do |task|
    task.rspec_opts = %w[--color]
    task.pattern = 'acceptance/**/*_spec.rb'
  end
  
  task default: [:spec, :acceptance]
rescue LoadError
  # Don't genera, requirements: requirementste Rspec tasks if we don't have it installed
end

task :phase1 do
  toy_factory_spec(:phase1)

  sucess = Rake::Task['toy_factory_phase1'].invoke

  exec( 'cat acceptance/assets/images/success' )
end

task :phase2 do
  toy_factory_spec(:phase2)

  sucess = Rake::Task['toy_factory_phase2'].invoke

  exec( 'cat acceptance/assets/images/success' )
end

task :phase3 do
  toy_factory_spec(:phase3)

  sucess = Rake::Task['toy_factory_phase3'].invoke

  exec( 'cat acceptance/assets/images/success' )
end

task :phase4 do
  toy_factory_spec(:phase4)

  sucess = Rake::Task['toy_factory_phase4'].invoke

  exec( 'cat acceptance/assets/images/success' )
end

private 

def toy_factory_spec(phase)
  RSpec::Core::RakeTask.new("toy_factory_#{phase}") do |task|
    task.rspec_opts = %w[--color]
    task.pattern = "acceptance/#{phase}/*_spec.rb"
  end 
end

