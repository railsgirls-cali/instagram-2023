class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  validates :description, presence: true

  has_one_attached :image

  def user_name
    user.name || user.email
  end

  def squared_img
    return 'https://via.placeholder.com/600' unless image.attached?

    image.variant(resize_to_fill: [600, 600])
  end
end
