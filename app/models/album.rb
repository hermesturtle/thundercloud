class Album < ActiveRecord::Base
  attr_accessible :name, :description

  belongs_to :artist
end
