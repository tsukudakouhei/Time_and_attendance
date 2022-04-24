class CreateHomes < ActiveRecord::Migration[6.0]
  def change
    create_table :homes do |t|
      t.string :title
      t.datetime :start_time
      t.datetime :finish_time
      t.text :content
      t.timestamps
    end
  end
end
