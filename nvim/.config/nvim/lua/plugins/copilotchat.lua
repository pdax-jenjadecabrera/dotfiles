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
          prompt = "There is a problem in this code. Identify the issues using the provided diagnostics and fix them. Explain what was wrong and how your changes address the problems.",
          system_prompt = (
            "You are an expert software engineer. "
            .. "You will be provided with code that has issues along with diagnostics from a compiler or linter. "
            .. "Your task is to identify the problems in the code, fix them, and explain what was wrong and how your changes address the problems. "
            .. "Provide clear and concise explanations suitable for a developer looking to understand the issues and improvements made."
          ),
        },
        Document = {
          prompt = (
            "Generate documentation for the following highlighted code by adding concise comments or docstrings directly to the code."
            .. "For atomic processes, use a single line comment. "
            .. "For other parts, provide concise yet clear documentation. "
            .. "Base the documentation on the context provided, considering surrounding code and project details. "
            .. "Do not include usage examples or instructions—only document what the code does and its intent."
          ),
          system_prompt = (
            "You are an expert technical writer and software engineer. "
            .. "Your task is to generate clear and concise documentation for the provided code snippet. "
            .. "Focus on explaining what the code does, its purpose, and any important details that a developer would need to understand its functionality. "
            .. "Base your documentation on the context provided, taking into account surrounding code and project information. "
            .. "Avoid including examples or usage instructions; instead, concentrate on delivering straightforward explanations that enhance comprehension of the code's intent and behavior."
          ),
        },
        Explain = {
          prompt = "Explain what the following highlighted code does, its purpose, and any important details a developer should know. ",
          system_prompt = (
            "You are an expert software engineer. "
            .. "Your task is to explain the provided code snippet, describing its functionality, intent, and any noteworthy implementation details. "
            .. "Base your explanation on the context given. "
            .. "Avoid usage examples or instructions; concentrate on delivering a clear and concise explanation suitable for a developer."
          ),
        },
        Review = {
          prompt = "Review the following highlighted code for correctness, readability, maintainability, and potential issues. ",
          system_prompt = (
            "You are an expert software engineer. "
            .. "Your task is to review the provided code snippet, evaluating its correctness, readability, maintainability, and identifying any potential issues. "
            .. "Base your review on the context given. "
            .. "Offer clear, concise feedback and actionable suggestions for improvement, without including usage examples or instructions."
          ),
        },
        Commit = {
          prompt = "Write a concise and clear commit message for the staged changes",
          system_prompt = (
            "You are a senior software engineer. "
            .. "Generate a high-signal commit message. "
            .. "Mention key changes and omit noise. "
            .. "If you include shell-sensitive characters (e.g. ;, &, |, `, $, \", ', \\), "
            .. "escape them so the message is safe to paste into a terminal command. "
            .. "Output only the commit message in a git commit block."
          ),
        },
        Test = {
          prompt = "Generate tests for the selected code.",
          system_prompt = (
            "You are a senior software engineer focused on writing reliable automated tests. "
            .. "Given the provided code context, generate appropriate tests for the project. "
            .. "Prefer the project's existing test framework and conventions. "
            .. "Cover key behaviors, edge cases, and error handling. "
            .. "Keep tests deterministic; avoid network and time dependencies unless mocked. "
            .. "If dependencies must be mocked, include minimal mocking setup. "
            .. "Output only the test code (and minimal necessary setup files if required)."
          ),
        },
        Optimize = {
          prompt = "Optimize the following highlighted code for performance, readability, and maintainability. Explain the changes.",
          system_prompt = (
            "You are an expert software engineer. "
            .. "Your task is to optimize the provided code snippet, improving its performance, readability, and maintainability. "
            .. "Explain the changes you make and why they improve the code. "
            .. "Base your optimizations on the context given."
          ),
        },
      },
    },
    keys = {
      { "<leader>cc", ":CopilotChat ", mode = { "n" } },
      { "<leader>ccc", ":CopilotChatClose<CR>", mode = "n" },
      { "<leader>ccx", ":CopilotChatReset<CR>", mode = "n" },
      { "<leader>ccm", ":CopilotChatModels<CR>", mode = "n" },
      { "<leader>cca", ":CopilotChat #buffer active #selection ", mode = { "v", "n" } },
      { "<leader>ccf", ":CopilotChatFix #buffer active #selection ", mode = "v" },
      { "<leader>ccd", ":CopilotChatDocument #buffer active #selection <CR>", mode = "v" },
      { "<leader>cct", ":CopilotChatTest #buffer active <CR>", mode = "v" },
      { "<leader>cce", ":CopilotChatExplain #buffer active #selection <CR>", mode = "v" },
      { "<leader>ccr", ":CopilotChatReview #buffer active #selection <CR>", mode = "v" },
      { "<leader>cco", ":CopilotChatOptimize #buffer active #selection <CR>", mode = "v" },
      { "<leader>ccg", ":CopilotChatCommit #gitdiff:staged <CR>", mode = "n" },
    },
  },
}
