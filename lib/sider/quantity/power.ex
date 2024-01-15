defmodule Sider.Quantity.Power do
  @moduledoc false

  use SI.Quantity,
      name: "power",
      symbol: "P",
      unit: Sider.Unit.Watt
end
