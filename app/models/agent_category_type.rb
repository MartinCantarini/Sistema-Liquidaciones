class AgentCategoryType < ApplicationRecord
  def self.get_description(agent_category_type_id)
    AgentCategoryType.where('id = ?',agent_category_type_id).first.description
  end
end
