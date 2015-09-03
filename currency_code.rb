require './currency'
require './currency_converter'

dollar = Currency.new(5.3, "USD")
dollar2 = Currency.new(5, "USD")

#print dollar.amount
#print " "
#puts dollar.currency_code

puts dollar * dollar2
