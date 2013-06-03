class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      # t.belongs_to :user, :category
      t.string :title
      t.text :body
      t.timestamps
    end
  end
end
# def self.up
#     create_table :articles do |t|
#       t.belongs_to :user, :category
#       t.string :title
#       t.text :body
#       # t.text :synopsis, :limit => 1000
#       # t.boolean :published, :default => false
#       # t.datetime :published_at
#       t.timestamps
#     end
#   end

#   def self.down
#     drop_table :articles
#   end
# end