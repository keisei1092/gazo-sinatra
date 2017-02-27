class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table(:photos) { |p| p.string :file; p.string :comment }
  end
end
