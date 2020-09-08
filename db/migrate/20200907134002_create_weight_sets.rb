class CreateWeightSets < ActiveRecord::Migration[5.2]
  def change
    create_table :weight_sets do |t|
      t.integer :set_number, null: false
      t.float   :weight,     null: false
      t.float   :reps,       null: false
      t.timestamps
    end
  end
end
