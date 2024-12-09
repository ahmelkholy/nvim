return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        panel = {
          enabled = true,
          auto_refresh = true,
        },
        suggestion = {
          enabled = true,
          auto_trigger = true,
          keymap = {
            accept = "<M-l>",
            next = "<M-]>",
            prev = "<M-[>",
            dismiss = "<C-]>",
          },
        },
      })
    end,
  },
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "canary",
    dependencies = {
      "zbirenbaum/copilot.lua",
      "nvim-lua/plenary.nvim",
    },
    opts = {
      debug = false,
      model = "gpt-4",
      prompts = {
        Explain = "Explain how this code works.",
        Review = "Review this code for potential issues.",
        Tests = "Generate unit tests for this code.",
        Refactor = "Refactor this code to improve its clarity and readability.",
      },
    },
    config = function(_, opts)
      require("CopilotChat").setup(opts)
      -- Set up keymaps
      vim.keymap.set("n", "<C-M-a>", ":CopilotChat<CR>", { desc = "Open Copilot Chat" })
      vim.keymap.set("v", "<C-M-a>", ":CopilotChat<CR>", { desc = "Open Copilot Chat with selection" })
      vim.keymap.set("n", "<C-M-e>", ":CopilotChatExplain<CR>", { desc = "Explain code" })
      vim.keymap.set("n", "<C-M-t>", ":CopilotChatTests<CR>", { desc = "Generate tests" })
      vim.keymap.set("n", "<C-M-r>", ":CopilotChatReview<CR>", { desc = "Review code" })
      vim.keymap.set("n", "<C-M-f>", ":CopilotChatRefactor<CR>", { desc = "Refactor code" })
    end,
  },
}
