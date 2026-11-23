import Modulus
import Testing

enum `Modulus Tests` {}

extension `Modulus Tests` {
    @Suite struct `Modulus holds kinds of quantity` {
        @Test func `Young is in pascals, of dimension length: -1, mass: 1, time: -2`() {
            #expect(Modulus.Young.dimension == Quantity.Dimension(length: -1, mass: 1, time: -2))
            #expect(Modulus.Young.pascals(2.5).underlying == 2.5)
        }

        @Test func `Shear is in pascals, of dimension length: -1, mass: 1, time: -2`() {
            #expect(Modulus.Shear.dimension == Quantity.Dimension(length: -1, mass: 1, time: -2))
            #expect(Modulus.Shear.pascals(2.5).underlying == 2.5)
        }

        @Test func `Bulk is in pascals, of dimension length: -1, mass: 1, time: -2`() {
            #expect(Modulus.Bulk.dimension == Quantity.Dimension(length: -1, mass: 1, time: -2))
            #expect(Modulus.Bulk.pascals(2.5).underlying == 2.5)
        }
    }

    @Suite struct `Young's modulus is a stress over a strain` {
        @Test func `Its dimension balances`() {
            #expect(Modulus.Young.dimension == Stress.dimension / Strain.dimension)
        }

        @Test func `A stress over a strain, and back`() {
            let young = Stress.amount(6.0) / Strain.amount(2.0)
            #expect(young == Modulus.Young.pascals(3.0))
            #expect(young * Strain.amount(2.0) == Stress.amount(6.0))
        }
    }
}
