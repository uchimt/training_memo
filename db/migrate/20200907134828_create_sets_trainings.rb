class CreateSetsTrainings < ActiveRecord::Migration[5.2]
  def change
    create_table :sets_trainings do |t|
      t.references :training,   foreign_key: true
      t.references :weight_set, foreign_key: true
      t.timestamps
    end
  end
end
