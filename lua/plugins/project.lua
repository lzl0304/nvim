return {
    {
        'ahmedkhalf/project.nvim',
        config = function()
            require("project_nvim").setup {
                active = true,
                detection_methods = { "pattern" },
                patterns = { ".git", "CMakeLists.txt", "Makefile", "package.json" },
            }
        end
    }
}
