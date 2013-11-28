require 'spec_helper'
module Gisele::Language
  describe Grammar, 'string_literal' do

    subject{ parse(source, :string_literal) }

    context 'on a normal string' do
      let(:source){ %q{"foo"} }

      it 'should parse it' do
        subject.should eq(%q{"foo"})
      end

      it 'value should remove the quotes' do
        subject.value.should eq("foo")
      end
    end

    context 'on an escaped string' do
      let(:source){ %q{"f\"oo"} }

      it 'should parse it' do
        subject.should eq(%q{"f\"oo"})
      end

      it 'value should unescape it' do
        subject.value.should eq('f"oo')
      end
    end

    context 'on an empty string' do
      let(:source){ %q{""} }

      it 'should parse it' do
        subject.should eq(%q{""})
      end

      it 'value should return the empty string' do
        subject.value.should eq('')
      end
    end

  end
end
