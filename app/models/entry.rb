class Entry < ActiveRecord::Base
   belongs_to :blogger
   has_many :comments
   scope :latest ,order('updated_at desc')
   scope :public_entries ,where('public_flag=1')
   validates :title,:sentence,:presence =>true
end
