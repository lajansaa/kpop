class AddColumnProfileImgToNomination < ActiveRecord::Migration[5.0]
  def change
    add_column :nominations, :profile_img, :text
  end
end
