class SetAliveDefault < ActiveRecord::Migration[5.2]
  def self.up
    change_column :marks, :alive, :boolean, default: true
  end
end
