class Currency

  attr_accessor :amount
  attr_accessor :currency_code

  def initialize(amount, currency_code = "")
    if currency_code != ""
       @amount = amount
       @currency_code = currency_code
    else
       @amount = amount.delete(" ") # delete all spaces
       @currency_code = @amount[0] #first character of amount assigned to currency_code
       @amount = @amount[1..-1].to_f #amount is now all but its first character
       if @currency_code == "$"
         @currency_code = :USD
       elsif @currency_code == "€"
         @currency_code = :EUR
       elsif @currency_code == "¥"
         @currency_code = :JAP
       end
       #the above could contain many more symbol conversion to codes
    end
  end

  def ==(currency_one)
    @amount == currency_one.amount && @currency_code == currency_one.currency_code
  end
#the above states that any two currencies with equal amounts and currency types are equal

  def +(currency_one)
    if @currency_code == currency_one.currency_code
      Currency.new(@amount + currency_one.amount, @currency_code)
    else
      raise UnknownCurrencyCodeError
    end
  end
#the above allows two amounts of the same currency type to be added together

  def -(currency_one)
    if @currency_code == currency_one.currency_code
      Currency.new(@amount - currency_one.amount, @currency_code)
    else
      raise UnknownCurrencyCodeError
    end
  end
#the above allows two amounts of the same currency type to be subtracted

  def *(currency_one)
    if @currency_code == currency_one.currency_code
      Currency.new(@amount * currency_one.amount, @currency_code)
    else
      raise UnknownCurrencyCodeError
    end
  end
#the above allows two amounts of the same currency type to be multiplied
end
