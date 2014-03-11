class CreateVines < ActiveRecord::Migration
  def change
    create_table :vines do |t|
      t.string :url

      t.timestamps
    end
  end
end
