require 'spec_helper'
require 'statement'

describe Statement do

  subject(:statement){ described_class.new }
  let(:transfer){ :transfer }

  describe "#statement" do
    it "has an empty array to store transfers" do
      expect(statement.transfers).to be_a Array
    end
  end

  describe "#store" do
    it "stores a transfer" do
      statement.store(:transfer)
      expect(statement.transfers).to eq ( [:transfer] )
    end
  end

  describe "#all" do
    it "returns all tansfers" do
      statement.transfers << :transfer
      expect(statement.all).to eq ( [:transfer] )
    end
  end

end
