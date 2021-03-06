# frozen_string_literal: true

# A class that manages products and stock quantities.
class Produto
  attr_accessor :nome, :categoria, :preco, :estoque
  def initialize(nome: 'Sem nome', categoria: Categoria.new.nome, preco: 0,
                 estoque: 1)
    @nome = nome
    @categoria = categoria
    @preco = preco
    @estoque = estoque
  end

  def adiciona_estoque(quantidade)
    @estoque += quantidade
  end

  def remove_estoque(quantidade)
    @estoque -= quantidade
  end
end
