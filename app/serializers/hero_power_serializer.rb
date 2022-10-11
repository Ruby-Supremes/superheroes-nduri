class HeroPowerSerializer < ActiveModel::Serializer
  attributes 
  
  has_one :hero
end
