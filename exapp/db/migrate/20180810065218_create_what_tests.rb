class CreateWhatTests < ActiveRecord::Migration[5.2]
  def change
    create_table :what_tests do |t|
      t.references :period, foreign_key: true
      t.string :testname

      t.timestamps
    end
  end
end
