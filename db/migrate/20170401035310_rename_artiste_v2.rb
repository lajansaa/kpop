class RenameArtisteV2 < ActiveRecord::Migration[5.0]
  def change
    rename_table :artiste_v2s, :artistes
  end
end
