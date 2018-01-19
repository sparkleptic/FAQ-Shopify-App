class CreateFaqcats < ActiveRecord::Migration[5.1]
  def change
    create_table :faqcats do |t|
      t.string :title

      t.timestamps
    end
  end
end
