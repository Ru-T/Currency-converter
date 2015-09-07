require './currency'
require './currency_converter'
require './error'

puts "The below verifies initialization of Currency class"
dollar = Currency.new("$5.30", "")
dollar2 = Currency.new(5, :USD)

dollar.symbol_check("$")
dollar2.symbol_check(:USD)

puts dollar.amount
puts dollar.currency_code
puts dollar2.amount
puts dollar2.currency_code

puts "The below confirms all amounts calculating correctly and returning currencies"
addition = dollar + dollar2
subtraction = dollar - dollar2
multiplication = dollar * dollar2

puts addition.amount
puts addition.currency_code
puts subtraction.amount
puts subtraction.currency_code
puts multiplication.amount
puts multiplication.currency_code

puts "The below verifies initialization of the CurrencyConverter class"
currency_hash = CurrencyConverter.new({USD: 1, EUR: 0.89})
puts currency_hash.currency_hash

puts "The below verifies converting within the same currency_code"
currency_converter = CurrencyConverter.new({USD: 1})
new_amount = currency_converter.convert(Currency.new(1, :USD), :USD)

puts new_amount == Currency.new(1, :USD).amount

puts "The below verifies converting from one currency to another"
diff_currency_converter = CurrencyConverter.new({USD: 1, EUR: 0.89})
original_currency = Currency.new(12, :USD)
new_code = :EUR

eur_amount = diff_currency_converter.convert(original_currency, new_code)

puts eur_amount

puts "The below verifies converting from one currency to another when three are present"
mult_currency_converter = CurrencyConverter.new({USD: 1, EUR: 0.89, JPY: 118.89})
orig_currency = Currency.new(118, :JPY)
curr_code = :EUR

jpy_amount = mult_currency_converter.convert(orig_currency, curr_code)

puts jpy_amount
