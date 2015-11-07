class DockingStation

  DEFAULT_CAPACITY = 20

  attr_accessor :capacity

  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike

    bike = bikes.last
    fail 'No bikes available' if empty?
    fail 'No bikes available' if bike.working? == false
    bikes.pop

  end

  def dock(bike)
    fail 'Docking station full' if full?
    bikes << bike
  end

  private

 attr_reader :bikes

  def full?
    bikes.count >= capacity
  end

  def empty?
    bikes.empty?
  end

end
