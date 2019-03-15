class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :name
      t.text :description
      t.references :company, foreign_key: true
      t.text :typical_data
      t.string :security_information_url
      t.string :gdpr_information_url
      t.string :list_of_processors_url

      t.timestamps
    end
  end
end
