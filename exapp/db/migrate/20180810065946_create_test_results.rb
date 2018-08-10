class CreateTestResults < ActiveRecord::Migration[5.2]
  def change
    create_table :test_results do |t|
      t.references :user, foreign_key: true
      t.references :what_test, foreign_key: true
      t.integer :jpn
      t.integer :math
      t.integer :eng
      t.integer :sci
      t.integer :soc

      t.timestamps
    end
  end
end
