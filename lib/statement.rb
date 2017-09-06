class Statement

  attr_accessor :transfers

  def initialize
    @transfers = Array.new
  end

  def store(transfer)
    @transfers.push(transfer)
  end

end
