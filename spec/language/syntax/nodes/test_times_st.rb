require 'spec_helper'
module Gisele::Language::Syntax
  describe TimesSt, "to_ast" do

    subject{ parse(source, :times_st) }

    context 'with a single task' do
      let(:source){ "6 x Treatment" }

      it 'parses correctly' do
        subject.should eq(source)
      end

      it 'to_ast works' do
        subject.to_ast.should eq([
          :times_st,
          6,
          [:task_call_st, "Treatment"]
        ])
      end
    end

    context 'with a compound statement task' do
      let(:source){ "6 x if good Treatment else Rest end" }

      it 'parses correctly' do
        subject.should eq(source)
      end

      it 'to_ast works' do
        subject.to_ast.should eq([
          :times_st,
          6,
          [:if_st,
            [:bool_expr, [:var_ref, "good"]],
            [:task_call_st, "Treatment"],
            [:else_clause, [:task_call_st, "Rest"]]]
        ])
      end
    end

  end
end
