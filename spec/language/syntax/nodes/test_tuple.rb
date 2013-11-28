require 'spec_helper'
module Gisele::Language
  describe Grammar, 'tuple' do

    subject{ parse(source, :tuple) }

    context 'on an empty tuple' do
      let(:source){ "{ }" }

      it 'should parse it' do
        subject.should eq(source)
      end

      it 'to_ast works' do
        subject.to_ast.should eq([:tuple])
      end
    end

    context 'on a non empty tuple' do
      let(:source){ "{ weight 10 [kg] }" }

      it 'should parse it' do
        subject.should eq(source)
      end

      it 'to_ast works' do
        subject.to_ast.should eq([
          :tuple,
          [:attribute, :weight, [:scalar, 10, [:unit, 'kg']]]
        ])
      end
    end

    context 'on more than one attribute' do
      let(:source){ "{ weight 10 [kg], height 170 [cm] }" }

      it 'should parse it' do
        subject.should eq(source)
      end

      it 'to_ast works' do
        subject.to_ast.should eq([
          :tuple,
          [:attribute, :weight, [:scalar, 10, [:unit, 'kg']]],
          [:attribute, :height, [:scalar, 170, [:unit, 'cm']]]
        ])
      end
    end

  end
end
