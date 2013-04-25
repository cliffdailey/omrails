class Pin < ActiveRecord::Base
  attr_accessible :description, :image, :title

  validates :description, presence: true
	validates :user_id, presence: true
	validates_attachment :image, presence: true, 
															content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
															size: { less_than: 5.megabytes }

  belongs_to :user
  has_many :likes
  has_many :liking_users, :through => :likes, :source => :user
  has_attached_file :image

def self.search(search)
  if search
    find(:all, :conditions => ['description LIKE ?', "%#{search}%"])
  else
    find(:all, order: "created_at desc")

  end
end


end
