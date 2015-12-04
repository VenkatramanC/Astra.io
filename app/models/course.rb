class Course < ActiveRecord::Base
  has_many :users
  has_many :chapters
end
