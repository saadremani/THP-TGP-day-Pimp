class CreateCommentLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :comment_likes do |t|

			t.belongs_to :user, index: true
			t.belongs_to :commentary, index: true

      t.timestamps
    end
  end
end
