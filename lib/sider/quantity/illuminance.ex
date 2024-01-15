defmodule Sider.Quantity.Illuminance do
  @moduledoc false

  use SI.Quantity,
      name: "illuminance",
      symbol: "Ev",
      unit: Sider.Unit.Lux
end
