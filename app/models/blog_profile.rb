class BlogProfile < ActiveRecord::Base
   validates :name,:presence =>true
   validates :skin_id,:presence =>true,:numericality=>true
end
