Config = Config or {}

Config.Timeout = 20 * (60 * 1000)

Config.TrashRewards = {
    [1] = {
        ["item"] = "steel",
        ["amount"] = {
            ["min"] = 1,
            ["max"] = 4
        },
    },
    [2] = {
        ["item"] = "cloth",
        ["amount"] = {
            ["min"] = 1,
            ["max"] = 4
        },
    },
    [3] = {
        ["item"] = "aluminum",
        ["amount"] = {
            ["min"] = 1,
            ["max"] = 4
        },
    },
    [4] = {
        ["item"] = "metalscrap",
        ["amount"] = {
            ["min"] = 1,
            ["max"] = 5
        },
    },
    [5] = {
        ["item"] = "electronics",
        ["amount"] = {
            ["min"] = 1,
            ["max"] = 4
        },
    },
    [6] = {
        ["item"] = "steel",
        ["amount"] = {
            ["min"] = 1,
            ["max"] = 2
        },
    },
    [7] = {
        ["item"] = "cloth",
        ["amount"] = {
            ["min"] = 1,
            ["max"] = 2
        },
    },
    [8] = {
        ["item"] = "aluminum",
        ["amount"] = {
            ["min"] = 1,
            ["max"] = 2
        },
    },
    [9] = {
        ["item"] = "metalscrap",
        ["amount"] = {
            ["min"] = 1,
            ["max"] = 2
        },
    },
    [10] = {
        ["item"] = "electronics",
        ["amount"] = {
            ["min"] = 1,
            ["max"] = 2
        },
    },
}
Config.TrashRewardsRare = {
    [1] = {
        ["item"] = "plastic",
        ["amount"] = {
            ["min"] = 1,
            ["max"] = 4
        },
    },
    [2] = {
        ["item"] = "steel",
        ["amount"] = {
            ["min"] = 1,
            ["max"] = 4
        },
    },
    [3] = {
        ["item"] = "cloth",
        ["amount"] = {
            ["min"] = 1,
            ["max"] = 4
        },
    },
    [4] = {
        ["item"] = "aluminum",
        ["amount"] = {
            ["min"] = 1,
            ["max"] = 4
        },
    },
    [5] = {
        ["item"] = "metalscrap",
        ["amount"] = {
            ["min"] = 1,
            ["max"] = 5
        },
    },
    [6] = {
        ["item"] = "titanium",
        ["amount"] = {
            ["min"] = 1,
            ["max"] = 3
        },
    },
    [7] = {
        ["item"] = "electronics",
        ["amount"] = {
            ["min"] = 1,
            ["max"] = 4
        },
    },
}

