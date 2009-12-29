class AddNameToActors < ActiveRecord::Migration
  def self.up
    add_column :actors, :name, :string
  end

  def self.down
    remove_column :actors, :name
  end
end
