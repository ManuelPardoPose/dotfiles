-- This is the splashscreen plugin and config
return {
    {
        'goolord/alpha-nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function ()
            local status_ok, alpha = pcall(require, "alpha")
            if not status_ok then
                return
            end

            local dashboard = require("alpha.themes.dashboard")
            -- dashboard.section.header.val = {
            --     [[                               __                ]],
            --     [[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
            --     [[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
            --     [[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
            --     [[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
            --     [[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
            -- }
            dashboard.section.header.val = {
                [[ ▄▄▄       ▄████▄   ██░ ██   ██████  ▒█████  ]],
                [[▒████▄    ▒██▀ ▀█  ▓██░ ██▒▒██    ▒ ▒██▒  ██▒]],
                [[▒██  ▀█▄  ▒▓█    ▄ ▒██▀▀██░░ ▓██▄   ▒██░  ██▒]],
                [[░██▄▄▄▄██ ▒▓▓▄ ▄██▒░▓█ ░██   ▒   ██▒▒██   ██░]],
                [[ ▓█   ▓██▒▒ ▓███▀ ░░▓█▒░██▓▒██████▒▒░ ████▓▒░]],
                [[ ▒▒   ▓▒█░░ ░▒ ▒  ░ ▒ ░░▒░▒▒ ▒▓▒ ▒ ░░ ▒░▒░▒░ ]],
                [[  ▒   ▒▒ ░  ░  ▒    ▒ ░▒░ ░░ ░▒  ░ ░  ░ ▒ ▒░ ]],
                [[  ░   ▒   ░         ░  ░░ ░░  ░  ░  ░ ░ ░ ▒  ]],
                [[      ░  ░░ ░       ░  ░  ░      ░      ░ ░  ]],
                [[          ░                                  ]],
            }
            -- icons below are nerd font icons
            dashboard.section.buttons.val = {
                dashboard.button("n", " New file", ":ene <BAR> startinsert <CR>"),
                dashboard.button("f", " Find file", ":Telescope find_files <CR>"),
                dashboard.button("t", "󱎸 Find text", ":Telescope live_grep <CR>"),
                dashboard.button("r", " Recently used files", ":Telescope oldfiles <CR>"),
                dashboard.button("c", " Configuration", ":e $MYVIMRC <CR>"),
                dashboard.button("q", " Quit Neovim", ":qa<CR>"),
            }

            local function footer()
                local footerString = ""
                local date = os.date("*t")
                -- the date below is for testing the cases
                -- local date = os.date("*t", os.time{
                --     year = 2002,
                --     month = 2,
                --     day = 3,
                --     hour = 22,
                --     min = 5,
                -- })
                local hour = date.hour
                if (hour >= 22 or hour <= 2) then
                    footerString = footerString .. "Geh schlafen 💤!\n"
                elseif (hour >= 11 and hour <= 14) then
                    footerString = footerString .. "Ess was zu Mittag 🥐!\n"
                end
                footerString = footerString .. "Zeit  | " .. os.date('%H:%M') .. "\n"
                footerString = footerString .. "Datum | " .. os.date('%d.%m.%Y')
                return footerString
            end

            dashboard.section.footer.val = footer()

            dashboard.section.footer.opts.hl = "Type"
            dashboard.section.header.opts.hl = "Include"
            dashboard.section.buttons.opts.hl = "Keyword"

            dashboard.opts.opts.noautocmd = true
            -- vim.cmd([[autocmd User AlphaReady echo 'ready']])
            alpha.setup(dashboard.opts)
        end
    }
}
