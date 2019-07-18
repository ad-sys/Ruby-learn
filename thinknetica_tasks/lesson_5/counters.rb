module Counters

  def self.included(base)
    base.extend ClassMethods
    base.send :include, InstanceMethods
  end

  @instances = []

  module ClassMethods
    def  register_instance
      @instances << self

    end
  end
  def all
    @instances.length
  end

  module InstanceMethods

    def instances
      self.class.instances
    end

    protected

    def register_instance
      self.class.instances += 1
    end
  end
end





