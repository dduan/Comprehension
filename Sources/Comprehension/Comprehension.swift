extension Array {
    public init<
        E0,
        S0
    >(
        _ s0: S0,
        where predicate: ((E0) -> Bool)? = nil,
        transform: (E0) -> Element
    ) where
        S0: Collection, S0.Element == E0
    {
        self.init()
        self.reserveCapacity(s0.underestimatedCount)
        for e0 in s0 {
            if predicate?(e0) ?? true {
                self.append(transform(e0))
            }
        }
    }

    public init<
        E0, E1,
        S0, S1
    >(
        _ s0: S0,
        _ s1: S1,
        where predicate: ((E0, E1) -> Bool)? = nil,
        transform: (E0, E1) -> Element
    ) where
        S0: Collection, S0.Element == E0,
        S1: Collection, S1.Element == E1
    {
        self.init()
        self.reserveCapacity(s0.underestimatedCount * s1.underestimatedCount)
        for e0 in s0 {
        for e1 in s1 {
            if predicate?(e0, e1) ?? true {
                self.append(transform(e0, e1))
            }
        }}
    }

    public init<
        E0, E1, E2,
        S0, S1, S2
    >(
        _ s0: S0,
        _ s1: S1,
        _ s2: S2,
        where predicate: ((E0, E1, E2) -> Bool)? = nil,
        transform: (E0, E1, E2) -> Element
    ) where
        S0: Collection, S0.Element == E0,
        S1: Collection, S1.Element == E1,
        S2: Collection, S2.Element == E2
    {
        self.init()
        self.reserveCapacity(
            s0.underestimatedCount *
            s1.underestimatedCount *
            s2.underestimatedCount
        )
        for e0 in s0 {
        for e1 in s1 {
        for e2 in s2 {
            if predicate?(e0, e1, e2) ?? true {
                self.append(transform(e0, e1, e2))
            }
        }}}
    }

    public init<
        E0, E1, E2, E3,
        S0, S1, S2, S3
    >(
        _ s0: S0,
        _ s1: S1,
        _ s2: S2,
        _ s3: S3,
        where predicate: ((E0, E1, E2, E3) -> Bool)? = nil,
        transform: (E0, E1, E2, E3) -> Element
    ) where
        S0: Collection, S0.Element == E0,
        S1: Collection, S1.Element == E1,
        S2: Collection, S2.Element == E2,
        S3: Collection, S3.Element == E3
    {
        self.init()
        self.reserveCapacity(
            s0.underestimatedCount *
            s1.underestimatedCount *
            s2.underestimatedCount *
            s3.underestimatedCount
        )
        for e0 in s0 {
        for e1 in s1 {
        for e2 in s2 {
        for e3 in s3 {
            if predicate?(e0, e1, e2, e3) ?? true {
                self.append(transform(e0, e1, e2, e3))
            }
        }}}}
    }

    public init<
        E0, E1, E2, E3, E4,
        S0, S1, S2, S3, S4
    >(
        _ s0: S0,
        _ s1: S1,
        _ s2: S2,
        _ s3: S3,
        _ s4: S4,
        where predicate: ((E0, E1, E2, E3, E4) -> Bool)? = nil,
        transform: (E0, E1, E2, E3, E4) -> Element
    ) where
        S0: Collection, S0.Element == E0,
        S1: Collection, S1.Element == E1,
        S2: Collection, S2.Element == E2,
        S3: Collection, S3.Element == E3,
        S4: Collection, S4.Element == E4
    {
        self.init()
        self.reserveCapacity(
            s0.underestimatedCount *
            s1.underestimatedCount *
            s2.underestimatedCount *
            s3.underestimatedCount *
            s4.underestimatedCount
        )

        for e0 in s0 {
        for e1 in s1 {
        for e2 in s2 {
        for e3 in s3 {
        for e4 in s4 {
            if predicate?(e0, e1, e2, e3, e4) ?? true {
                self.append(transform(e0, e1, e2, e3, e4))
            }
        }}}}}
    }

    public init<
        E0, E1, E2, E3, E4, E5,
        S0, S1, S2, S3, S4, S5
    >(
        _ s0: S0,
        _ s1: S1,
        _ s2: S2,
        _ s3: S3,
        _ s4: S4,
        _ s5: S5,
        where predicate: ((E0, E1, E2, E3, E4, E5) -> Bool)? = nil,
        transform: (E0, E1, E2, E3, E4, E5) -> Element
    ) where
        S0: Collection, S0.Element == E0,
        S1: Collection, S1.Element == E1,
        S2: Collection, S2.Element == E2,
        S3: Collection, S3.Element == E3,
        S4: Collection, S4.Element == E4,
        S5: Collection, S5.Element == E5
    {
        self.init()
        self.reserveCapacity(
            s0.underestimatedCount *
            s1.underestimatedCount *
            s2.underestimatedCount *
            s3.underestimatedCount *
            s4.underestimatedCount *
            s5.underestimatedCount
        )

        for e0 in s0 {
        for e1 in s1 {
        for e2 in s2 {
        for e3 in s3 {
        for e4 in s4 {
        for e5 in s5 {
            if predicate?(e0, e1, e2, e3, e4, e5) ?? true {
                self.append(transform(e0, e1, e2, e3, e4, e5))
            }
        }}}}}}
    }

    public init<
        E0, E1, E2, E3, E4, E5, E6,
        S0, S1, S2, S3, S4, S5, S6
    >(
        _ s0: S0,
        _ s1: S1,
        _ s2: S2,
        _ s3: S3,
        _ s4: S4,
        _ s5: S5,
        _ s6: S6,
        where predicate: ((E0, E1, E2, E3, E4, E5, E6) -> Bool)? = nil,
        transform: (E0, E1, E2, E3, E4, E5, E6) -> Element
    ) where
        S0: Collection, S0.Element == E0,
        S1: Collection, S1.Element == E1,
        S2: Collection, S2.Element == E2,
        S3: Collection, S3.Element == E3,
        S4: Collection, S4.Element == E4,
        S5: Collection, S5.Element == E5,
        S6: Collection, S6.Element == E6
    {
        self.init()
        self.reserveCapacity(
            s0.underestimatedCount *
            s1.underestimatedCount *
            s2.underestimatedCount *
            s3.underestimatedCount *
            s4.underestimatedCount *
            s5.underestimatedCount *
            s6.underestimatedCount
        )

        for e0 in s0 {
        for e1 in s1 {
        for e2 in s2 {
        for e3 in s3 {
        for e4 in s4 {
        for e5 in s5 {
        for e6 in s6 {
            if predicate?(e0, e1, e2, e3, e4, e5, e6) ?? true {
                self.append(transform(e0, e1, e2, e3, e4, e5, e6))
            }
        }}}}}}}
    }
}
