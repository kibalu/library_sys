class Room < ApplicationRecord
  before_save { self.rommid = rommid.downcase }
  default_scope -> { order(rommid: :asc) }
  validates :rommid, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 50 }
   validates :build, presence: true, length: { maximum: 50 }
   validates :size, presence: true
   
   
   
   def self.search(search)
      where("rommid LIKE ?", "%#{search}%") 
   end
end
