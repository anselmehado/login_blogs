class ChangeBooksContent < ActiveRecord::Migration[5.2]
  def change
     change_column :books, :content, :text
  end
end
