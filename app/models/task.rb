class Task < ApplicationRecord
  validates :title, presence: true
  validates :post_start_at, presence: true
  validates :post_end_at, presence: true
  validates :post_memo, length: {maximum: 500}
  validate :date_before_start

  def date_before_start
    return if post_end_at.blank?
    errors.add(:post_end_at, "は今日以降のものを選択してください") if post_end_at < Date.today
  end
end
