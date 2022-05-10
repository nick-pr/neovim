vim.g["vimtex_view_method"] = "skim"
vim.g["vimtex_compiler_latexmk"] = {
	executable = "latexmk",
	options = { "-xelatex", "-file-line-error", "-synctex=1", "-interaction=nonstopmode" },
}
