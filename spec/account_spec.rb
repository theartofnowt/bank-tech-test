require 'spec_helper'
require 'account'


describe Account do
  
  let(:account){ Account.new }

  describe "#balance" do
    it "have a initial balance of 0" do
      expect(account.balance).to eq 0
    end
  end

  describe "deposit" do
    it "has a deposit paid into account" do
      deposit = 500
      account.deposit(deposit)
      expect(account.balance).to eq 500
    end
  end
end
