class CreateWorks < ActiveRecord::Migration[6.0]
  def change
    create_table :works do |t|
      t.string :app_name, null: false
      t.string :url,      null: false
      t.string :text,     null: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
