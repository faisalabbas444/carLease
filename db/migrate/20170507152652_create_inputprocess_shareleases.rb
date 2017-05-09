class CreateInputprocessShareleases < ActiveRecord::Migration[5.0]
  def change
    create_table :inputprocess_shareleases do |t|
      t.string :name
      t.string :model

      t.timestamps
    end
  end
end
