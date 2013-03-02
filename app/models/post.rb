class Post
  include Mongoid::Document
  include Mongoid::Timestamps
  field :title, type: String
  field :content, type: String
  field :author, type: String
  validates_presence_of :title, :content, :author
end
