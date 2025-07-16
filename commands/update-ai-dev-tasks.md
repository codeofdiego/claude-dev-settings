# Update AI Dev Tasks Command

This command downloads the latest workflow files from the ai-dev-tasks repository.

Run these commands to update:
```bash
# Create directory if it doesn't exist
mkdir -p ~/.claude/docs/ai-dev-tasks

# Download the specific workflow files we need
curl -s https://raw.githubusercontent.com/snarktank/ai-dev-tasks/main/create-prd.md -o ~/.claude/docs/ai-dev-tasks/create-prd.md
curl -s https://raw.githubusercontent.com/snarktank/ai-dev-tasks/main/generate-tasks.md -o ~/.claude/docs/ai-dev-tasks/generate-tasks.md
curl -s https://raw.githubusercontent.com/snarktank/ai-dev-tasks/main/process-task-list.md -o ~/.claude/docs/ai-dev-tasks/process-task-list.md

echo "✅ AI dev tasks workflow files updated successfully"
```

This ensures you always have the most current version of the structured development workflow files without needing the full repository.