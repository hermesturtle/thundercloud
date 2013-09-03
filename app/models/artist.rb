class Artist < ActiveRecord::Base
  attr_accessible :name, :description, :image, :album_ids

  has_many :albums
  # has_attached_file :image, :styles => { :medium => "300x300>" }, :default_url => "/images/:style/missing.png"

  has_attached_file :image, :styles => { :large => "600x600>" , :medium => "300x300>", :small => "200x200>" }
end
