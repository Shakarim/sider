defmodule Sider.Quantity.ElectricalInductance do
  @moduledoc false

  use SI.Quantity,
      name: "electrical inductance",
      symbol: "L",
      unit: Sider.Unit.Henry
end
