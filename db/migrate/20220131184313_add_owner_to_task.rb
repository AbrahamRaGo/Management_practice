class AddOwnerToTask < ActiveRecord::Migration[5.2]
  def change
    # Se agrega la referencia, en este caso tareas pertenecerán a usuario, es decir, owner es el propietario de esa tarea, para la llave foranea debemos indicarle que busque la key en la tabal users ya que si se queda por defaulr buscaria en la tabla owner, y que busque por index para que sea más rápido
    add_reference :tasks, :owner, null: false, foreign_key: { to_table: :users }, index: true
  end
end
