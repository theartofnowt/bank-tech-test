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

  describe "withdrawal" do
    it "has a withdrawal made" do
      deposit = 500
      account.deposit(deposit)
      withdraw = 300
      account.withdraw(withdraw)
      expect(account.balance).to eq 200
    end
  end
end
