class CreateCollectionItems < ActiveRecord::Migration
  def change
    create_table :collection_items do |t|
      t.references :collection, index: true
      t.references :issue, index: true

      t.timestamps
    end
  end
end
