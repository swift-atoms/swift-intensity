/// Intensity: power through a surface, per area, stored in watts per square metre.
public enum Intensity {}

extension Intensity: Quantity.Kind {
    public static var dimension: Quantity.Dimension { Quantity.Dimension(mass: 1, time: -3) }
}

extension Intensity {
    /// An amount of intensity, its scalar in watts per square metre.
    public typealias Value<Scalar> = Tagged<Intensity, Scalar>
}
