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





#  def +(amount, amount)
#  end


end


#Should equal another Currency object with
#the same amount and currency code
#Should NOT equal another Currency object
#with different amount or currency code
