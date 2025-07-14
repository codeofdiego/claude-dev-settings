# Claude Code Configuration

Shared Claude Code configurations for React/React Native development.

## Setup on New Device

1. **Clone this repo to your Claude config location:**
```bash
git clone <your-private-repo-url> ~/.claude-shared-config
```

2. **Create symbolic links (or copy files):**
```bash
# Option A: Symbolic links (recommended)
ln -sf ~/.claude-shared-config/settings.local.json ~/.claude/settings.json
ln -sf ~/.claude-shared-config/commands ~/.claude/

# Option B: Copy files
cp ~/.claude-shared-config/settings.local.json ~/.claude/settings.json
cp -r ~/.claude-shared-config/commands ~/.claude/
```

3. **Install MCP tools:**
```bash
claude mcp add react-mcp npx @modelcontextprotocol/server-react
claude mcp add figma-mcp npx @modelcontextprotocol/server-figma
claude mcp add github-mcp npx @modelcontextprotocol/server-github
claude mcp add postgres-mcp npx @modelcontextprotocol/server-postgres
claude mcp add sqlite-mcp npx @modelcontextprotocol/server-sqlite
claude mcp add filesystem-mcp npx @modelcontextprotocol/server-filesystem
claude mcp add web-search-mcp npx @modelcontextprotocol/server-web-search
claude mcp add npm-mcp npx @modelcontextprotocol/server-npm
```

## Included Features

### Custom Slash Commands
- `/analyze-ticket` - Ticket analysis and implementation planning
- `/debug-issue` - Production issue investigation
- `/code-review` - Code quality review
- `/refactor-plan` - Safe refactoring strategies
- `/api-design` - API design review
- `/performance-audit` - Performance analysis
- `/security-review` - Security assessment
- `/dependency-audit` - Dependency analysis

### Security Settings
- Comprehensive file protection for .env, keys, secrets
- Safe development tool permissions
- Blocked destructive operations

## Updating

To sync changes across devices:
```bash
cd ~/.claude-shared-config && git pull
```