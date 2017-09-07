require 'spec_helper'
require 'account'

describe Account do

  let(:transfer){ double(date: 7/7/7, amount: 700, type: :deposit)}
  let(:log){ double(:log) }
  let(:transfer_object){ double(:transfer_object) }
  subject(:account){ described_class.new(log, transfer_object) }

  describe "init" do
    it "has a log" do
      expect(account.log).to eq log
  end
    it "has a transfer object" do
      expect(account.transfer_object).to eq transfer_object
    end
end

  describe "#balance" do
    it "has a initial balance of 0" do
      expect(account.balance).to eq 0
    end
  end

  describe "#deposit" do
    before(:each) do
      allow(log).to receive(:store)
      allow(transfer_object).to receive(:new)
    end
    it "changes the balance to 500" do
      account.deposit(500)
      expect(account.balance).to eq 500
    end
  end

  describe "#withdrawal" do
    before(:each) do
      allow(log).to receive(:store)
      allow(transfer_object).to receive(:new)
    end
    it "changes the balance to 200" do
      account.deposit(500)
      account.withdraw(300)
      expect(account.balance).to eq 200
    end
  end
end
