class AddThumbToVines < ActiveRecord::Migration
  def self.up
    add_attachment :vines, :thumb
  end

  def self.down
    remove_attachment :vines, :thumb
  end
end
