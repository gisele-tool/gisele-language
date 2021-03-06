$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'gisele-language'

module SpecHelpers

  def parse(text, rule, consume = true)
    grammar = Gisele::Language::Grammar
    grammar.parse(text, :root => rule, :consume => consume)
  end

  def ast(text, rule, consume = true)
    ast = parse(text, rule, consume).to_ast
    unless sexp_grammar[rule] === ast
      raise "expected #{ast} to match #{rule} (#{text})"
    end
    ast
  end

  def fixtures_dir
    (Path.dir/:fixtures)
  end

  def fixture_files(glob)
    fixtures_dir.glob(glob)
  end

  def sexp_grammar
    Gisele::Language
  end

  def simple_ast
    Gisele::ast(fixtures_dir/"simple.gis")
  end

  def complete_ast
    Gisele::ast(fixtures_dir/"complete.gis")
  end

end

RSpec.configure do |c|
  c.include SpecHelpers
  c.extend  SpecHelpers
end
