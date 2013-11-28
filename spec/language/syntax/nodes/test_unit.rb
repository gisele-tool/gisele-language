require 'spec_helper'
module Gisele::Language
  describe Grammar, 'unit' do

    subject{ parse(source, :unit) }

    context 'on a normal unit' do
      let(:source){ "[cm]" }

      it 'should parse it' do
        subject.should eq("[cm]")
      end

      it 'to_ast works' do
        subject.to_ast.should eq([:unit, "cm"])
      end
    end

    context 'on a fraction unit' do
      let(:source){ "[kg/m2]" }

      it 'should parse it' do
        subject.should eq("[kg/m2]")
      end

      it 'to_ast works' do
        subject.to_ast.should eq([:unit, "kg/m2"])
      end
    end

  end
end
