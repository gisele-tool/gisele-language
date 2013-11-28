module Gisele
  module Language
    module Syntax
      module AnnotationDef
        include Node

        def _to_ast
          [:annotation_def, annotation_name.to_sym, val.to_ast]
        end

      end # module AnnotationDef
    end # module Syntax
  end # module Language
end # module Gisele
