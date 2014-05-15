class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :artist
      t.string :title
      t.string :cover_url

      t.timestamps
    end
  end
end
