class Post
  attr_accessor :blog, :title, :body

  def initialize(attrs = {})
    attrs.each do |key, value|
      send("#{key}=", value)
    end
  end

  def publish
    blog.add_entry(self)
  end
end
