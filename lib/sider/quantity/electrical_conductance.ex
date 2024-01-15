defmodule Sider.Quantity.ElectricalConductance do
  @moduledoc false

  use SI.Quantity,
      name: "electrical conductance",
      symbol: "G",
      unit: Sider.Unit.Siemens
end
