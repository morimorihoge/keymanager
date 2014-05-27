class CreateItemHistories < ActiveRecord::Migration
  def change
    create_table :item_histories do |t|
      t.integer :item_id
      t.string :status
      t.integer :having_user_id
      t.integer :acceptee_user_id

      t.timestamps
    end
  end
end
