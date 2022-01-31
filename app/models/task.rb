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
  # Este modelo pertenece a owner, pero como la tabla se llama usuario indicamos eso con class_name: 'User'
  belongs_to :owner, class_name: 'User'
  # Aqui una tarea puede tener varios participantes y al igual que en otros modelos se cambia el nombre del has many pero con class_name indicamos la relacion de nombres
  has_many :participating_users, class_name: 'Participant'
  # Las tareas tienen varios participantes, sin embargo estos participantes son usuarios también, entonces accedemos a estas tareas a travez de las participaciones que tienen los usuarios, además indicamos que el source de cada participante es el usuario
  has_many :participants, through: :participating_users, source: :user
  validates :participating_users, presence: true
  validates :name, :description, :due_date, presence: true
  validates :name, uniqueness: {case_insensitive: false}
  validate :due_date_validity

  def due_date_validity
    return if due_date.blank?
    return if due_date > Date.today
    errors.add(:due_date, "Date must be after today")
  end
end
