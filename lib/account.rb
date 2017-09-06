class Account

attr_reader :balance, :log

  def initialize(log)
    @log = log
    @balance = 0
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

end
