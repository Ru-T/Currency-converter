class Currency_Converter

  attr_accessor :currency_hash

  def initialize (currency_hash = {})
    @currency_hash = currency_hash
  end
end


  #def convert (currency)
  #  if @currency_code == amount.currency_code
  #     @amount == amount.amount
  #end


#Should be able to take a Currency object and a
#requested currency code that is the same currency
#code as the Currency object's and return a
#Currency object equal to the one passed in
#(that is, currency_converter.convert(Currency.
#new(1, :USD), :USD) == Currency.new(1, :USD))
