class Account

attr_reader :balance, :statement, :transaction

  def initialize(statement, transaction)
    @statement = statement
    @transaction = transaction
    @balance = 0
  end

  def deposit(amount)
    info = {amount: amount, date: Time.now, type: :deposit}
    save_to_statement(info)
    @balance += amount
  end

  def withdraw(amount)
    info = {amount: amount, date: Time.now, type: :withdraw}
    save_to_statement(info)
    @balance -= amount
  end

end

private

def save_to_statement(info)
  transactions = @transaction.new(info)
  @statement.store(transactions)
end
