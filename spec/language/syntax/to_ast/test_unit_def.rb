require 'spec_helper'
module Gisele::Language::Syntax
  describe UnitDef, 'to_ast' do

    it 'converts a single task definition as expected' do
      expr = <<-UNIT.strip
        task Task1 end
      UNIT
      expected = \
        [:unit_def,
          [:task_def, "Task1", [:nop_st]]]
      ast(expr, :unit_def).should eq(expected)
    end

  end
end