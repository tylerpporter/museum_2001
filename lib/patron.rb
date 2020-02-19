class Patron
  attr_reader :name,
              :spending_money
  def initialize(name, spending_money)
    @name = name
    @spending_money = spending_money.to_i
  end
end
