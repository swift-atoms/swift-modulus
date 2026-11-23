extension Modulus {
    /// The bulk modulus: stress per strain in volume, stored in pascals.
    public enum Bulk {}
}

extension Modulus.Bulk: Quantity.Kind {
    public static var dimension: Quantity.Dimension { Quantity.Dimension(length: -1, mass: 1, time: -2) }
}

extension Modulus.Bulk {
    /// An amount of this kind, its scalar in pascals.
    public typealias Value<Scalar> = Tagged<Modulus.Bulk, Scalar>


    /// An amount of this kind given in pascals.
    @inlinable
    public static func pascals<Scalar>(_ scalar: Scalar) -> Value<Scalar> {
        amount(scalar)
    }
}
