Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  

  get 'clientes/', to: 'clientes#index'
  get 'clientes/nuevo', to: 'clientes#nuevo', as: 'nuevo_cliente'
  get 'clientes/:id',to:'clientes#mostrar', as: 'auto'
  get 'clientes/:id/editar',to: 'clientes#editar', as: 'editar_cliente'
  put 'clientes/:id' ,to: 'clientes#update'
  patch 'clientes/:id' ,to: 'clientes#update'
  post 'clientes/', to: 'clientes#crear'
  delete 'clientes/:id',to: 'clientes#eliminar'

  get 'productos/', to: 'productos#index'
  get 'productos/nuevo', to: 'productos#nuevo', as: 'nuevo_producto'
  get 'productos/:id',to:'productos#mostrar', as: 'auto'
  get 'productos/:id/editar',to: 'productos#editar', as: 'editar_producto'
  put 'productos/:id' ,to: 'productos#update'
  patch 'productos/:id' ,to: 'productos#update'
  post 'productos/', to: 'productos#crear'
  delete 'productos/:id',to: 'productos#eliminar'

  get 'taller/', to: 'taller#index'
  get 'taller/nuevo', to: 'taller#nuevo', as: 'nuevo_taller'
  get 'taller/:id',to:'taller#mostrar', as: 'auto'
  get 'taller/:id/editar',to: 'taller#editar', as: 'editar_taller'
  put 'taller/:id' ,to: 'taller#update'
  patch 'taller/:id' ,to: 'taller#update'
  post 'taller/', to: 'taller#crear'
  delete 'taller/:id',to: 'taller#eliminar'

  get 'ventum/', to: 'ventum#index'
  get 'ventum/nuevo', to: 'ventum#nuevo', as: 'nuevo_ventum'
  get 'ventum/:id',to:'ventum#mostrar', as: 'auto'
  get 'ventum/:id/editar',to: 'ventum#editar', as: 'editar_ventum'
  put 'ventum/:id' ,to: 'ventum#update'
  patch 'ventum/:id' ,to: 'ventum#update'
  post 'ventum/', to: 'ventum#crear'
  delete 'ventum/:id',to: 'ventum#eliminar'

  get 'movimientos/', to: 'movimientos#index'
  get 'movimientos/nuevo', to: 'movimientos#nuevo', as: 'nuevo_movimiento'
  get 'movimientos/:id',to:'movimientos#mostrar', as: 'auto'
  get 'movimientos/:id/editar',to: 'movimientos#editar', as: 'editar_movimiento'
  put 'movimientos/:id' ,to: 'movimientos#update'
  patch 'movimientos/:id' ,to: 'movimientos#update'
  post 'movimientos/', to: 'movimientos#crear'
  delete 'movimientos/:id',to: 'movimientos#eliminar'
end
