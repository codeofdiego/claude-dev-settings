# CLAUDE.md (Global Configuration)

This file provides global guidance to Claude Code (claude.ai/code) for all projects.

# Code Reviews Guidelines
Start a new task and review with code review super star agent @docs/guidelines/code_review_agent.md

# Coding workflow (Must follow for when writing code)
@docs/workflows/tdd_workflow.md

# Git Guidelines
Use the format outlined in @docs/guidelines/commit_guidelines.md when committing changes

# Fixing Tests
Follow the process outlined in @docs/test_fixing_process.md

---

# 🛠️ Available Tools

## MCP Tools
- **context7** - Finds library documentation to verify API usage and discover better solutions
- **browsermcp** - Access the browser to test local applications for validating behavior

---

# Global Development Rules

## File Creation Policy
- Do what has been asked; nothing more, nothing less
- NEVER create files unless they're absolutely necessary for achieving your goal
- ALWAYS prefer editing an existing file to creating a new one
- NEVER proactively create documentation files (*.md) or README files
- Only create documentation files if explicitly requested by the User

## Code Quality Standards
- Follow TDD workflow for ALL code changes
- Use Code Review Super Star Agent for every review
- Ensure zero critical issues   before proceeding
- Apply SOLID principles and DRY where appropriate
- Never use `any` types in TypeScript

## Security Requirements
- Never include sensitive information (API keys, tokens) in code or commits
- Protect environment files, secrets, and credentials
- Follow secure coding practices
- Validate all inputs and handle errors gracefully

## Commit Standards
- Never add Claude Code advertisements to commits
- Use conventional commit format (feat:, fix:, chore:, etc.)
- Keep titles under 50 characters and lowercase
- Include meaningful commit bodies when necessary