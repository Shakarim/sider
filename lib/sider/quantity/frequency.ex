defmodule Sider.Quantity.Frequency do
  @moduledoc false

  use SI.Quantity,
      name: "frequency",
      symbol: "f",
      unit: SI.Unit.Hertz
end
