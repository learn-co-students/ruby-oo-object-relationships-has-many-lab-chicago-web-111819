class Post
    attr_accessor :title, :author
  
    @@all = []
  
    def initialize(title)
      @title = title
      save
    end

    def self.all
      return @@all
    end

    def author_name
      return author ? author.name : nil
    end

    private
      def save
        @@all << self
      end

end