module Gisele
  module Language
    module Syntax
      module EventSet
        include Node

        def _to_ast
          Array(captures[:event]).map(&:value).unshift(:event_set)
        end

      end # module EventSet
    end # module Syntax
  end # module Language
end # module Gisele