# TypeScript and Lint Error Fixing Guidelines

## Quick Fix Workflow

1. **Identify the error source**: TypeScript compiler (`tsc`) or linter (ESLint, Prettier)
2. **Run checks**: `npm run type-check` or `npx tsc --noEmit` for TS, `npm run lint` for linting
3. **Fix systematically**: Address errors by priority (type errors first, then linting)
4. **Verify fixes**: Re-run checks after each batch of fixes

## Project Discovery and Error Verification

### 1. Understand Project Configuration
```bash
# Check TypeScript configuration
cat tsconfig.json

# Verify project structure and dependencies
cat package.json

# Check for linting configuration
cat .eslintrc.js || cat .eslintrc.json || cat eslint.config.js
```

### 2. Run TypeScript Compiler Check
```bash
# Primary verification tool - shows all TS errors
npx tsc --noEmit

# Alternative: use project's type-check script if available
npm run type-check || npm run tsc
```

### 3. Analyze Error Output
TypeScript errors follow this format:
```
src/component.ts(15,7): error TS2322: Type 'string' is not assignable to type 'number'.
```

**Parse the error:**
- `src/component.ts(15,7)`: File and location (line 15, column 7)
- `TS2322`: Error code for specific type of issue
- Description: What's wrong and expected vs actual types

### 4. Common Error Categories to Look For
- **Type mismatches**: `TS2322`, `TS2345` - Variable/parameter type conflicts
- **Missing declarations**: `TS7016`, `TS2307` - Module or type definition issues  
- **Property errors**: `TS2339`, `TS2551` - Accessing non-existent properties
- **Function signature**: `TS2554`, `TS2556` - Argument count/type mismatches

### 5. Project-Specific Strictness Levels
Check `tsconfig.json` for strictness settings that affect error types:
```json
{
  "compilerOptions": {
    "strict": true,           // Enables all strict checking
    "noImplicitAny": true,    // Requires explicit types
    "strictNullChecks": true, // Strict null/undefined handling
    "noImplicitReturns": true // Requires return statements
  }
}
```

## Common Lint Errors

### ESLint Fixes

**Unused variables:**
```typescript
// Error: 'unusedVar' is defined but never used
const unusedVar = 'test'; // ❌
```
- Remove unused code
- Prefix with underscore: `_unusedVar`
- Add eslint-disable comment: `// eslint-disable-line @typescript-eslint/no-unused-vars`

**Missing dependencies:**
```typescript
// Error: React Hook useEffect has missing dependency
useEffect(() => {
  fetchData(id);
}, []); // ❌ missing 'id' in dependency array
```
- Add missing dependencies: `[id]`
- Use ESLint auto-fix: `npm run lint -- --fix`

### Prettier Formatting
```bash
# Auto-fix formatting issues
npm run format
# or
npx prettier --write .
```

## Priority Order for Fixes

1. **Type errors** (prevent compilation)
2. **Import/export errors** (module resolution)
3. **ESLint errors** (code quality)
4. **ESLint warnings** (style/best practices)
5. **Prettier formatting** (code style)

## Automated Fixing Commands

```bash
# TypeScript check
npx tsc --noEmit

# ESLint auto-fix
npx eslint . --fix

# Prettier format
npx prettier --write .

# Combined fix (if scripts exist)
npm run lint:fix && npm run format
```

## Emergency Fixes

When facing many errors, use these temporary solutions:

```typescript
// Suppress TypeScript errors (use sparingly)
// @ts-ignore
// @ts-expect-error

// Suppress ESLint errors
/* eslint-disable */
// eslint-disable-next-line rule-name
```

**Remember:** These are temporary solutions. Always plan to fix properly later.

## Project-Specific Commands

Before fixing errors, check these common script names in `package.json`:
- `npm run type-check` or `npm run tsc`
- `npm run lint` or `npm run eslint`
- `npm run lint:fix`
- `npm run format` or `npm run prettier`
- `npm run build` (often includes type checking)