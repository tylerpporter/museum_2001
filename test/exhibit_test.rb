require_relative 'test_helper.rb'
require './lib/exhibit.rb'

class ExhibitTest < Minitest::Test

  def setup
    @exhibit = Exhibit.new
  end

  def test_it_exists
    assert_instance_of Exhibit, @exhibit
  end

end
