class CreateHomepages < ActiveRecord::Migration[6.1]
  def change
    create_table :homepages do |t|
      t.string :a_title
      t.text :a_desc
      t.string :s_title
      t.text :s_desc

      t.timestamps
    end
  end
end
