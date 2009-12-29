class CreateActorsMovies < ActiveRecord::Migration
  def self.up
    create_table 'actors_movies', :id => false do |t|
      t.column :actor_id, :integer
      t.column :movie_id, :integer
    end
  end

  def self.down
    drop_table 'actors_movies'
  end
end
