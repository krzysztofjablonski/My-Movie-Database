class RemoveFnameAndLnameFromActors < ActiveRecord::Migration
  def self.up
    remove_column :actors, :fname
    remove_column :actors, :lname
  end

  def self.down
    add_column :actors, :fname, :string
    add_column :actors, :fname, :string
  end
end
