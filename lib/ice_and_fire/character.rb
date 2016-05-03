require 'json'
require 'active_support/inflector'

class IceAndFire::Character
  attr_reader :url, :name, :culture, :born, :died, :titles, :aliases,
              :father, :mother, :spouse, :allegiances, :books, :pov_books,
              :tv_series, :played_by

  def initialize(attributes)
    attributes.each_pair do |attribute_name, value|
      instance_variable_set("@#{attribute_name.underscore}", value)
    end
  end
end
