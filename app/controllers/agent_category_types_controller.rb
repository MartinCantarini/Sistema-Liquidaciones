class AgentCategoryTypesController < ApplicationController

  def show
    @category = AgentCategoryType.find(params[:id])
  end

  def index
    @categories = AgentCategoryType.all
  end

  def new
    @category = AgentCategoryType.new
  end

  def create
    if AgentCategoryType.create(params_agent_category_type)
      flash[:notice] = 'Categoría creada con éxito'
      redirect_to agent_category_types_path
    else
      flash[:alert] = 'La acción no se puedo completar, por favor intente nuevamente'
      redirect_to new_agent_category_types_path
    end
  end

  def edit
    @category = AgentCategoryType.find(params[:id])
  end

  def update
    @category = AgentCategoryType.find(params[:id])
    if @category.update(params_agent_category_type)
      flash[:notice] = 'Categoría creada con éxito'
      redirect_to agent_category_types_path
    else
      flash[:alert] = 'La acción no se puedo completar, por favor intente nuevamente'
      redirect_to edit_agent_category_types_path
    end
  end

  def destroy
    @category = AgentCategoryType.find(params[:id])
    if @category.destroy
      flash[:notice] = 'Categoría eliminada con éxito'
    else
      flash[:alert] = 'La acción no se puedo completar, por favor intente nuevamente'
    end
    redirect_to agent_category_types_path
  end

  private

  def params_agent_category_type
    params.require(:agent_category_type).permit(:description)
  end
end
