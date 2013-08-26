class Artist < ActiveRecord::Base
  attr_accessible :name, :description

  has_many :albums
end
