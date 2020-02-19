class Patron
  attr_reader :name,
              :spending_money,
              :interests
  def initialize(name, spending_money)
    @name = name
    @spending_money = spending_money.to_i
    @interests = []
  end

  def add_interest(subject)
    @interests << subject
  end
  
end
