class MovimientoController < ApplicationController
  def index
    @movimiento = Movimiento.all
  end

  def mostrar
  end

  def nuevo
    @movimiento = Movimiento.new
  end

  def editar
  end


  def crear
    @movimiento = Movimiento.create(movimiento_params)
    respond_to do |format|
      if @movimiento.save
        format.html {redirect_to @movimiento, notice: 'Fue creado con mucho exito'}
      else
        format.html {render :nuevo}
      end
    end
  end


  def update
    respond_to do |format|
      if @movimiento.update(cliente_params)
        format.html {redirect_to @movimiento}
      else
        format.html {render :nuevo}
      end
    end
  end

  def eliminar
    @movimiento.destroy
    respond_to do |format|
      format.html {redirect_to movimientos_url, notice: 'fue eliminado'}
    end
  end

  private

  def set_movimiento
    @movimiento = Movimiento.find(params[:id])
  end


  def movimiento_params
    params.require(:movimiento).permit(:id_producto)
  end
end
