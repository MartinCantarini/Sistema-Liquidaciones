class CreateAgentCategoryTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :agent_category_types do |t|
      t.string :description

      t.timestamps
    end
  end
end
