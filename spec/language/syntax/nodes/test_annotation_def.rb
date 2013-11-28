require 'spec_helper'
module Gisele::Language
  describe Grammar, 'annotation_def' do

    subject{ parse(source, :annotation_def) }

    context 'with a single annotation' do
      let(:source){ %q{@role "patient"} }

      it 'parses it' do
        subject.should eq(source)
      end

      it 'to_ast works' do
        subject.to_ast.should eq([
          :annotation_def,
          :role,
          [:scalar, "patient"]
        ])
      end
    end

  end
end
