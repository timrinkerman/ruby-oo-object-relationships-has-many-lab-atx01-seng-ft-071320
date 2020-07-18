require "pry"
class Artist 

    attr_accessor :name, :song_list

    def initialize(name)
        @name = name
       @song_list = []
      end

      def songs
        Song.all.select {|song| song.artist == self}
      end


def add_song(song)
@song_list << song
song.artist = self
end 

def add_song_by_name(song_name)
    song_name = Song.new(song_name)
    @song_list << song_name    
    song_name.artist = self
    
    end     


def self.song_count
Song.all.count

end


end
