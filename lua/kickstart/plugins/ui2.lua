-- Neovim 0.12 shipped ui2, an internal UI layer that rethinks how the cmdline, messages, and pager work.
-- https://neovim.io/doc/user/lua/#_ui2
-- WARNING: This is an experimental feature intended to replace the builtin message + cmdline presentation layer. But it works quite well as I expected.

require('vim._core.ui2').enable({

    enable = true, -- Whether to enable or disable the UI.
    msg = {        -- Options related to the message module.
        ---@type string|table<string, 'cmd'|'msg'|'pager'> Default message target
        ---or table mapping |ui-messages| kinds, triggers and IDs to a target.
        ---Table keys are are matched as a Lua pattern to the message ID. 'default'
        ---mapping applies to any omitted kind: { default = 'cmd', progress = 'msg' }.
        targets = 'cmd',
        cmd = { -- Options related to messages in the cmdline window.
            -- Maximum height (rows if >=1, or % of 'lines' if <1) of messages expanded
            -- beyond 'cmdheight'; 0.999 for full height.
            height = 0.5,
        },
        dialog = {          -- Options related to dialog window.
            height = 0.5,   -- Maximum height.
        },
        msg = {             -- Options related to msg window.
            height = 0.5,   -- Maximum height.
            timeout = 4000, -- Time a message is visible in the message window.
        },
        pager = {           -- Options related to message window.
            height = 0.999, -- Maximum height.
        },
    },
})
