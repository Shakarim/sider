defmodule Sider.Quantity.Voltage do
  @moduledoc false

  use SI.Quantity,
      name: "voltage",
      symbol: "V",
      unit: Sider.Unit.Volt
end
