defmodule FoodOrderWeb.Admin.ProductLive do
  use FoodOrderWeb, :live_view

  alias FoodOrderWeb.Admin.Products.Form
  alias FoodOrder.Products

  def mount(_params, _session, socket) do
    products = Products.list_products()

    {:ok,
     socket
     |> assign(:products, products)}
  end
end
