class AddIndex < ActiveRecord::Migration
  def self.up
    add_index :actors_movies, :movie_id
    add_index :actors_movies, :actor_id
  end

  def self.down
    remove_index :actors_movies, :movie_id
    remove_index :actors_movies, :actor_id
  end
end
