defmodule Sider.Quantity.Energy do
  @moduledoc false

  use SI.Quantity,
      name: "energy",
      symbol: "E",
      unit: Sider.Unit.Joule
end
