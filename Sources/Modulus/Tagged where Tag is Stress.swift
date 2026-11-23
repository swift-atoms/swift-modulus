public import Quantity

extension Tagged::Tagged where Tag == Stress, Underlying: FloatingPoint {
    /// Young's modulus of a material this stressed under the strain `rhs`.
    @inlinable
    public static func / (lhs: Self, rhs: Strain.Value<Underlying>) -> Modulus.Young.Value<Underlying> {
        Modulus.Young.pascals(lhs.underlying / rhs.underlying)
    }
}
