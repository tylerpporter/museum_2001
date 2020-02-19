require_relative 'test_helper.rb'
require './lib/patron.rb'

class PatronTest < Minitest::Test

  def setup
    @patron_1 = Patron.new
  end

  def test_it_exists
    assert_instance_of Patron, @patron_1
  end

end
