require 'spec_helper'
module Gisele::Language
  describe Grammar, 'attribute' do

    subject{ parse(source, :attribute) }

    context 'on an attribute without unit' do
      let(:source){ "weight 1..10" }

      it 'should parse it' do
        subject.should eq(source)
      end

      it 'to_ast works' do
        subject.to_ast.should eq([:attribute, :weight, [:range, 1..10]])
      end
    end

    context 'on an attribute with a unit' do
      let(:source){ "weight 1..10 [kg]" }

      it 'should parse it' do
        subject.should eq(source)
      end

      it 'to_ast works' do
        subject.to_ast.should eq([:attribute, :weight, [:range, 1..10, [:unit, 'kg']]])
      end
    end

  end
end
