require_relative 'main.rb'

module ManufacturerInfo

  def self.included(base)
    base.send :include, InstanceMethods
  end

  InstanceMethods

  def assign_manufacturer_name(object) #train or wagon

  object.send('manufacturer name=', value)
  end

end