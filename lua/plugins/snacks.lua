return {
    "folke/snacks.nvim",
    opts = {
        picker = {
            ignored = true,
            hidden = true,
            sources = {
                explorer = {

                    -- Toggle comment for auto closing floating tree w preview
                    jump = { close = true },
                    layout = {
                        preset = "default",
                        preview = "true",
                    },

                    -- Toggle comment for sidebar
                    -- layout = {
                    --     preset = "sidebar",
                    --     layout = {
                    --         position = "right",
                    --         width = 40,
                    --     },
                    -- },
                },
            },
        },
    },

    keys = {
        {
            "<A-b>",
            function()
                Snacks.explorer()
            end,
            desc = "File Explorer",
        },
    },
}
