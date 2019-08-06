class BusStop

  attr_reader(:name, :queue)

  def initialize(name, queue)
    @name = name
    @queue = []
  end

  def count_queuers()
    return @queue.count
  end

  def add_person_to_queue(queuer)
    @queue.push(queuer)
  end

def emptying_queue()
  @queue.clear()
end


end 