Config.Locations = {
    [1] = {
        ["coords"] = vector3(-488.72, -1749.14, 18.72),
        ["isOpened"] = false,
        ["radius"] = 1,
    },
    [2] = {
        ["coords"] = vector3(-481.05, -1747.62, 18.74),
        ["isOpened"] = false,
        ["radius"] = 1,
    },
    [3] = {
        ["coords"] = vector3(-439.93, -1724.05, 19.1),
        ["isOpened"] = false,
        ["radius"] = 1.2,
    },
    [4] = {
        ["coords"] = vector3(-443.53, -1723.52, 18.85),
        ["isOpened"] = false,
        ["radius"] = 1.2, --can
        },
    [5] = {
        ["coords"] = vector3(-499.0, -1756.11, 18.00),
        ["isOpened"] = false,
        ["radius"] = 1, -- car
    },
    [6] = {
        ["coords"] = vector3(-509.4, -1745.39, 19.48),
        ["isOpened"] = false,
        ["radius"] = 1,
    },
    [7] = {
        ["coords"] = vector3(-507.98, -1741.48, 18.94),
        ["isOpened"] = false,
        ["radius"] = 1,
    },
    [8] = {
        ["coords"] = vector3(-498.86, -1723.63, 19.27),
        ["isOpened"] = false,
        ["radius"] = 1.2,
    },
    [9] = {
        ["coords"] = vector3(-503.28, -1703.74, 19.48),
        ["isOpened"] = false,
        ["radius"] = 1,
    },
    [10] = {
        ["coords"] = vector3(-496.73, -1686.02, 19.64),
        ["isOpened"] = false,
        ["radius"] = 1,
    },
    [11] = {
        ["coords"] = vector3(-506.00, -1694.81, 19.3),
        ["isOpened"] = false,
        ["radius"] = 1, --car
    },
    [12] = {
        ["coords"] = vector3(-511.93, -1694.43, 19.56),
        ["isOpened"] = false,
        ["radius"] = 1,
    },
    [13] = {
        ["coords"] = vector3(-521.28, -1682.23, 19.4),
        ["isOpened"] = false,
        ["radius"] = 1,
    },
    [14] = {
        ["coords"] = vector3(-515.92, -1677.45, 19.48),
        ["isOpened"] = false,
        ["radius"] = 1,
    },
    [15] = {
        ["coords"] = vector3(-529.13, -1705.02, 20.00),
        ["isOpened"] = false,
        ["radius"] = 1.2, -- car
    },
    [16] = {
        ["coords"] = vector3(-545.0, -1717.40, 18.5),
        ["isOpened"] = false,
        ["radius"] = 1, --car
    },
    [17] = {
        ["coords"] = vector3(-555.37, -1711.76, 19.50),
        ["isOpened"] = false,
        ["radius"] = 1.2,
    },
    [18] = {
        ["coords"] = vector3(-571.54, -1696.67, 19.76),
        ["isOpened"] = false,
        ["radius"] = 1,
    },
    [19] = {
        ["coords"] = vector3(-571.66, -1706.81, 18.97),
        ["isOpened"] = false,
        ["radius"] = 1,
    },
    [20] = {
        ["coords"] = vector3(-585.43, -1703.14, 18.92),
        ["isOpened"] = false,
        ["radius"] = 1,
    },
    [21] = {
        ["coords"] = vector3(-576.35, -1687.57, 21.0),
        ["isOpened"] = false,
        ["radius"] = 1.2,
    },
    [22] = {
        ["coords"] = vector3(-574.71, -1682.11, 19.6),
        ["isOpened"] = false,
        ["radius"] = 1,
    },

    ------- Breakpoint
    [23] = {
        ["coords"] = vector3(-570.91, -1674.59, 20.34),
        ["isOpened"] = false,
        ["radius"] = 1,
    },
    [24] = {
        ["coords"] = vector3(-567.4, -1675.2, 21.47),
        ["isOpened"] = false,
        ["radius"] = 1,
    },
    [26] = {
        ["coords"] = vector3(-575.88, -1664.13, 19.46),
        ["isOpened"] = false,
        ["radius"] = 1.2,
    },
    [26] = {
        ["coords"] = vector3(-586.72, -1653.88, 20.00),
        ["isOpened"] = false,
        ["radius"] = 1.2, --can
        },
    [27] = {
        ["coords"] = vector3(-588.92, -1652.55, 21.29),
        ["isOpened"] = false,
        ["radius"] = 1, -- car
    },
    [28] = {
        ["coords"] = vector3(-566.42, -1634.29, 20.69),
        ["isOpened"] = false,
        ["radius"] = 1,
    },
    [29] = {
        ["coords"] = vector3(-564.02, -1655.13, 19.36),
        ["isOpened"] = false,
        ["radius"] = 1,
    },
    [30] = {
        ["coords"] = vector3(-546.2, -1653.61, 19.31),
        ["isOpened"] = false,
        ["radius"] = 1.2,
    },
    [31] = {
        ["coords"] = vector3(-544.77, -1648.17, 19.18),
        ["isOpened"] = false,
        ["radius"] = 1,
    },
    [32] = {
        ["coords"] = vector3(-536.19, -1617.21, 17.8),
        ["isOpened"] = false,
        ["radius"] = 1,
    },
    [33] = {
        ["coords"] = vector3(-527.29, -1621.2, 17.96),
        ["isOpened"] = false,
        ["radius"] = 1, --car
    },
    [34] = {
        ["coords"] = vector3(-524.95, -1622.52, 17.96),
        ["isOpened"] = false,
        ["radius"] = 1,
    },
    [35] = {
        ["coords"] = vector3(-519.29, -1622.68, 17.96),
        ["isOpened"] = false,
        ["radius"] = 1,
    },
    [36] = {
        ["coords"] = vector3(-501.49, -1633.11, 17.8),
        ["isOpened"] = false,
        ["radius"] = 1,
    },
    [37] = {
        ["coords"] = vector3(-495.9, -1641.72, 17.96),
        ["isOpened"] = false,
        ["radius"] = 1.2, -- car
    },
    [38] = {
        ["coords"] = vector3(-488.72, -1640.11, 18.21),
        ["isOpened"] = false,
        ["radius"] = 1, --car
    },
    [39] = {
        ["coords"] = vector3(-486.61, -1642.51, 19.07),
        ["isOpened"] = false,
        ["radius"] = 1.2,
    },
    [40] = {
        ["coords"] = vector3(-480.56, -1641.57, 20.59),
        ["isOpened"] = false,
        ["radius"] = 1,
    },
    [41] = {
        ["coords"] = vector3(-476.7, -1654.78, 18.83),
        ["isOpened"] = false,
        ["radius"] = 1,
    },
    [42] = {
        ["coords"] = vector3(-464.36, -1657.16, 19.28),
        ["isOpened"] = false,
        ["radius"] = 1,
    },
    [43] = {
        ["coords"] = vector3(-444.45, -1676.23, 19.78),
        ["isOpened"] = false,
        ["radius"] = 1.2,
    },
    [44] = {
        ["coords"] = vector3(-454.71, -1678.06, 19.89),
        ["isOpened"] = false,
        ["radius"] = 1,
    },

        --Breakpoint
    [45] = {
        ["coords"] = vector3(-455.16, -1690.61, 19.28),
        ["isOpened"] = false,
        ["radius"] = 1,
    },
    [46] = {
        ["coords"] = vector3(-475.97, -1703.94, 18.69),
        ["isOpened"] = false,
        ["radius"] = 1,
    },
    [47] = {
        ["coords"] = vector3(-485.13, -1708.54, 18.9),
        ["isOpened"] = false,
        ["radius"] = 1.2,
    },
    [48] = {
        ["coords"] = vector3(-440.32, -1716.68, 19.24),
        ["isOpened"] = false,
        ["radius"] = 1.2, --can
        },
    [49] = {
        ["coords"] = vector3(-421.14, -1722.21, 20.79),
        ["isOpened"] = false,
        ["radius"] = 1, -- car
    },
    [50] = {
        ["coords"] = vector3(1529.78, -2156.09, 78.56),
        ["isOpened"] = false,
        ["radius"] = 1,
    },
    [51] = {
        ["coords"] = vector3(1528.53, -2151.56, 78.11),
        ["isOpened"] = false,
        ["radius"] = 1,
    },
    [52] = {
        ["coords"] = vector3(1536.44, -2133.99, 78.02),
        ["isOpened"] = false,
        ["radius"] = 1.2,
    },
    [53] = {
        ["coords"] = vector3(1534.68, -2128.21, 76.91),
        ["isOpened"] = false,
        ["radius"] = 1,
    },
    [54] = {
        ["coords"] = vector3(1512.28, -2122.92, 77.61),
        ["isOpened"] = false,
        ["radius"] = 1,
    },
    [55] = {
        ["coords"] = vector3(1502.89, -2122.09, 76.78),
        ["isOpened"] = false,
        ["radius"] = 1, --car
    },
    [56] = {
        ["coords"] = vector3(1498.34, -2123.15, 77.34),
        ["isOpened"] = false,
        ["radius"] = 1,
    },
    [57] = {
        ["coords"] = vector3(1498.08, -2127.37, 77.24),
        ["isOpened"] = false,
        ["radius"] = 1,
    },
    [58] = {
        ["coords"] = vector3(1501.97, -2131.42, 76.21),
        ["isOpened"] = false,
        ["radius"] = 1,
    },
    [59] = {
        ["coords"] = vector3(1495.89, -2136.43, 77.4),
        ["isOpened"] = false,
        ["radius"] = 1.2, -- car
    },
    [60] = {
        ["coords"] = vector3(1499.08, -2141.77, 76.66),
        ["isOpened"] = false,
        ["radius"] = 1, --car
    },
    [61] = {
        ["coords"] = vector3(1501.31, -2149.34, 76.66),
        ["isOpened"] = false,
        ["radius"] = 1.2,
    },
    [62] = {
        ["coords"] = vector3(1506.79, -2153.52, 76.98),
        ["isOpened"] = false,
        ["radius"] = 1,
    },
    [63] = {
        ["coords"] = vector3(1521.15, -2150.56, 77.59),
        ["isOpened"] = false,
        ["radius"] = 1,
    },
    [64] = {
        ["coords"] = vector3(1539.69, -2125.49, 79.79),
        ["isOpened"] = false,
        ["radius"] = 1,
    },
    [65] = {
        ["coords"] = vector3(1551.69, -2132.45, 77.34),
        ["isOpened"] = false,
        ["radius"] = 1.2,
    },
    [66] = {
        ["coords"] = vector3(1558.62, -2128.95, 78.62),
        ["isOpened"] = false,
        ["radius"] = 1,
    },
    [67] = {
        ["coords"] = vector3(1560.33, -2151.91, 77.69),
        ["isOpened"] = false,
        ["radius"] = 1.2, -- car
    },
    [68] = {
        ["coords"] = vector3(1560.67, -2163.64, 77.5),
        ["isOpened"] = false,
        ["radius"] = 1, --car
    },
    [69] = {
        ["coords"] = vector3(1570.91, -2179.72, 78.63),
        ["isOpened"] = false,
        ["radius"] = 1.2,
    },
    [70] = {
        ["coords"] = vector3(1567.11, -2186.05, 78.38),
        ["isOpened"] = false,
        ["radius"] = 1,
    },
    [71] = {
        ["coords"] = vector3(1551.55, -2191.36, 78.55),
        ["isOpened"] = false,
        ["radius"] = 1,
    },
    [72] = {
        ["coords"] = vector3(1546.06, -2183.51, 78.76),
        ["isOpened"] = false,
        ["radius"] = 1,
    },
    [73] = {
        ["coords"] = vector3(1531.87, -2174.37, 77.61),
        ["isOpened"] = false,
        ["radius"] = 1.2,
    },
    [74] = {
        ["coords"] = vector3(1531.66, -2168.08, 78.15),
        ["isOpened"] = false,
        ["radius"] = 1,
    },
    [75] = {
        ["coords"] = vector3(1545.0, -2139.87, 77.82),
        ["isOpened"] = false,
        ["radius"] = 1,
    },
    [76] = {
        ["coords"] = vector3(1555.74, -2084.88, 77.12),
        ["isOpened"] = false,
        ["radius"] = 1,
    },
    [77] = {
        ["coords"] = vector3(1555.25, -2079.96, 77.54),
        ["isOpened"] = false,
        ["radius"] = 1.2,
    },
    [78] = {
        ["coords"] = vector3(1520.08, -2081.34, 77.37),
        ["isOpened"] = false,
        ["radius"] = 1,
    },
    [79] = {
        ["coords"] = vector3(1525.66, -2082.98, 78.55),
        ["isOpened"] = false,
        ["radius"] = 1,
    },
    [80] = {
        ["coords"] = vector3(-599.3, -1667.3, 19.8),
        ["isOpened"] = false,
        ["radius"] = 1,
    },
    [79] = {
        ["coords"] = vector3(-601.21, -1677.51, 19.63),
        ["isOpened"] = false,
        ["radius"] = 1,
    },
    [80] = {
        ["coords"] = vector3(-603.92, -1679.37, 19.71),
        ["isOpened"] = false,
        ["radius"] = 1,
    },
    [81] = {
        ["coords"] = vector3(-585.91, -1671.13, 19.52),
        ["isOpened"] = false,
        ["radius"] = 1,
    },
    [82] = {
        ["coords"] = vector3(-575.97, -1664.05, 19.47),
        ["isOpened"] = false,
        ["radius"] = 1,
    },
    [83] = {
        ["coords"] = vector3(-580.24, -1660.45, 19.65),
        ["isOpened"] = false,
        ["radius"] = 1,
    },
    [84] = {
        ["coords"] = vector3(-543.21, -1620.1, 17.8),
        ["isOpened"] = false,
        ["radius"] = 1,
    },
    [85] = {
        ["coords"] = vector3(-505.43, -1636.48, 18.75),
        ["isOpened"] = false,
        ["radius"] = 1,
    },
    [86] = {
        ["coords"] = vector3(-474.15, -1677.49, 19.07),
        ["isOpened"] = false,
        ["radius"] = 1,
    },
    [87] = {
        ["coords"] = vector3(-474.31, -1680.72, 19.09),
        ["isOpened"] = false,
        ["radius"] = 1,
    },
    [88] = {
        ["coords"] = vector3(-473.21, -1713.16, 18.75),
        ["isOpened"] = false,
        ["radius"] = 1,
    },
    [89] = {
        ["coords"] = vector3(-440.0, -1709.68, 18.89),
        ["isOpened"] = false,
        ["radius"] = 1,
    },
    [90] = {
        ["coords"] = vector3(1559.4, -2121.09, 78.23),
        ["isOpened"] = false,
        ["radius"] = 1,
    },
    [91] = {
        ["coords"] = vector3(1516.41, -2119.4, 79.13),
        ["isOpened"] = false,
        ["radius"] = 1,
    },
}
