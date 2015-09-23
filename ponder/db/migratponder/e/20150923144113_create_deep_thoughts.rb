class CreateDeepThoughts < ActiveRecord::Migration
  def change
    create_table :deep_thoughts do |t|
      t.string :text
      t.date :posted_at

      t.timestamps null: false
    end
  end
end
