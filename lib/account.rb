class Account

attr_reader :balance, :log, :transfer_object

  def initialize(log, transfer_object)
    @log = log
    @transfer_object = transfer_object
    @balance = 0
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

end
