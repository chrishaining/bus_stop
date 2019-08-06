require('minitest/autorun')
require('minitest/rg')
require_relative('../bus')

class BusTest < MiniTest::Test

  def setup
    @bus = Bus.new("22", "Ocean Terminal")
  end

  def test_route_number
    assert_equal("22", @bus.route_number())
  end

  def test_destination
    assert_equal("Ocean Terminal", @bus.destination())
  end

def test_make_driving_sound
  assert_equal("Brum brum", @bus.make_driving_sound())
end

end
