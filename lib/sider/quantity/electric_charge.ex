defmodule Sider.Quantity.ElectricCharge do
  @moduledoc false

  use SI.Quantity,
      name: "electric charge",
      symbol: "q",
      unit: Sider.Unit.Coulomb
end
