return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "nvim-lua/plenary.nvim", branch = "master" },
    },
    build = "make tiktoken",
    opts = {
      model = "gpt-4.1",
      temperature = 0.1,
      window = {
        layout = "vertical",
        width = 0.25,
      },
      auto_insert_mode = true,
    },
    keys = {
      { "<leader>cc", ":CopilotChat<CR>", mode = "n" },
      { "<leader>ccc", ":CopilotChatClose<CR>", mode = "n" },
      { "<leader>ccx", ":CopilotChatReset<CR>", mode = "n" },
      { "<leader>ccm", ":CopilotChatModels<CR>", mode = "n" },
      { "<leader>cce", ":CopilotChatExplain<CR>", mode = "v" },
      { "<leader>ccr", ":CopilotChatReview<CR>", mode = "v" },
      { "<leader>ccf", ":CopilotChatFix<CR>", mode = "v" },
      { "<leader>cco", ":CopilotChatOptimize<CR>", mode = "v" },
      { "<leader>ccd", ":CopilotChatDocs<CR>", mode = "v" },
      { "<leader>cct", ":CopilotChatTests<CR>", mode = "v" },
      { "<leader>ccg", ":CopilotChatCommit<CR>", mode = "n" },
    },
  },
}
