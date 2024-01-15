defmodule Sider.Quantity.AbsorbedDose do
  @moduledoc false

  use SI.Quantity,
      name: "absorbed dose",
      symbol: "D",
      unit: Sider.Unit.Gray
end
