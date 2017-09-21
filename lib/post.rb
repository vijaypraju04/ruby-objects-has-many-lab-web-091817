class Post
  attr_accessor :title, :author
  @@post_count = 0
  def initialize(title)
    @title = title
    @author = author
  end

  def author_name
    if self.author != nil
      self.author.name
    else
      return nil
    end
  end

  def self.post_count
    @@post_count
    binding.pry
end
end
