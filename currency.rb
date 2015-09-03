class Currency

  attr_accessor :amount
  attr_accessor :currency_code

  def initialize(amount, currency_code)
    @amount = amount
    @currency_code = currency_code
  end

  def symbol(currency)
    if @currency_code == ""
       @currency_code == @amount.str[1..-1]
    end
  end
  #Currency.new should be able to take one argument with a currency symbol embedded in it,
  #like "$1.20" or "€ 7.00", and figure out the correct currency code. It can also take two
  #arguments like before, one being the amount and the other being the currency code.

  def ==(currency_one)
    @amount == currency_one.amount && @currency_code == currency_one.currency_code
  end

#the above states that any two currencies with equal amounts and currency types are equal

  def +(currency_one)
    if @currency_code == currency_one.currency_code
      @amount + currency_one.amount
    else
      puts "You cannot add two different currencies"
    end
  end

#the above allows two amounts of the same currency type to be added together

  def -(currency_one)
    if @currency_code == currency_one.currency_code
      @amount - currency_one.amount
    else
      puts "You cannot subtract two different currencies"
    end
  end

#the above allows two amounts of the same currency type to be subtracted

  def *(currency_one)
    if @currency_code == currency_one.currency_code
      @amount * currency_one.amount
    else
      puts "You cannot multiply two different currencies"
    end
  end

#the above allows two amounts of the same currency type to be multiplied

end


#Should equal another Currency object with
#the same amount and currency code
#Should NOT equal another Currency object
#with different amount or currency code
