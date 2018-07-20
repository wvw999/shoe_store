class FixTables < ActiveRecord::Migration[5.2]
  def change
    drop_table :stores

    create_table(:stores) do |t|
      t.column(:title, :string)
      t.timestamps
    end

    drop_table :brands

    create_table(:brands) do |t|
      t.column(:name, :string)
      t.column(:price, :integer)
      t.timestamps
    end

    drop_table :brands_stores

    create_table(:brands_stores, id: false) do |t|
      t.belongs_to(:brand, index: true)
      t.belongs_to(:store, index: true)
    end
  end
end
