module Gisele
  module Language
    module Syntax
      module Tuple
        include Node

        def _to_ast
          Array(captures[:attribute]).map(&:to_ast).unshift(:tuple)
        end

      end # module Tuple
    end # module Syntax
  end # module Language
end # module Gisele
