module Gisele
  module Language
    module Syntax
      module Unit
        include Node

        def _to_ast
          [:unit, unit_name]
        end

      end # module Unit
    end # module Syntax
  end # module Language
end # module Gisele
