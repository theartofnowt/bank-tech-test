require 'spec_helper'
require 'transactions'

describe Transactions do
  context "desposit" do

  deposit_info = { date: "7/09/2017", amount: 500, type: :deposit }
  let(:deposit){ Transactions.new(deposit_info) }

  it "has a date" do
    expect(deposit.date).to eq "7/09/2017"
  end

  it "has an amount" do
    expect(deposit.amount).to eq 500
  end

  it "has a type" do
    expect(deposit.type).to eq (:deposit)
  end
end
end
