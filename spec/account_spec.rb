require 'spec_helper'
require 'account'

describe Account do

  let(:transfer){ double(date: 7/7/7, amount: 700, type: :deposit)}
  let(:statement){ double(:statement) }
  let(:transaction){ double(:transaction) }
  subject(:account){ described_class.new(statement, transaction) }

  describe "init" do
    it "has a statement" do
      expect(account.statement).to eq statement
  end
    it "has a transaction" do
      expect(account.transaction).to eq transaction
    end
end

  describe "#balance" do
    it "has a initial balance of 0" do
      expect(account.balance).to eq 0
    end
  end

  describe "#deposit" do
    before(:each) do
      allow(statement).to receive(:store)
      allow(transaction).to receive(:new)
    end
    it "changes the balance to 500" do
      account.deposit(500)
      expect(account.balance).to eq 500
    end
  end

  describe "#withdrawal" do
    before(:each) do
      allow(statement).to receive(:store)
      allow(transaction).to receive(:new)
    end
    it "changes the balance to 200" do
      account.deposit(500)
      account.withdraw(300)
      expect(account.balance).to eq 200
    end
  end
end
