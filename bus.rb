class Bus

  attr_reader(:route_number, :destination, :passengers)

  def initialize(route_number, destination, passengers)
    @route_number = route_number
    @destination = destination
    @passengers = passengers #can use []
  end


  def make_driving_sound()
    return "Brum brum"
  end

  def count_passengers()
    return @passengers.count()
  end

  def pick_up(passenger)
    @passengers.push(passenger)
  end

  def drop_off(passenger)
    @passengers.delete(passenger)
  end
  #the solution used a slice method

  def emptying_bus()
    @passengers.clear
  end

  def pick_up_from_stop(bus_stop_instance)
      for queuer in bus_stop_instance.queue
        pick_up(queuer)
      end
      bus_stop_instance.emptying_queue()
    end
  end

  
