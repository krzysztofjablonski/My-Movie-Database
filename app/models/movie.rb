class Movie < ActiveRecord::Base
  validates_presence_of :title, :description
  has_attached_file :photo, :styles => { :small => "150x150>" }
end
