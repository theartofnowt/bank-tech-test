class Statement

  attr_reader :transfers

  def initialize
    @transfers = Array.new
  end

  def store(transfer)
    @transfers.push(transfer)
  end

  def all
    @transfers
  end

end
