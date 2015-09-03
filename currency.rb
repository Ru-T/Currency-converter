class Currency

  attr_accessor :amount
  attr_accessor :currency_code

  def initialize(amount, currency_code)
    @amount = amount
    @currency_code = currency_code
  end

  def ==(currency_one)
    @amount == currency_one.amount && @currency_code == currency_one.currency_code
  end

  def +(currency_one)
    if @currency_code == currency_one.currency_code
      @amount + currency_one.amount
    else
      puts "You cannot add two different currencies"
    end
  end

  def -(currency_one)
    if @currency_code == currency_one.currency_code
      @amount - currency_one.amount
    else
      puts "You cannot subtract two different currencies"
    end
  end

  def *(currency_one)
    if @currency_code == currency_one.currency_code
      @amount * currency_one.amount
    else
      puts "You cannot multiply two different currencies"
    end
  end

end


#Should equal another Currency object with
#the same amount and currency code
#Should NOT equal another Currency object
#with different amount or currency code
