module Gisele
  module Language
    module AST
      module TaskDef
        include Node

        def label
          self[1].to_s
        end

      end # module TaskDef
    end # module AST
  end # module Language
end # module Gisele