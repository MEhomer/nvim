return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
        -- Your configuration come here
        -- or leave it empty to use the default settings
        delay = 1000,
    },
    keys = {
        {
            "<leader>?",
            function()
                require("which-key").show({global = false})
            end,
            desc = "Buffer Local Keymaps (which-key)",
        }
    }
}
