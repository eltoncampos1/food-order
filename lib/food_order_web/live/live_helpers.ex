defmodule FoodOrderWeb.LiveHelpers do
  import Phoenix.LiveView
  import Phoenix.LiveView.Helpers

  def modal(assigns) do
    ~H"""
    <div class="phx-modal fade-in">
      <div class="phx-modal-content fade-in-scale">
          <%= render_slot(@inner_block) %>
      </div>
    </div>
    """
  end
end
