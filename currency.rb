class Currency

  attr_accessor :amount
  attr_accessor :currency_code

  def initialize(amount, currency_code = "")
    if currency_code != ""
       @amount = amount
       @currency_code = currency_code
    else
       @amount = amount.delete(" ") #delete all spaces
       @currency_code = @amount.gsub(/[0-9, .]/, '')
       @amount = @amount.gsub(/[^\d,\.]/, '').to_f
    end
  end

  def symbol_check (currency_code)
    if @currency_code == "$"
      @currency_code = :USD
    elsif @currency_code == "€"
      @currency_code = :EUR
    elsif @currency_code == "¥"
      @currency_code = :JAP
      #TO DO: turn the above if/else into a hash
    end
  end

  def ==(currency_one)
    @amount == currency_one.amount && @currency_code == currency_one.currency_code
  end

  def +(currency_one)
    if @currency_code == currency_one.currency_code
      Currency.new(@amount + currency_one.amount, @currency_code)
    else
      raise UnknownCurrencyCodeError
    end
  end

  def -(currency_one)
    if @currency_code == currency_one.currency_code
      Currency.new(@amount - currency_one.amount, @currency_code)
    else
      raise UnknownCurrencyCodeError
    end
  end

  def *(currency_one)
    if @currency_code == currency_one.currency_code
      Currency.new(@amount * currency_one.amount, @currency_code)
    else
      raise UnknownCurrencyCodeError
    end
  end
end

#def symbol_check (symbol)
#  symbol_hash = {:USD => "$", :EUR => "€", :JAP => "¥"}
#  symbol_hash = {"$" => :USD, "€" => :EUR, "¥" => :JAP}
#    if symbol_hash.has_value?(@currency_code)
#      @currency_code = symbol_hash[@currency_code]
#    else
#      raise UnknownCurrencyCodeError
#    end
#end
