return {
    
    {
        "kristijanhusak/vim-dadbod-ui",
        dependencies = {
            { "tpope/vim-dadbod" }, 
            { "kristijanhusak/vim-dadbod-completion", ft = { "sql", "mysql", "plsql" }, lazy = true },
        },
        cmd = {
            "DBUI",
            "DBUIToggle",
            "DBUIAddConnection",
            "DBUIFindBuffer",
        },
        init = function()
            
            vim.g.dbs = {
                dev = "sqlserver://localhost\\SQLEXPRESS;database=SalesDB;trusted_connection=yes;"
                
            }
        end,
    },
}

