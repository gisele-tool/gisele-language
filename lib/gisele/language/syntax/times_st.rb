module Gisele
  module Language
    module Syntax
      module TimesSt
        include Node

        def _to_ast
          [:times_st, posint_literal.value, explicit_statement.to_ast]
        end

      end # module TimesSt
    end # module Syntax
  end # module Language
end # module Gisele
