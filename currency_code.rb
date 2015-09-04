require './currency'
require './currency_converter'
require './error'

dollar = Currency.new("$5.30", "")
dollar2 = Currency.new(5, :USD)

#print dollar.amount
#print " "
#puts dollar.currency_code

#puts dollar + dollar2
currency_hash = Currency_Converter.new({USD: 1, EUR: 0.74})
puts currency_hash
puts currency_hash.currency_hash

#puts convert(6, "USD")

#puts dollar + dollar2


#puts dollar.amount
#puts dollar.currency_code
#puts dollar2.amount
#puts dollar2.currency_code
