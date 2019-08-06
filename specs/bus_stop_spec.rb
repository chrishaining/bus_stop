require('minitest/autorun')
require('minitest/rg')
require_relative("../bus_stop")
require_relative("../person")


class BusStopTest < MiniTest::Test

  def setup
    queue = []
    @bus_stop = BusStop.new("Bus Stop 1", queue)
  end

def test_queue_name
assert_equal("Bus Stop 1", @bus_stop.name)
end


  def test_queue #returns the queue array
    assert_equal([], @bus_stop.queue()) #Is it ok to put empty square brackets when we expect an empty array?
  end

  def test_count_queuers
    assert_equal(0, @bus_stop.count_queuers())
  end

  def test_add_person_to_queue
    queuer1 = Person.new("Zara", 101)
    @bus_stop.add_person_to_queue(queuer1)
    assert_equal(1, @bus_stop.queue.count())
  end

  def test_emptying_queue
    queuer1 = Person.new("Chris", 43)
    @bus_stop.emptying_queue()
    assert_equal(0, @bus_stop.queue.count())
  end

end
