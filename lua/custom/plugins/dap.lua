return {
  {
    "mfussenegger/nvim-dap",
    optional = true,
    dependencies = {
      {
        "williamboman/mason.nvim",
        opts = function(_, opts)
          opts.ensure_installed = opts.ensure_installed or {}
          table.insert(opts.ensure_installed, "js-debug-adapter")
        end,
      },
    },
    opts = function()
      local dap = require("dap")
      -- JavaScript/TypeScript configurations
      if not dap.adapters["pwa-node"] then
        dap.adapters["pwa-node"] = {
          type = "server",
          host = "localhost",
          port = "${port}",
          executable = {
            command = "node",
            args = {
              require("mason-registry").get_package("js-debug-adapter"):get_install_path()
                .. "/js-debug/src/dapDebugServer.js",
              "${port}",
            },
          },
        }
      end

      for _, language in ipairs({ "typescript", "javascript", "typescriptreact", "javascriptreact" }) do
        if not dap.configurations[language] then
          dap.configurations[language] = {
            {
              type = "pwa-node",
              request = "launch",
              name = "Launch file",
              program = "${file}",
              cwd = "${workspaceFolder}",
            },
            {
              type = "pwa-node",
              request = "attach",
              name = "Attach",
              processId = require("dap.utils").pick_process,
              cwd = "${workspaceFolder}",
            },
          }
        end
      end

      -- PHP configurations
      if not dap.adapters.php then
        dap.adapters.php = {
          type = "executable",
          command = "node",
          -- Adjust the path to your installation of vscode-php-debug
          args = { "/Users/jorgenjensen/.debug/vscode-php-debug/out/phpDebug.js" },
          name = "php",
        }
      end

      if not dap.configurations.php then
        dap.configurations.php = {
          {
            type = "php",
            request = "launch",
            name = "Listen for Xdebug (signing-service)",
            port = 9003,
            pathMappings = {
              ["/app/data"] = "/Volumes/projects/signing-service",
            },
          },
        }
      end
    end,
  },
}
