require 'rspec'
require 'bundler/setup'

class String
  def camelize
    self.split('_').map {|s| s.capitalize }.join
  end
end

$:.unshift(File.join(File.dirname(__FILE__), *%w[.. lib]))

