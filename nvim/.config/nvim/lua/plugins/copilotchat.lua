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
      { "<leader>zc", ":CopilotChat<CR>" },
      { "<leader>ze", ":CopilotChatExplain<CR>" },
      { "<leader>ze", ":CopilotChatExplain<CR>" },
      { "<leader>zr", ":CopilotChatReview<CR>" },
      { "<leader>zf", ":CopilotChatFix<CR>" },
      { "<leader>zo", ":CopilotChatOptimize<CR>" },
      { "<leader>zd", ":CopilotChatDocs<CR>" },
      { "<leader>zt", ":CopilotChatTests<CR>" },
      { "<leader>zm", ":CopilotChatCommit<CR>" },
    },
  },
}
