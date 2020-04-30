class RemoveBase36NumFromLinks < ActiveRecord::Migration[6.0]
  def change

    remove_column :links, :base_36_num, :string
  end
end
