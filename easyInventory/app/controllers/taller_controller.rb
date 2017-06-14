class TallerController < ApplicationController
  def index
    @taller = Taller.all
  end

  def mostrar
  end

  def nuevo
    @taller = Taller.new
  end

  def editar
  end


  def crear
    @taller = Taller.create(producto_params)
    respond_to do |format|
      if @taller.save
        format.html {redirect_to @taller, notice: 'Fue creado con mucho exito'}
      else
        format.html {render :nuevo}
      end
    end
  end


  def update
    respond_to do |format|
      if @taller.update(taller_params)
        format.html {redirect_to @taller}
      else
        format.html {render :nuevo}
      end
    end
  end

  def eliminar
    @taller.destroy
    respond_to do |format|
      format.html {redirect_to taller_url, notice: 'fue eliminado'}
    end
  end

  private

  def set_taller
    @taller = Taller.find(params[:id])
  end


  def taller_params
    params.require(:taller).permit(:id_producto)
  end
end
