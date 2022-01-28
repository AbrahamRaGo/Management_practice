# == Schema Information
#
# Table name: tasks
#
#  id          :bigint           not null, primary key
#  name        :string
#  description :text
#  due_date    :date
#  category_id :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Task < ApplicationRecord
  belongs_to :category
  validates :name, :description, presence: true
  validates :name, uniqueness: {case_insensitive: false}
  validate :due_date_validity

  def due_date_validity
    return if due_date.blank?
    return if due_date > Date.today
    errors.add(:due_date, "Date must be after today")
  end
end