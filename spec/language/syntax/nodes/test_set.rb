require 'spec_helper'
module Gisele::Language
  describe Grammar, 'set' do

    subject{ parse(source, :set) }

    context 'on an empty set' do
      let(:source){ "{ }" }

      it 'should parse it' do
        subject.should eq(source)
      end

      it 'to_ast works' do
        subject.to_ast.should eq([:set])
      end
    end

    context 'on a non empty set' do
      let(:source){ "{ 12 }" }

      it 'should parse it' do
        subject.should eq(source)
      end

      it 'to_ast works' do
        subject.to_ast.should eq([:set, [:scalar, 12]])
      end
    end

    context 'on more than one value' do
      let(:source){ "{ 12, 14, 16 }" }

      it 'should parse it' do
        subject.should eq(source)
      end

      it 'to_ast works' do
        subject.to_ast.should eq([
          :set,
          [:scalar, 12],
          [:scalar, 14],
          [:scalar, 16]
        ])
      end
    end

    context 'on heterogeneous' do
      let(:source){ %q|{ 12, 14 [kg], "foo" }| }

      it 'should parse it' do
        subject.should eq(source)
      end

      it 'to_ast works' do
        subject.to_ast.should eq([
          :set,
          [:scalar, 12],
          [:scalar, 14, [:unit, 'kg']],
          [:scalar, "foo"]
        ])
      end
    end

  end
end
