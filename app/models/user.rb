class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :owned_tasks
  # Aquí se pone participations porque es lo que hace y es más descriptivo que poner participant, esto se hace con la intención de que se entienda mejor lo que se programa, pero como el modelo no se llama participations entonces usamos class_name
  has_many :participations, class_name: 'Participant'
  # Contiene muchas tareas y accede a ellas a travez de las participaciones que tiene 
  has_many :tasks, through: :participations
end
