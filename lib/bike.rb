class Bike

  def initialize
    @working = true
  end

  def working?
    @working
  end

  def report_broken
    @working = false
  end

  def broken?

    if @working == false
      true
    else
      false
    end

  end

end
