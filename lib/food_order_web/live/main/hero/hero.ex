defmodule FoodOrderWeb.Main.Hero do
  use FoodOrderWeb, :live_component

  def update(assigns, socket) do
    {:ok, assign(socket, assigns)}
  end
end
