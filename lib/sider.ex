defmodule Sider do
  @moduledoc """
  Documentation for `Sider`.
  """

  alias Sider.Quantity
  alias Quantity.{Angle, Frequency, SolidAngle, Force, Pressure, Energy, Power, ElectricCharge, Voltage, ElectricalCapacitance, ElectricalResistance, ElectricalConductance, MagneticFlux, MagneticFluxDensity, ElectricalInductance, Temperature}

  alias Sider.Unit.{Radian, Hertz, Steradian, Newton, Pascal, Joule, Watt, Coulomb, Volt, Farad, Ohm, Siemens, Weber, Tesla, Henry, DegreeCelsius}

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
    {ElectricCharge.name_atom(), ElectricCharge},
    {Voltage.name_atom(), Voltage},
    {ElectricalCapacitance.name_atom(), ElectricalCapacitance},
    {ElectricalResistance.name_atom(), ElectricalResistance},
    {ElectricalConductance.name_atom(), ElectricalConductance},
    {MagneticFlux.name_atom(), MagneticFlux},
    {MagneticFluxDensity.name_atom(), MagneticFluxDensity},
    {ElectricalInductance.name_atom(), ElectricalInductance},
    {Temperature.name_atom(), Temperature}
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

  @units {Voltage.name_atom(), Unit.generate_module_variations(Volt)}
  Unit.compile_derivative_units(Volt)
  Unit.compile_variation_conversions(Volt)

  @units {ElectricalCapacitance.name_atom(), Unit.generate_module_variations(Farad)}
  Unit.compile_derivative_units(Farad)
  Unit.compile_variation_conversions(Farad)

  @units {ElectricalResistance.name_atom(), Unit.generate_module_variations(Ohm)}
  Unit.compile_derivative_units(Ohm)
  Unit.compile_variation_conversions(Ohm)

  @units {ElectricalConductance.name_atom(), Unit.generate_module_variations(Siemens)}
  Unit.compile_derivative_units(Siemens)
  Unit.compile_variation_conversions(Siemens)

  @units {MagneticFlux.name_atom(), Unit.generate_module_variations(Weber)}
  Unit.compile_derivative_units(Weber)
  Unit.compile_variation_conversions(Weber)

  @units {MagneticFluxDensity.name_atom(), Unit.generate_module_variations(Tesla)}
  Unit.compile_derivative_units(Tesla)
  Unit.compile_variation_conversions(Tesla)

  @units {ElectricalInductance.name_atom(), Unit.generate_module_variations(Henry)}
  Unit.compile_derivative_units(Henry)
  Unit.compile_variation_conversions(Henry)

  @units {Temperature.name_atom(), Unit.generate_module_variations(DegreeCelsius)}
  Unit.compile_derivative_units(DegreeCelsius)
  Unit.compile_variation_conversions(DegreeCelsius)

  def quantities(), do: @basic_quantities
  def units(), do: @units
end
