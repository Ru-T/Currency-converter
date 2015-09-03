class Currency

  attr_accessor :amount
  attr_accessor :currency_code

  def initialize(amount, currency_code = "")
    if currency_code != ""
       @amount = amount
       @currency_code = currency_code
    else
       @amount = amount.delete(" ") # delete all spaces
       @currency_code == @amount[0] #first character of amount assigned to currency_code
       @amount == @amount[1..-1] #amount is now all but its first character
    end
  end



  def ==(currency_one)
    @amount == currency_one.amount && @currency_code == currency_one.currency_code
  end

#the above states that any two currencies with equal amounts and currency types are equal

  def +(currency_one)
    if @currency_code == currency_one.currency_code
      @amount + currency_one.amount
    else
      raise UnknownCurrencyCodeError
    end
  end

#the above allows two amounts of the same currency type to be added together

  def -(currency_one)
    if @currency_code == currency_one.currency_code
      @amount - currency_one.amount
    else
      raise UnknownCurrencyCodeError
    end
  end

#the above allows two amounts of the same currency type to be subtracted

  def *(currency_one)
    if @currency_code == currency_one.currency_code
      @amount * currency_one.amount
    else
      raise UnknownCurrencyCodeError
    end
  end

#the above allows two amounts of the same currency type to be multiplied

end


#Should equal another Currency object with
#the same amount and currency code
#Should NOT equal another Currency object
#with different amount or currency code
