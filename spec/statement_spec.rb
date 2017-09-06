require 'spec_helper'
require 'statement'

describe Statement do

  let(:statement){ Statement.new }
  let(:transfer){ :transfer }

  describe "#statement" do
    it "has an empty array to store transfers" do
      expect(statement.transfers).to be_a Array
    end
  end

  describe "#store" do
    it "stores a transfer" do
      statement.store(transfer)
      expect(statement.transfers).to eq ( [:transfer] )
    end
  end

end
