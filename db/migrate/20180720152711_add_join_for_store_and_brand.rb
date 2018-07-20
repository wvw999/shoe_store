class AddJoinForStoreAndBrand < ActiveRecord::Migration[5.2]
  def change
    create_table(:brand_store, id: false) do |t|
      t.belongs_to(:brand, index: true)
      t.belongs_to(:store, index: true)
    end
  end
end
