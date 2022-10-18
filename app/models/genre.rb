class Genre < ActiveRecord::Base
  # a genre has many songs
  has_many :songs

  # a genre has many artists
  has_many :artists, through: :songs

  def song_count
    # return the number of songs in a genre
    self.songs.count
  end

  def artist_count
    # return the number of artists associated with the genre
    self.artists.count
  end

  def all_artist_names
    # return an array of strings containing every musician's name
    # must map or pluck
    # self.artists.pluck(:name)
    self.artists.map do |t|
      t.name
    end
  end
end
