class Post 
@@all = []
attr_accessor :title, :author

def initialize(title)
  @title = title
    self.class.all << self
end

def author_name
if self.author
    
    
    
   self.author.name
else
    nil
end
end 


def self.all
    @@all
end

end