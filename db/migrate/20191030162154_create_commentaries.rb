class CreateCommentaries < ActiveRecord::Migration[5.2]
  def change
    create_table :commentaries do |t|

			t.string :title
			t.text :content

			t.belongs_to :gossip, index: true

      t.timestamps
    end
  end
end
