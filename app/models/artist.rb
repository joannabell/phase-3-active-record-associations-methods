class Artist < ActiveRecord::Base
  # an artist has many songs
  has_many :songs

  # an artist has many songs in it's genre
  has_many :genres, through: :songs

  def get_first_song
      #return the artist's first saved song
    self.songs.first
  end


  def get_genre_of_first_song
    #return the genre of the artist's first saved song
    self.genres.first
  end

  def song_count
    #return the total number of songs associated with the artist
    self.songs.count
  end

  def genre_count
    #return the total number of genres associated with the artist
    self.genres.count 
  end
end
