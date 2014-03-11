class AddCaptionsToVines < ActiveRecord::Migration
  def change
    add_column :vines, :caption, :string
  end
end
