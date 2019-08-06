require('minitest/autorun')
require('minitest/rg')
require_relative('../bus')
require_relative('../person')
require_relative('../bus_stop')


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

  # Try writing a method that the bus would call, to collect all of the passengers from a stop. This might look like bus.pick_up_from_stop(stop1). This should take all of the passengers waiting in line at the stop, and put them inside of the bus. So the stop will now have nobody in the queue, and the number of people on the bus will increase by however many people the stop had at it
  def test_pick_up_from_stop
    @bus_stop = BusStop.new("Elm Row", queue = [])
    @bus_stop.add_person_to_queue(@passenger1)
    @bus.pick_up_from_stop(@bus_stop)
    assert_equal(1, @bus.count_passengers())
    assert_equal(0, @bus_stop.count_queuers())
end

end
