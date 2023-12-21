defmodule Sider do
  @moduledoc """
  Documentation for `Sider`.
  """

  alias Sider.Quantity
  alias Quantity.{Angle, Frequency, SolidAngle, Force, Pressure, Energy, Power, ElectricCharge}

  alias Sider.Unit.{Radian, Hertz, Steradian, Newton, Pascal, Joule, Watt, Coulomb}

  alias SI.Unit
  require SI.Unit

  Module.register_attribute(__MODULE__, :units, accumulate: true)

  @basic_quantities [
    {Angle.name_atom(), Angle},
    {Frequency.name_atom(), Frequency},
    {SolidAngle.name_atom(), SolidAngle},
    {Force.name_atom(), Force},
    {Pressure.name_atom(), Pressure},
    {Energy.name_atom(), Energy},
    {Power.name_atom(), Power},
    {ElectricCharge.name_atom(), ElectricCharge}
  ]

  # === UNITS ===
  @units {Angle.name_atom(), Unit.generate_module_variations(Radian)}
  Unit.compile_derivative_units(Radian)
  Unit.compile_variation_conversions(Radian)

  @units {Frequency.name_atom(), Unit.generate_module_variations(Hertz)}
  Unit.compile_derivative_units(Hertz)
  Unit.compile_variation_conversions(Hertz)

  @units {SolidAngle.name_atom(), Unit.generate_module_variations(Steradian)}
  Unit.compile_derivative_units(Steradian)
  Unit.compile_variation_conversions(Steradian)

  @units {Force.name_atom(), Unit.generate_module_variations(Newton)}
  Unit.compile_derivative_units(Newton)
  Unit.compile_variation_conversions(Newton)

  @units {Pressure.name_atom(), Unit.generate_module_variations(Pascal)}
  Unit.compile_derivative_units(Pascal)
  Unit.compile_variation_conversions(Pascal)

  @units {Energy.name_atom(), Unit.generate_module_variations(Joule)}
  Unit.compile_derivative_units(Joule)
  Unit.compile_variation_conversions(Joule)

  @units {Power.name_atom(), Unit.generate_module_variations(Watt)}
  Unit.compile_derivative_units(Watt)
  Unit.compile_variation_conversions(Watt)

  @units {ElectricCharge.name_atom(), Unit.generate_module_variations(Coulomb)}
  Unit.compile_derivative_units(Coulomb)
  Unit.compile_variation_conversions(Coulomb)

  def quantities(), do: @basic_quantities
  def units(), do: @units
end
