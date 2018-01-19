class CreateFaqposts < ActiveRecord::Migration[5.1]
  def change
    create_table :faqposts do |t|
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
