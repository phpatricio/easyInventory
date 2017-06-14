class ClienteController < ApplicationController
  def index
    @cliente = Cliente.all
  end

  def mostrar
  end

  def nuevo
    @cliente = Cliente.new
  end

  def editar
  end


  def crear
    @cliente = Cliente.create(cliente_params)
    respond_to do |format|
      if @cliente.save
        format.html {redirect_to @cliente, notice: 'Fue creado con mucho exito'}
      else
        format.html {render :nuevo}
      end
    end
  end


  def update
    respond_to do |format|
      if @cliente.update(cliente_params)
        format.html {redirect_to @cliente}
      else
        format.html {render :nuevo}
      end
    end
  end

  def eliminar
    @cliente.destroy
    respond_to do |format|
      format.html {redirect_to clientes_url, notice: 'fue eliminado'}
    end
  end

  private

  def set_cliente
    @cliente = Cliente.find(params[:id])
  end


  def cliente_params
    params.require(:cliente).permit(:nombre, :fecha)
  end
end
