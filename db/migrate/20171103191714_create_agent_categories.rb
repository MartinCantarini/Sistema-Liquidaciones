class CreateAgentCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :agent_categories do |t|
      t.string :description
      t.string :mount
      t.references :agent_category_type, index: true

      t.timestamps
    end
  end
end
