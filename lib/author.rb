class Author

    attr_accessor :name, :title, :post

    @@post_count = 0

    def initialize(name)
        @name = name
        # author = Author.new(name)
        # author.name = name
        @posts = []
        #@@post_count +=1
    end
    
    def add_post(post)
        post.author = self
        @posts << post
        @@post_count +=1
    end

    def posts
        @posts
    end

    def add_post_by_title(title)
        post = Post.new(title)
        post.title = title
        post.author = self
        @posts << post
        @@post_count +=1
        return post
    end

    def self.post_count
        @@post_count 
    end

end