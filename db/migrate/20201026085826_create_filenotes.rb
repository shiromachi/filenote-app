class CreateFilenotes < ActiveRecord::Migration[6.0]
  def change
    create_table :filenotes do |t|
      t.string :title,    null: false
      t.text :memo,       null: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
