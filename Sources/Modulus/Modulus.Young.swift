extension Modulus {
    /// Young's modulus: stress per strain along an axis, stored in pascals.
    public enum Young {}
}

extension Modulus.Young: Quantity.Kind {
    public static var dimension: Quantity.Dimension { Quantity.Dimension(length: -1, mass: 1, time: -2) }
}

extension Modulus.Young {
    /// An amount of this kind, its scalar in pascals.
    public typealias Value<Scalar> = Tagged<Modulus.Young, Scalar>

    /// An amount of this kind given in pascals.
    @inlinable
    public static func pascals<Scalar>(_ scalar: Scalar) -> Value<Scalar> {
        amount(scalar)
    }
}
