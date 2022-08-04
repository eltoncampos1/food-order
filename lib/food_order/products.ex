defmodule FoodOrder.Products do
  alias FoodOrder.Repo
  alias FoodOrder.Products.Product

  def list_products, do: Repo.all(Product)

  def create_product(params \\ %{}) do
    params
    |> Product.changeset()
    |> Repo.insert()
  end
end
