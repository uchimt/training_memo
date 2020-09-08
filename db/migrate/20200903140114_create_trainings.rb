class CreateTrainings < ActiveRecord::Migration[5.2]
  def change
    create_table :trainings do |t|
      t.string :name,  null: false
      t.integer :body_part, null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
