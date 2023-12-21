defmodule Sider.Quantity.Pressure do
  @moduledoc false

  use SI.Quantity,
      name: "pressure",
      symbol: "P",
      unit: Sider.Unit.Pascal
end
