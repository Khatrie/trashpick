Config = Config or {}

Config.Timeout = 1 * (60 * 1000)

Config.TrashRewards = {
    [1] = {
        ["item"] = "plastic",
        ["amount"] = {
            ["min"] = 3,
            ["max"] = 8
        },
    },
    [2] = {
        ["item"] = "steel",
        ["amount"] = {
            ["min"] = 4,
            ["max"] = 10
        },
    },
    [3] = {
        ["item"] = "cloth",
        ["amount"] = {
            ["min"] = 5,
            ["max"] = 10
        },
    },
    [4] = {
        ["item"] = "aluminum",
        ["amount"] = {
            ["min"] = 3,
            ["max"] = 10
        },
    },
    [5] = {
        ["item"] = "metalscrap",
        ["amount"] = {
            ["min"] = 3,
            ["max"] = 10
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
            ["min"] = 3,
            ["max"] = 10
        },
    },
}

Config.Locations = {
    [1] = {
        ["coords"] = vector3(700.07, 1284.14, 360.3),
        ["isOpened"] = false,
    },
    [2] = {
        ["coords"] = vector3(691.23, 1282.59, 360.3),
        ["isOpened"] = false,
    },
}
