class AddBodyToAnswer < ActiveRecord::Migration
  def change
    remove_column :answers, :title
    add_column :answers, :body, :text
  end
end
