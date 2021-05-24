class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :thumbnail
  has_one_attached :banner
  has_many :comments, dependent: :destroy

  validates :title, presence: true, length: { minimum: 5 }
  validates :body, presence: true,  length: { minimum: 25 }

self.per_page = 10
#extend FriendlyId
#friendly_id :title, use: :slugged
  def optimazed_image(image,x, y)
    return image.variant(resize_to_fill:[x,y]).processed
  end
end
