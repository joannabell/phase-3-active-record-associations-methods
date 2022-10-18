class Song < ActiveRecord::Base
  # a song only has one artist
  belongs_to :artist

  # a song only has one genre
  belongs_to :genre

  def get_genre_name
    # return the name of the genre this song belongs to
    self.genre.name
  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
    # Drake doesn't exist in the database as an artist yet, so you'll have to create a record
    # Hint: you won't want to create an artist record every time this method is called, only if Drake is *not found*
    # first assign a variable with find_or_create_by attribute
    # update object (self) using the variable defined above
    drake = Artist.find_or_create_by(name: "Drake")
    self.update(artist: drake)
  end
end