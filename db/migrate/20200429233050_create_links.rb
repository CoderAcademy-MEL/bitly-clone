class CreateLinks < ActiveRecord::Migration[6.0]
  def change
    create_table :links do |t|
      t.string :original_url
      t.string :base_36_num

      t.timestamps
    end
  end
end
