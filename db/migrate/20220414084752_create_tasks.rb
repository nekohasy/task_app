class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.date :post_start_at
      t.date :post_end_at
      t.boolean :post_is_all_day
      t.text :post_memo

      t.timestamps
    end
  end
end
