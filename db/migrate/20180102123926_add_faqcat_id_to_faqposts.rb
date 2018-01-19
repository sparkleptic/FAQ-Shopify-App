class AddFaqcatIdToFaqposts < ActiveRecord::Migration[5.1]
  def change
    add_column :faqposts, :faqcat_id, :integer
  end
end
