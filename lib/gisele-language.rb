require "gisele-language/loader"
require_relative "gisele/language"
require "gisele-language/version"
module Gisele

  def parse(*args)
    Language::parse(*args)
  end

  def ast(*args)
    Language::sexpr(*args)
  end

  def sexpr(*args)
    Language::sexpr(*args)
  end

  extend(self)
end