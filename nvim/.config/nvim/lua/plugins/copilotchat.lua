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
      prompts = {
        Fix = {
          prompts = {
            Fix = {
              prompt = (
                "There is a problem in this code. Identify the issues using the provided diagnostics and fix them. "
                .. "Explain what was wrong and how your changes address the problems."
              ),
              system_prompt = (
                "You are an expert software engineer. "
                .. "You will be provided with code that has issues along with diagnostics from a compiler or linter. "
                .. "Your task is to identify the problems in the code, fix them, and explain what was wrong and how your changes address the problems. "
                .. "Provide clear and concise explanations suitable for a developer looking to understand the issues and improvements made."
              ),
            },
            Document = {
              prompt = (
                "Generate documentation for the following code by adding concise comments or docstrings directly to the code.\n"
                .. "For atomic processes, use a single line comment.\n"
                .. "For other parts, provide concise yet clear documentation.\n"
                .. "Do not include usage examples or instructions—only document what the code does and its intent."
              ),
              system_prompt = (
                "You are an expert technical writer and software engineer. "
                .. "Your task is to generate clear and concise documentation for the provided code snippet. "
                .. "Focus on explaining what the code does, its purpose, and any important details that a developer would need to understand its functionality. "
                .. "Avoid including examples or usage instructions; instead, concentrate on delivering straightforward explanations that enhance comprehension of the code's intent and behavior."
              ),
            },
          },
        },
      },
    },
    keys = {
      { "<leader>cc", ":CopilotChat<CR>", mode = "n" },
      { "<leader>ccc", ":CopilotChatClose<CR>", mode = "n" },
      { "<leader>ccx", ":CopilotChatReset<CR>", mode = "n" },
      { "<leader>ccm", ":CopilotChatModels<CR>", mode = "n" },
      { "<leader>cce", ":CopilotChatExplain<CR>", mode = "v" },
      { "<leader>ccr", ":CopilotChatReview<CR>", mode = "v" },
      { "<leader>ccf", ":CopilotChatFix #selection ", mode = "v" },
      { "<leader>cco", ":CopilotChatOptimize #selection <CR>", mode = "v" },
      { "<leader>ccd", ":CopilotChatDocument #selection <CR>", mode = "v" },
      { "<leader>cct", ":CopilotChatTests<CR>", mode = "v" },
      { "<leader>ccg", ":CopilotChatCommit<CR>", mode = "n" },
    },
  },
}
