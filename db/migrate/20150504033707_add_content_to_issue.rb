class AddContentToIssue < ActiveRecord::Migration
  def change
    add_column :issues, :content, :text
  end
end
