class BuildStoreAndBrandTables < ActiveRecord::Migration[5.2]
  def change
    create_table(:stores) do |t|
      t.column(:title, :string)
      t.column(:tag_id, :integer)
      t.timestamps
    end

    create_table(:brands) do |t|
      t.column(:store_id, :integer)
      t.column(:name, :string)
      t.column(:price, :integer)
      t.timestamps
    end
  end
end
