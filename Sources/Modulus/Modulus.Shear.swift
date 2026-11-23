extension Modulus {
    /// The shear modulus: stress per strain across a face, stored in pascals.
    public enum Shear {}
}

extension Modulus.Shear: Quantity.Kind {
    public static var dimension: Quantity.Dimension { Quantity.Dimension(length: -1, mass: 1, time: -2) }
}

extension Modulus.Shear {
    /// An amount of this kind, its scalar in pascals.
    public typealias Value<Scalar> = Tagged<Modulus.Shear, Scalar>

    /// An amount of this kind given in pascals.
    @inlinable
    public static func pascals<Scalar>(_ scalar: Scalar) -> Value<Scalar> {
        amount(scalar)
    }
}
