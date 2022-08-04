defmodule FoodOrder.Products.Product do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id

  @optional [:description]
  @required [:name, :price, :size]

  schema "products" do
    field :name, :string
    field :price, :integer
    field :size, :string
    field :description, :string

    timestamps()
  end

  def changeset(product \\ %__MODULE__{}, attrs) do
    product
    |> cast(attrs, @required ++ @optional)
    |> validate_required(@required)
    |> unique_constraint(:name)
  end
end
