defmodule Sider.Quantity.Radioactivity do
  @moduledoc false

  use SI.Quantity,
      name: "radioactivity",
      symbol: "λ",
      unit: SI.Unit.Becquerel
end
