class Currency_Converter

  #attr_accessor :currency_code
  #attr_accessor :conversion_rate

  def initialize
       @currency_hash = {}
  end

   #def initialize(currency_code, conversion_rate)
  #  @currency_code = currency_code
  #  @conversion_rate = conversion_rate
  #end

#  def convert (amount)
#  end  

end


#Should be initialized with a Hash of currency codes to conversion
#rates (see link to rates below)
#At first, just make this work with two currency codes and
#conversation rates, with one rate being 1.0 and the other being the
#conversation rate. An example would be this: {USD: 1.0, EUR: 0.74},
#which implies that a dollar is worth 0.74 euros.
