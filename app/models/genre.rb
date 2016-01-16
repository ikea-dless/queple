class Genre < ActiveRecord::Base
  has_many :questions
  has_many :articles
end
