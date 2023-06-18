-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["-"] = { "<cmd>split<cr>", desc = "Horizontal Split" },
    ["<S-Left>"] = { function() require("smart-splits").move_cursor_left() end, desc = "Move to left split" },
    ["<S-Down>"] = { function() require("smart-splits").move_cursor_down() end, desc = "Move to below split" },
    ["<S-Up>"] = { function() require("smart-splits").move_cursor_up() end, desc = "Move to above split" },
    ["<S-Right>"] = { function() require("smart-splits").move_cursor_right() end, desc = "Move to right split" },
  },
  i = {
    ["<S-CR>"] =  { function() vim.fn.feedkeys(vim.fn['copilot#Accept']("<CR>"), '') end, desc = "Horizontal Split" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
