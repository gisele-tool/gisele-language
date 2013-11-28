require 'spec_helper'
module Gisele::Language
  describe Grammar, 'range' do

    subject{ parse(source, :range) }

    context 'on a range without unit' do
      let(:source){ "1..10" }

      it 'should parse it' do
        subject.should eq("1..10")
      end

      it 'to_ast works' do
        subject.to_ast.should eq([:range, 1..10])
      end
    end

    context 'on a range with a unit' do
      let(:source){ "1..10 [kg/m2]" }

      it 'should parse it' do
        subject.should eq("1..10 [kg/m2]")
      end

      it 'to_ast works' do
        subject.to_ast.should eq([:range, 1..10, [:unit, "kg/m2"]])
      end
    end

    context 'on an open range without unit' do
      let(:source){ "1...10" }

      it 'should parse it' do
        subject.should eq("1...10")
      end

      it 'to_ast works' do
        subject.to_ast.should eq([:range, 1...10])
      end
    end

  end
end
