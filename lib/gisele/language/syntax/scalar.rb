module Gisele
  module Language
    module Syntax
      module Scalar
        include Node

        def _to_ast
          ast = [:scalar, value_literal.value]
          ast << unit.to_ast if unit
          ast
        end

      end # module Scalar
    end # module Syntax
  end # module Language
end # module Gisele
