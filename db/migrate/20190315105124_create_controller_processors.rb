class CreateControllerProcessors < ActiveRecord::Migration[5.2]
  def change
    create_table :controller_processors do |t|
      t.references :controller, foreign_key: false
      t.references :processor, foreign_key: false

      t.timestamps
    end
    add_foreign_key :controller_processors, :services, column: :controller_id
    add_foreign_key :controller_processors, :services, column: :processor_id
  end
end
