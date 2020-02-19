class Museum
  attr_reader :name,
              :exhibits,
              :patrons

  def initialize(name)
    @name = name
    @exhibits = []
    @patrons = []
  end

  def add_exhibit(exhibit)
    @exhibits << exhibit
  end

  def recommend_exhibits(patron)
    matches = []
    patron.interests.each do |interest|
      @exhibits.each do |exhibit|
        if interest == exhibit.name
          matches << exhibit
        end
      end
    end
    matches
  end

  def admit(patron)
    @patrons << patron
  end

  def patrons_by_exhibit_interest
    by_interest = {}
    @exhibits.each do |exhibit|
      patrons = []
      @patrons.each do |patron|
        if patron.interests.any? {|interest| interest == exhibit.name}
          patrons << patron
        end
      end
      by_interest[exhibit] = patrons
    end
    by_interest
  end

end
