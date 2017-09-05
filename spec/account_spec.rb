require 'spec_helper'
require 'account'

describe Account do

  describe "#balance" do
    it "have a initial balance of 0" do
      account = Account.new
      expect(account.balance).to eq 0
    end

  end

end
