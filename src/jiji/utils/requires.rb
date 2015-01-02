
module Jiji
module Utils
  
  class Requires
  
    def self.root
      File.expand_path("../../../../", __FILE__)
    end
    
    def self.require_all( path )
      Dir["#{root}/src/#{path}/**/*.rb"].each { |f|
        require f[root.length+5 .. -4] 
      }
    end
    
  end
  
end
end