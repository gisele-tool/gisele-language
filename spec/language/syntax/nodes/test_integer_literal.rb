require 'spec_helper'
module Gisele::Language
  describe Grammar, 'integer_literal' do

    subject{ parse(source, :integer_literal) }

    context 'on a normal integer' do
      let(:source){ "12" }

      it 'should parse it' do
        subject.should eq("12")
      end

      it 'value should coerce to Integer' do
        subject.value.should eq(12)
      end
    end

    context 'on a negative integer' do
      let(:source){ "-12" }

      it 'should parse it' do
        subject.should eq("-12")
      end

      it 'value should coerce to Integer' do
        subject.value.should eq(-12)
      end
    end

    context 'on zero' do
      let(:source){ "0" }

      it 'should parse it' do
        subject.should eq("0")
      end

      it 'value should coerce to Integer' do
        subject.value.should eq(0)
      end
    end

  end
end
