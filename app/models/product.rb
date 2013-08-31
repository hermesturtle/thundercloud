class Product < ActiveRecord::Base
  attr_accessible :name, :description, :image, :price
  validates_presence_of :name, :description, :price

  has_attached_file :image, :styles => { :medium => "300x300>", :small => "200x200>" }
end
