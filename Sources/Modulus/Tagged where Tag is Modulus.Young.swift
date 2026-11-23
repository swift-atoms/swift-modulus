public import Quantity

extension Tagged::Tagged where Tag == Modulus.Young, Underlying: Numeric {
    /// The stress this material carries under the strain `rhs`.
    @inlinable
    public static func * (lhs: Self, rhs: Strain.Value<Underlying>) -> Stress.Value<Underlying> {
        Stress.amount(lhs.underlying * rhs.underlying)
    }
}
