defmodule Sider.Quantity.ElectricalResistance do
  @moduledoc false

  use SI.Quantity,
      name: "electrical resistance",
      symbol: "R",
      unit: Sider.Unit.Ohm
end
