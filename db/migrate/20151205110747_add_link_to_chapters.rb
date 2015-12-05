class AddLinkToChapters < ActiveRecord::Migration
  def change
    add_column :chapters, :video_url, :string
  end
end
