require_relative 'post'

class Author
    attr_accessor :name
  
    @@all = []
  
    def initialize(name)
      @name = name
      save
    end
  
    def self.all
      @@all
    end
  
    def add_post(post)
      post.author = self
    end
  
    def add_post_by_title(title)
      new_post = Post.new(title)
      new_post.author = self
    end
  
    def posts
      Post.all.select { |p| p.author == self }
    end
  
    def self.post_count
      return Post.all.length
    end

    private
      def save
        @@all << self
      end

end