require './currency'
require './currency_converter'
require './error'

dollar = Currency.new("$5.30", "")
dollar2 = Currency.new(5, :USD)

puts dollar.amount
puts dollar.currency_code
puts dollar2.amount
puts dollar2.currency_code

# puts new variable that is the addition
addition = dollar + dollar2
subtraction = dollar - dollar2
multiplication = dollar * dollar2

puts addition.amount
puts addition.currency_code
puts subtraction.amount
puts subtraction.currency_code
puts multiplication.amount
puts multiplication.currency_code
#currency_hash = CurrencyConverter.new({USD: 1, EUR: 0.74})
#puts currency_hash.currency_hash

#puts convert(6, "USD")
