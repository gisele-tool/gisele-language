require 'spec_helper'
module Gisele::Language
  describe "the Sexp grammar", "trackvar_def" do

    let(:g){ Gisele::Language }

    it 'matches a trackvar with initial value' do
      trackvar = [:trackvar_def, "name", [:event_set, "update"], [:event_set], true]
      (sexp_grammar[:trackvar_def] === trackvar).should be_true
    end

    it 'matches a trackvar without initial value' do
      trackvar = [:trackvar_def, "name", [:event_set, "update"], [:event_set], nil]
      (sexp_grammar[:trackvar_def] === trackvar).should be_true
    end

  end
end