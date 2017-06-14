class VentumController < ApplicationController
 def index
    @venta = Venta.all
  end

  def mostrar
  end

  def nuevo
    @venta = Venta.new
  end

  def editar
  end


  def crear
    @venta = Venta.create(venta_params)
    respond_to do |format|
      if @venta.save
        format.html {redirect_to @venta, notice: 'Fue creado con mucho exito'}
      else
        format.html {render :nuevo}
      end
    end
  end


  def update
    respond_to do |format|
      if @venta.update(venta_params)
        format.html {redirect_to @venta}
      else
        format.html {render :nuevo}
      end
    end
  end

  def eliminar
    @venta.destroy
    respond_to do |format|
      format.html {redirect_to ventum_url, notice: 'fue eliminado'}
    end
  end

  private

  def set_venta
    @taller = Venta.find(params[:id])
  end


  def venta_params
    params.require(:venta).permit(:id_usuario)
  end
end
