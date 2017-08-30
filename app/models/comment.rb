class Comment < ApplicationRecord
  belongs_to :user
  validates :text, presence: :true, length: { minimum: 8, maximum: 512 }
  paginates_per 5
end
