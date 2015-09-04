class CurrencyConverter

  attr_accessor :currency_hash

  def initialize (currency_hash = {})
    @currency_hash = currency_hash
  end


  def convert (currency, currency_code)
    if currency.currency_code == currency_code
      currency.amount
    end
  end


end

#currency_converter.convert(Currency.new(1, :USD), :USD) == Currency.new(1, :USD))

#Should be able to take a Currency object and a requested currency code that is the
#same currency code as the Currency object's and return a Currency object equal to the
#one passed in
