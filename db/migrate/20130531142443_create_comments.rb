class CreateComments < ActiveRecord::Migration
  # def change
  #   create_table :comments do |t|

  #     t.timestamps
  #   end
  # end
  def up
    create_table :comments do |t|
        t.integer :article_id
        t.string :author_name
        t.string :author_email
        t.string :author_url
        t.text :body
    end
  end
end
