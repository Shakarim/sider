defmodule Sider.Quantity.Temperature do
  @moduledoc false

  use SI.Quantity,
      name: "temperature",
      symbol: "T",
      unit: Sider.Unit.DegreeCelsius
end
