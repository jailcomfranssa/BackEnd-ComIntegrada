require "test_helper"

class ProdutosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @produto = produtos(:one)
  end

  test "should get index" do
    get produtos_url, as: :json
    assert_response :success
  end

  test "should create produto" do
    assert_difference('Produto.count') do
      post produtos_url, params: { produto: { altura: @produto.altura, categoria: @produto.categoria, categoria_id: @produto.categoria_id, codigo_ean13: @produto.codigo_ean13, comprimento: @produto.comprimento, descricao: @produto.descricao, descricao_curta: @produto.descricao_curta, fabricante: @produto.fabricante, imagem: @produto.imagem, nome: @produto.nome, peso: @produto.peso, preco: @produto.preco, quant: @produto.quant } }, as: :json
    end

    assert_response 201
  end

  test "should show produto" do
    get produto_url(@produto), as: :json
    assert_response :success
  end

  test "should update produto" do
    patch produto_url(@produto), params: { produto: { altura: @produto.altura, categoria: @produto.categoria, categoria_id: @produto.categoria_id, codigo_ean13: @produto.codigo_ean13, comprimento: @produto.comprimento, descricao: @produto.descricao, descricao_curta: @produto.descricao_curta, fabricante: @produto.fabricante, imagem: @produto.imagem, nome: @produto.nome, peso: @produto.peso, preco: @produto.preco, quant: @produto.quant } }, as: :json
    assert_response 200
  end

  test "should destroy produto" do
    assert_difference('Produto.count', -1) do
      delete produto_url(@produto), as: :json
    end

    assert_response 204
  end
end
