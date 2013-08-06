class CreateMovies < ActiveRecord::Migration
  def up
		create_table 'movies' do |t|
			t.string 'title'
			t.string 'rating'
			t.text 'description'
			t.datetime 'release_date'
			#lets rails keep track of movies added/modified
			t.timestamps
    end
  end

  def down
		#deletes table and all data
    drop_table 'movies'
  end
end
