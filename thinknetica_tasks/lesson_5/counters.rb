module Counters

  def self.included(base)
    base.extend ClassMethods
    base.send :include, InstanceMethods
  end

  @@instances = 0

  module ClassMethods
    def  register_instance

    end
  end

  module InstanceMethods

    def instances
    @@instances
    end

    protected

    def register_instance
    @@instances += 1
    end
  end
end





