defmodule Sider.Quantity.Force do
  @moduledoc false

  use SI.Quantity,
      name: "force",
      symbol: "F",
      unit: Sider.Unit.Newton
end
