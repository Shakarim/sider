defmodule Sider.Quantity.EquivalentDose do
  @moduledoc false

  use SI.Quantity,
      name: "equivalent dose",
      symbol: "H",
      unit: Sider.Unit.Sievert
end
