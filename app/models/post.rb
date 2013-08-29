class Post
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Slug
  
  field :title, type: String
  field :content, type: String
  
  slug :title
  
  embeds_many :comments
end
