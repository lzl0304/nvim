-- https://github.com/ahmedkhalf/project.nvim

return {
    {
        'ahmedkhalf/project.nvim',
        config = function()
            require("project_nvim").setup {
                active = true,
                detection_methods = { "pattern" },
                patterns = {
                    ".git",
                    "Cargo.toml",
                    "Makefile",
                    "package.json"
                },
            }
        end
    }
}
