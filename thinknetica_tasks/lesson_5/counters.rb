
module Counters
  def self.included(base)
    base.extend ClassMethods
    base.send :include, InstanceMethods
  end

  module ClassMethods

    def  register_instance
      @instances = 0
      @instances += 1
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
end





