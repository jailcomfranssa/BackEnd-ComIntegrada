class PedidoDetalhe < ApplicationRecord
  belongs_to :pedido
  belongs_to :produto
end
