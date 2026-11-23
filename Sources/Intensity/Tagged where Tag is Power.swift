public import Quantity

extension Tagged::Tagged where Tag == Power, Underlying: FloatingPoint {
    /// The intensity of this power through the area `rhs`.
    @inlinable
    public static func / (lhs: Self, rhs: Area<Space.Physical>.Value<Underlying>) -> Intensity.Value<Underlying> {
        Intensity.amount(lhs.underlying / rhs.underlying)
    }
}
