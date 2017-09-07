class Transactions

  attr_reader :date, :amount, :type

  def initialize(info)
    @date = info[:date] || "7/09/2017"
    @amount = info[:amount] || 500
    @type = info[:type] || :deposit
  end

end
