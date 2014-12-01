class Album
attr_accessor :id, :title, :artists, :tracks

  def initialize(id, album_name, artists)
    @id = id
    @album_name = album_name
    @artists = artists
    @tracks = []
  end

  def duration
    duration_list = []
    @tracks.each do |track|
      duration_list << track.duration_ms.to_i
      sum = 0.0
      duration_list.each { |add| sum += add }
      @sum = (sum / 60000).round(2)
    end
    @sum
  end

  def tracks_list
    track_list = []
    @tracks.each do |track|
      track_list << "#{track.track_number} - #{track.title}"
    end
    track_list
  end


  def summary
    puts "\nName: #{@album_name}\nArtist(s): #{@artists}\nDuration (min.): #{duration}\nTrack List:"
    tracks_list
  end
end
