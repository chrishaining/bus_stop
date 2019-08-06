require('minitest/autorun')
require('minitest/rg')
require_relative('../bus')
require_relative('../person')

class BusTest < MiniTest::Test

  def setup
    passengers = []
    @bus = Bus.new("22", "Ocean Terminal", passengers)
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

  def test_count_passengers
    assert_equal(0, @bus.count_passengers())
  end

  def test_count_passengers__pick_up
    passenger1 = Person.new("Chris", 43)
    @bus.pick_up(passenger1)
    assert_equal(1, @bus.count_passengers())
  end

  def test_count_passengers__drop_off
    passenger1 = Person.new("Chris", 43)
    @bus.drop_off(passenger1)
    assert_equal(0, @bus.count_passengers())
  end

  def test_emptying_bus
    passenger1 = Person.new("Chris", 43)
    @bus.emptying_bus()
    assert_equal(0, @bus.count_passengers())
  end

end
