class ProductoController < ApplicationController
  def index
    @producto = Producto.all
  end

  def mostrar
  end

  def nuevo
    @producto = Producto.new
  end

  def editar
  end


  def crear
    @producto = Producto.create(producto_params)
    respond_to do |format|
      if @producto.save
        format.html {redirect_to @producto, notice: 'Fue creado con mucho exito'}
      else
        format.html {render :nuevo}
      end
    end
  end


  def update
    respond_to do |format|
      if @producto.update(producto_params)
        format.html {redirect_to @producto}
      else
        format.html {render :nuevo}
      end
    end
  end

  def eliminar
    @producto.destroy
    respond_to do |format|
      format.html {redirect_to productos_url, notice: 'fue eliminado'}
    end
  end

  private

  def set_producto
    @producto = Producto.find(params[:id])
  end


  def producto_params
    params.require(:producto).permit(:marca)
  end
end
