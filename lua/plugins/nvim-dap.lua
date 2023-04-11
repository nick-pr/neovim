local M = { "mfussenegger/nvim-dap" }
M.config = function()
    local dap = require("dap")
    dap.adapters.delve = {
        type = "server",
        host = "127.0.0.1",
        port = 2345,
    }

    -- https://github.com/go-delve/delve/blob/master/Documentation/usage/dlv_dap.md
    dap.configurations.go = {
        {
            name = "Go: Connect to server [DAP]",
            type = "delve",
            request = "attach",
            debugAdapter = "dlv-dap",
            mode = "remote",
            port = 2345,
            host = "127.0.0.1",
            substitutePath = {
                {
                    from = "${env:GOPATH}/src",
                    to = "src",
                },
                {
                    from = "${env:GOPATH}/bazel-go-code/external/",
                    to = "external/",
                },
                {
                    from = "${env:GOPATH}/bazel-out/",
                    to = "bazel-out/",
                },
                {
                    from = "${env:GOPATH}/bazel-go-code/external/go_sdk",
                    to = "GOROOT/",
                },
            },
        },
        {
            type = "delve",
            name = "Debug",
            request = "launch",
            program = "${file}",
        },
        {
            type = "delve",
            name = "Debug test", -- configuration for debugging test files
            request = "launch",
            mode = "test",
            program = "${file}",
        },
        -- works with go.mod packages and sub packages
        {
            type = "delve",
            name = "Debug test (go.mod)",
            request = "launch",
            mode = "test",
            program = "./${relativeFileDirname}",
        },
    }
end
return M
