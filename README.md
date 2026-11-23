# swift-intensity

Use this package when a value is intensity: power through a surface, per area. Start from `Intensity`, a kind of quantity of swift-quantity, and make an amount with `Intensity.amount(_:)`; it is a `Intensity.Value<Scalar>`, a `Tagged<Intensity, Scalar>`.

## Laws

- An amount of intensity is stored in watts per square metre, the coherent SI unit, and is laid out exactly as its scalar.
- Its dimension is mass: 1, time: -3 (exponents of the base dimensions).
- Amounts of intensity add, scale and compare as swift-quantity gives every kind; they never mix with another kind, even one of the same dimension.
- A power over an area is an intensity, and an intensity times an area is a power.
