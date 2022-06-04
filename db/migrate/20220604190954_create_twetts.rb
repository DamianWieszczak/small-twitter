class CreateTwetts < ActiveRecord::Migration[6.1]
  def change
    create_table :twetts do |t|
      t.text :twett

      t.timestamps
    end
  end
end
