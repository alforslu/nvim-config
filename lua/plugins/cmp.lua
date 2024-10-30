return {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
        local cmp = require("cmp")
        local context = require("cmp.config.context")

        -- Modify the enabled function to disable snippets in comments
        opts.enabled = function()
            if vim.api.nvim_get_mode().mode == "c" then
                return true
            else
                return not context.in_treesitter_capture("comment")
                    and not context.in_syntax_group("Comment")
                    and not context.in_treesitter_capture("string")
                    and not context.in_syntax_group("String")
            end
        end

        cmp.setup(opts)
    end,
}
