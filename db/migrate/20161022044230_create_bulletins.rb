class CreateBulletins < ActiveRecord::Migration
  def change
    create_table :bulletins do |t|
      t.text :body
      t.text :title

      t.timestamps null: false
    end
  end
end
