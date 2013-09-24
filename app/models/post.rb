class Post < ActiveRecord::Base
  attr_accessible :content, :title, :category_id, :user_id

  belongs_to :category
  belongs_to :user
end

