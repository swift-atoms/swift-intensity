import Intensity
import Testing

enum `Intensity Tests` {}

extension `Intensity Tests` {
    @Suite struct `Intensity is a kind of quantity in watts per square metre` {
        @Test func `Its dimension is mass: 1, time: -3`() {
            #expect(Intensity.dimension == Quantity.Dimension(mass: 1, time: -3))
        }

        @Test func `An amount given in watts per square metre keeps its scalar`() {
            #expect(Intensity.amount(2.5).underlying == 2.5)
        }
    }

    @Suite struct `An intensity is a power over an area` {
        @Test func `Its dimension balances`() {
            #expect(Intensity.dimension == Power.dimension / Area<Space.Physical>.dimension)
        }

        @Test func `A power over an area, and back`() {
            let intensity = Power.watts(6.0) / Area<Space.Physical>.amount(2.0)
            #expect(intensity == Intensity.amount(3.0))
            #expect(intensity * Area<Space.Physical>.amount(2.0) == Power.watts(6.0))
        }
    }
}
