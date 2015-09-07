class CurrencyConverter

  attr_accessor :currency_hash

  def initialize (currency_hash = {})
    @currency_hash = currency_hash
  end

  def convert (currency, currency_code)
    if currency.currency_code == currency_code
      currency.amount
    #TO DO: comment out everything but the if if this breaks!
    #TO DO: check if the above if statement is unnecessary
    elsif currency.currency_code != currency_code
      currency.amount * (@currency_hash[currency_code]/@currency_hash[currency.currency_code])
    else
    # put custom error in here
    raise UnknownCurrencyCodeError
    end
  end

end


# 1 USD = .84 EUR

# 20 USD = .84(20) EUR

# .84 EUR = 1 USD
# 20 EUR = 20/.84 USD
