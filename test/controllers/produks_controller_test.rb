require 'test_helper'

class ProduksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @produk = produks(:one)
  end

  test "should get index" do
    get produks_url
    assert_response :success
  end

  test "should get new" do
    get new_produk_url
    assert_response :success
  end

  test "should create produk" do
    assert_difference('Produk.count') do
      post produks_url, params: { produk: { description: @produk.description, image_url: @produk.image_url, judul: @produk.judul, kategori_id: @produk.kategori_id, price: @produk.price } }
    end

    assert_redirected_to produk_url(Produk.last)
  end

  test "should show produk" do
    get produk_url(@produk)
    assert_response :success
  end

  test "should get edit" do
    get edit_produk_url(@produk)
    assert_response :success
  end

  test "should update produk" do
    patch produk_url(@produk), params: { produk: { description: @produk.description, image_url: @produk.image_url, judul: @produk.judul, kategori_id: @produk.kategori_id, price: @produk.price } }
    assert_redirected_to produk_url(@produk)
  end

  test "should destroy produk" do
    assert_difference('Produk.count', -1) do
      delete produk_url(@produk)
    end

    assert_redirected_to produks_url
  end
end
