module Gisele
  module Language
    module Syntax
      module Attribute
        include Node

        def _to_ast
          [:attribute, annotation_name.to_sym, val.to_ast]
        end

      end # module Set
    end # module Syntax
  end # module Language
end # module Gisele
