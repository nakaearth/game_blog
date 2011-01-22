class Comment < ActiveRecord::Base
  belongs_to :entry
end
