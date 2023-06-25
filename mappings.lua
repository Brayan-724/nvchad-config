---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
  i = {
    ["C-g"] = {
      "codeium#Accept()",
      "Accept codeium completion",
      opts = { nowait = true, silent = true, expr = true, script = true },
    },
    ["C-."] = { "<Cmd>call codeium#CycleCompletions(1)<CR>", "Next completion" },
    ["C-,"] = { "<Cmd>call codeium#CycleCompletions(-1)<CR>", "Prev completion" },
    ["C-x"] = { "<Cmd>call codeium#Clear()<CR>", "Clear completion" }
  },
}

-- more keybinds!

return M
