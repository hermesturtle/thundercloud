class Album < ActiveRecord::Base
  attr_accessible :name, :description

  belongs_to :artist

  has_attached_file :image, :styles => { :medium => "300x300>", :small => "200x200>" }
end
