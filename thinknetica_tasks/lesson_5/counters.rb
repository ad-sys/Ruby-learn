module Counters
  @@instances = 0

  def instances
    @@instances
  end

  protected

  def register_instance
    @@instances += 1

  end

end


