module Gisele
  module Language
    module Syntax
      module Set
        include Node

        def _to_ast
          Array(captures[:value]).map(&:to_ast).unshift(:set)
        end

      end # module Set
    end # module Syntax
  end # module Language
end # module Gisele
