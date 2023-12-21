defmodule Sider.Quantity.Angle do
  @moduledoc false

  use SI.Quantity,
      name: "angle",
      symbol: "∠",
      unit: SI.Unit.Radian
end
