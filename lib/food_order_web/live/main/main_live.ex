defmodule FoodOrderWeb.MainLive do
  use FoodOrderWeb, :live_view

  alias FoodOrderWeb.Main.{Items, Hero}

  def mount(_params, _session, socket) do
    {:ok, socket}
  end
end
