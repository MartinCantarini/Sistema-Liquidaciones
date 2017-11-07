class AgentCategoriesController < ApplicationController
  def show
    @category_agent = AgentCategory.find(params[:id])
  end

  def index
    @categories_agent = AgentCategory.all
  end

  def new
    @category_agent = AgentCategory.new
  end

  def create
    if AgentCategory.create(params_agent_category)
      flash[:message]=ENV['SUCCESS_MESAGGE']
      redirect_to agent_categories_path
    else
      flash[:message]=ENV['ERROR_MESAGGE']
      redirect_to new_agent_categories_path
    end
  end

  def edit
    @category_agent = AgentCategory.find(params[:id])
  end

  def update
    @category_agent = AgentCategory.find(params[:id])
    if @category_agent.update(params_agent_category)
      flash[:message]=ENV['SUCCESS_MESAGGE']
      redirect_to agent_categories_path
    else
      flash[:message]=ENV['ERROR_MESAGGE']
      redirect_to edit_agent_categories_path(@category_agent.id)
    end
  end

  def destroy
    @category_agent = AgentCategory.find(params[:id])
    if @category_agent.destroy
      flash[:notice] = 'Categoría eliminada con éxito'
    else
      flash[:alert] = 'La acción no se puedo completar, por favor intente nuevamente'
    end
    redirect_to agent_categories_path
  end

  def params_agent_category
    params.require(:agent_category).permit(:description, :mount, :agent_category_type_id)
  end

end
