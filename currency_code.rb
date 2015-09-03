require './currency'
require './currency_converter'

dollar = Currency.new(5.3, "USD")
#dollar2 = Currency.new(5, "BUSD")

#print dollar.amount
#print " "
#puts dollar.currency_code

#puts symbol(dollar)
#puts dollar.currency_code

currency_hash = Currency_Converter.new
currency_hash = {USD: 1.0, EUR: 0.74}
puts currency_hash
