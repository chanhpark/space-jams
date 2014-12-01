class Track
  attr_accessor :track_id, :album_id, :title, :track_number, :duration_ms
  def initialize(track_id, album_id, title, track_number, duration_ms)
    @track_id = track_id
    @album_id = album_id
    @title = title
    @track_number = track_number
    @duration_ms = duration_ms
  end
end
