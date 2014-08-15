class CreateAbs < ActiveRecord::Migration
  def change
    create_table :abs do |t|
      t.references :author, index: true
      t.references :book, index: true

      t.timestamps
    end
  end
end
