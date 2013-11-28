module Gisele
  module Language
    module Syntax
      module Value
        include Node

        def _to_ast
          raise NotImplementedError
        end

      end # module Value
    end # module Syntax
  end # module Language
end # module Gisele
