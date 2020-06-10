class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.string :url
      t.string :notes
      t.boolean :status
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
