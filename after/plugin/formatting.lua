local settings = {
	lua = {
		require("formatter.filetypes.lua").stylua,
	},
	typescriptreact = {
		require("formatter.filetypes.typescript").prettier,
	},
	typescript = {
		require("formatter.filetypes.typescript").prettier,
	},
	dart = {
		require("formatter.filetypes.dart").dartformat,
	},
	javascript = {
		require("formatter.filetypes.javascript").prettier,
	},
	["*"] = {
		-- "formatter.filetypes.any" defines default configurations for any
		-- filetype
		require("formatter.filetypes.any").remove_trailing_whitespace,
	},
}

require("formatter").setup({
	logging = false,
	log_level = vim.log.levels.WARN,
	filetype = settings,
})

-- automatically format buffer before writing to disk:
vim.api.nvim_create_augroup('BufWritePreFormatter', {})
vim.api.nvim_create_autocmd('BufWritePre', {
	command = 'FormatWrite',
	group = 'BufWritePreFormatter',
	pattern = { '*.js', '*.jsx', '*.ts', '*.tsx' },
})
vim.keymap.set("n", "<leader>f", function()
	if settings[vim.bo.filetype] ~= nil then
		vim.cmd([[Format]])
	else
		vim.lsp.buf.format()
	end
end)
