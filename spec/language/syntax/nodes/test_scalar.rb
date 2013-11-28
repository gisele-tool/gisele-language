require 'spec_helper'
module Gisele::Language
  describe Grammar, 'scalar' do

    subject{ parse(source, :scalar) }

    context 'on a scalar without unit' do
      let(:source){ "10" }

      it 'should parse it' do
        subject.should eq("10")
      end

      it 'to_ast works' do
        subject.to_ast.should eq([:scalar, 10])
      end
    end

    context 'on a scalar with a unit' do
      let(:source){ "10 [kg/m2]" }

      it 'should parse it' do
        subject.should eq("10 [kg/m2]")
      end

      it 'to_ast works' do
        subject.to_ast.should eq([:scalar, 10, [:unit, 'kg/m2']])
      end
    end

  end
end
