module Gisele
  module Language
    module Syntax
      module ParSt
        include Node

        def _to_ast
          Array(captures[:st_list]).first.value.unshift(:par_st)
        end

      end # module ParSt
    end # module Syntax
  end # module Language
end # module Gisele