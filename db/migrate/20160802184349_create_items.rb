class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.integer :list_id
      t.date :due_on
      t.date :completed_on

      t.timestamps null: false
    end
  end
end
