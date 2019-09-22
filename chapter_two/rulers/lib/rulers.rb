require "rulers/version"
require "rulers/array"

module Rulers
  class Error < StandardError; end

  class Application
    def call(env)
      `echo debug > debug.txt`;
      [200, {'Content-Type' => 'text/html'},
       ["Hello from Ruby on Rulers!"+[4,5,6].sum.to_s]]
    end
  end
end
