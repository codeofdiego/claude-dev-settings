# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with this Claude Code configuration repository.

## Project Overview

This repository contains shared Claude Code configurations for React/React Native development, including:
- Custom slash commands for development workflows
- TDD and Lean development workflow definitions
- Code review guidelines and commit standards
- Hook-based workflow enforcement
- MCP tool configuration templates

## Development Workflows

### TDD Mode
Use `/tdd` command to activate Test-Driven Development workflow. The system includes:
- Automated workflow enforcement via hooks
- Mandatory 8-step TDD process defined in `docs/workflows/tdd_workflow.md`
- Code review integration with principal engineer-level standards
- Separate commits for tests and implementation

### Lean Mode
Use `/lean` command for rapid development with quality gates:
- 5-step development process in `docs/workflows/lean_workflow.md`
- Code review at each iteration
- Focus on requirements analysis and iterative refinement

## Available Slash Commands

### Project Management
- `/create-prd` - Generate Product Requirements Documents with guided workflow
- `/estimate` - Analyze tickets and create implementation plans with time estimates
- `/generate-tasks` - Break down features into actionable development tasks
- `/process-task-list` - Process and organize task lists

### Development Workflows
- `/tdd` - Switch to Test-Driven Development mode with workflow enforcement
- `/lean` - Switch to Lean development workflow with code review gates

## Code Review Process

All code must pass through the Code Review Super Star Agent (`docs/guidelines/code_review_agent.md`):
- Principal engineer with 20+ years FAANG experience standards
- Checks for correctness, test coverage, security, performance, maintainability
- Overfitting detection to ensure general solutions
- Critical/Major/Minor issue classification

## Commit Guidelines

Follow the format in `docs/guidelines/commit_guidelines.md`:
- Type-based prefixes: `feat:`, `fix:`, `chore:`, `docs:`, `refactor:`, `test:`
- Lowercase titles, max 50 characters
- Optional bullet point body explaining changes
- Never include Claude Code advertisements

## MCP Tools Integration

Pre-configured MCP tools available:
- `react-mcp` - React development assistance
- `figma-mcp` - Figma integration
- `github-mcp` - GitHub operations
- `postgres-mcp` / `sqlite-mcp` - Database operations
- `filesystem-mcp` - File system operations
- `web-search-mcp` - Web search capabilities
- `npm-mcp` - NPM package management

## Security & Permissions

Comprehensive security model enforced via `settings.json`:
- Environment files, secrets, keys, and credentials are protected
- Destructive operations blocked (`rm -rf`, `curl`, `wget`, `ssh`, `scp`)
- Safe development operations allowed (npm, git, testing frameworks)
- MCP tool permissions properly scoped

## Workflow Enforcement

TDD workflow enforcer hook (`hooks/tdd-workflow-enforcer.sh`):
- Automatically detects TDD mode sessions
- Shows mandatory workflow reminders during Write/Edit operations
- Tracks tool usage and provides periodic workflow reinforcement
- Prevents workflow violations during TDD development

## Working with This Repository

When modifying this configuration repository:
- Test changes by symlinking to active `~/.claude/` directory
- Validate hooks work correctly with test TDD sessions
- Update documentation when adding new commands or workflows
- Ensure new MCP tools are documented in README.md

## Architecture Notes

- Configuration designed for symbolic linking from this repo to `~/.claude/`
- Hooks system integrated with tool execution for workflow enforcement
- Modular command structure in `/commands` directory for easy extension
- Structured documentation in `/docs` with guidelines and workflows
- Settings.json configured for React/React Native development security model