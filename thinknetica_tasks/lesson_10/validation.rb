# frozen_string_literal: true

Module Acсessors

def self.included(base)
  base.extend ClassMethods
  base.send :include, InstanceMethods
end

def attr_accessor_with_history

end


def strong_attr_accessor


end
