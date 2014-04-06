require 'rspec/core/formatters/base_formatter'

module RSpec
  module Core
    module Formatters
      class FailuresFormatter < BaseFormatter

        # create a file called rspec.failures with a list of failed examples
        def dump_failures
          return if failed_examples.empty?
          f = File.new("rspec.failures", "w+")
          failed_examples.each do |example|
            f.puts retry_command(example)
          end
          f.close
        end

        def retry_command(example)
          example_name = example.full_description.gsub("\"", "\\\"")
          "-e \"#{example_name}\""
        end

      end
    end
  end
end
