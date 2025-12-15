class Article < ApplicationRecord
  belongs_to :category
  validates :title, presence: true
  scope :desc_order, -> {order(created_at: :desc)}
  scope :whitout_high_lights, -> (ids){where("id NOT IN(#{ids})") if ids.present?}
end
