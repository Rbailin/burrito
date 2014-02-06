class Order
  include Mongoid::Document
  field :name, type: String
  field :orderstyle, type: String
  field :protein, type: String
  field :beans, type: Mongoid::Boolean
  field :rice, type: Mongoid::Boolean
  field :fajita_veggies, type: Mongoid::Boolean
  field :fresh_tomato_salsa, type: Mongoid::Boolean
  field :sour_cream, type: Mongoid::Boolean
  field :cheese, type: Mongoid::Boolean

end


