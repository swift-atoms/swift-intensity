public import Quantity

extension Tagged::Tagged where Tag == Intensity, Underlying: Numeric {
    /// The power of this intensity through the area `rhs`.
    @inlinable
    public static func * (lhs: Self, rhs: Area<Space.Physical>.Value<Underlying>) -> Power.Value<Underlying> {
        Power.watts(lhs.underlying * rhs.underlying)
    }
}
