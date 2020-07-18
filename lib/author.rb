class Author 
attr_accessor :name, :posts

def initialize(name)
  @name = name
    @posts = []
end

def posts
    Post.all.select {|post| post.author == self}
  end

def add_post(post)
    @posts << post
    post.author = self
    end 
    

    def add_post_by_title(post_name)
        post_name = Post.new(post_name)
        @posts << post_name    
        post_name.author = self
        
        end     


    def self.post_count
        Post.all.count
    end
    end