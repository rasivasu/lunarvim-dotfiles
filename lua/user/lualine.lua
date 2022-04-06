-- globalstatus can only be used with Neovim 0.7 and above
--lvim.builtin.lualine.options.globalstatus = true

lvim.builtin.lualine.options.component_separators = { left = '', right = '' }
lvim.builtin.lualine.options.section_separators = { left = '', right = '' }

local branch = {
	"branch",
	icons_enabled = true,
  icon = '',
}

local diagnostics = {
	"diagnostics",
	sources = { "nvim_diagnostic" },
	sections = { "error", "warn" },
	symbols = { error = " ", warn = " " },
	colored = false,
	update_in_insert = false,
	always_visible = false,
}

local mode = {
	"mode",
  icons_enabled = true,
	fmt = function(str)
		return "-- " .. str .. " --"
	end,
}

local hide_in_width = function()
	return vim.fn.winwidth(0) > 80
end

local diff = {
	"diff",
	colored = false,
	symbols = { added = " ", modified = " ", removed = " " }, -- changes diff symbols
  cond = hide_in_width
}

local spaces = function()
	return "spaces: " .. vim.api.nvim_buf_get_option(0, "shiftwidth")
end

local filetype = {
	"filetype",
	icons_enabled = true,
	icon = nil,
}

-- cool function for progress
local progress = function()
	local current_line = vim.fn.line(".")
	local total_lines = vim.fn.line("$")
	local chars = { "__", "▁▁", "▂▂", "▃▃", "▄▄", "▅▅", "▆▆", "▇▇", "██" }
	local line_ratio = current_line / total_lines
	local index = math.ceil(line_ratio * #chars)
	return chars[index]
end

lvim.builtin.lualine.sections.lualine_a = { branch, diagnostics }
lvim.builtin.lualine.sections.lualine_b = { mode }
lvim.builtin.lualine.sections.lualine_y = { "location" }
lvim.builtin.lualine.sections.lualine_x = { diff, spaces, "encoding", filetype }
lvim.builtin.lualine.sections.lualine_z = { progress }
