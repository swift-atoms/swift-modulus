# swift-modulus

Use this package when a value is one of the kinds of modulus. `Modulus` is a namespace; each kind nested in it is a kind of quantity of swift-quantity, and an amount of it is a `Tagged<Modulus.Kind, Scalar>`. A stress over a strain is Young's modulus, and Young's modulus times a strain is a stress. The same operands also define the shear and bulk moduli, so those two have no equation here; make them with `amount(_:)` or `pascals(_:)`.

## Laws

- `Modulus.Young` is young's modulus: stress per strain along an axis, stored in pascals, of dimension length: -1, mass: 1, time: -2; make an amount with `Modulus.Young.pascals(_:)`.
- `Modulus.Shear` is the shear modulus: stress per strain across a face, stored in pascals, of dimension length: -1, mass: 1, time: -2; make an amount with `Modulus.Shear.pascals(_:)`.
- `Modulus.Bulk` is the bulk modulus: stress per strain in volume, stored in pascals, of dimension length: -1, mass: 1, time: -2; make an amount with `Modulus.Bulk.pascals(_:)`.
- Amounts of one kind add, scale and compare as swift-quantity gives every kind; they never mix with another kind, even one of the same dimension.
- A stress over a strain is Young's modulus, and Young's modulus times a strain is a stress.
