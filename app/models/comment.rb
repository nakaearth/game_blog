class Comment < ActiveRecord::Base
  validates :author,:sentence,:presence =>true
  belongs_to :entry
end
