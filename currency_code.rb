require './currency'
require './currency_converter'

dollar = Currency.new(75, "USD")
dollar2 = Currency.new(75, "USD")

#print dollar.amount
#print " "
#puts dollar.currency_code

puts dollar + dollar2
