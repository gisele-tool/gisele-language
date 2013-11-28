module Gisele
  module Language
    module Syntax
      module Range
        include Node

        def _to_ast
          x, y, closed = left.value, right.value, (mid == '...')
          ast = [:range, ::Range.new(x, y, closed)]
          ast << unit.to_ast if unit
          ast
        end

      end # module Range
    end # module Syntax
  end # module Language
end # module Gisele
