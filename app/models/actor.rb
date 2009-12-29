class Actor < ActiveRecord::Base
  validates_presence_of :name
  has_attached_file :picture, :styles => { :small => "35x35>" }
  has_and_belongs_to_many :movies

  validates_uniqueness_of :name

end
