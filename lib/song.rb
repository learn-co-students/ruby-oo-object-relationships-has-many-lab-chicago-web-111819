class Song
    attr_accessor :name, :artist
  
    @@all = []
  
    def initialize(name)
      @name = name
      save
    end
  
    def self.all
      @@all
    end
  
    def artist_name
      artist ? artist.name : nil
    end

    private
      def save
        @@all.push(self)
      end

  end