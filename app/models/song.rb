class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.try(:artist).try(:name)
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by(name: name)
    self.artist = artist
  end

  def artist_id=(num)
    self.artist = Artist.find_or_create_by(id: num)
  end

  def artist_id
    self.artist.id
  end


end
