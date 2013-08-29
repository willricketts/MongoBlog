class Comment
  include Mongoid::Document
  field :author, type: String
  field :content, type: String
  
  embedded_in :post, :inverse_of => :comments
end
