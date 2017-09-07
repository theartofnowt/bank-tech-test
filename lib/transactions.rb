class Transactions

  attr_reader :date, :amount, :type

  def initialize(info)
    @date = info[:date]
    @amount = info[:amount]
    @type = info[:type]
  end

end
