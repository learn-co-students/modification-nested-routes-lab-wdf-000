module ArtistsHelper
  def display_artist(song)
    song.artist.nil? ? link_to("Add Artist", edit_song_path(song)) : link_to(song.artist_name, artist_path(song.artist))
  end

  # What is the point of the second argument??????
  def artist_select(song, artist)
    if artist
      hidden_field_tag 'song[artist_id]', song.artist_id
      artist.name
    else
      select_tag 'song[artist_id]', options_from_collection_for_select(Artist.all, :id, :name), include_blank: true
    end
  end
end
