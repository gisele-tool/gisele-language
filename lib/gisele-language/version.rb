module Gisele
  module Language
    module Version

      MAJOR = 0
      MINOR = 7
      TINY  = 0

      def self.to_s
        [ MAJOR, MINOR, TINY ].join('.')
      end

    end
    VERSION = Version.to_s
  end
end