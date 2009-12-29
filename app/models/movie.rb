class Movie < ActiveRecord::Base
  validates_presence_of :title, :description, :category_id, :director
  has_attached_file :photo, :styles => { :small => "150x150>" }
  has_and_belongs_to_many :actors
  belongs_to :category

  attr_writer :all_actors

  before_save :assign_actors

  private

  def assign_actors
    self.all_actors
    self.actors.clear
    if @all_actors
      @all_actors.split(',').each { |a|
        self.actors << Actor.find_or_create_by_name(a.strip)
      }
    end
  end

  public

  def all_actors 
    @all_actors ||= self.actors.map(&:name).join(', ')
  end

end
