# Test-Driven Development (TDD) Workflow

**⚠️ MANDATORY: Follow this workflow in for EVERY piece of code. This workflow SHOULD NOT under any circumstances be compacted or summarized and must be remembered in its entirety.**

This document defines the exact steps you must follow when writing code. Each step is a checkpoint - complete it fully before moving to the next.

## 📢 Status Announcements

Always announce your progress:
- ✅ Success: `=== [STEP NAME] COMPLETE - PROCEEDING TO [NEXT STEP] ===`
- ❌ Failure: `=== [STEP NAME] FAILED - REASON: [explanation] - RETRYING ===`

## 🔄 The 8-Step TDD Process

### Step 1: Write Tests First
**What to do:**
- Write comprehensive tests that define expected behavior
- Include normal cases, edge cases, and error scenarios
- Use explicit input/output pairs
- Announce: `Writing test for: [specific behavior]`

**What NOT to do:**
- Don't create mock implementations
- Don't write any production code yet

### Step 2: Verify Tests Fail
**What to do:**
- Run all tests
- Confirm they fail for the right reasons
- Document which tests fail and why
- Announce: `=== ALL TESTS FAILING AS EXPECTED - READY FOR TEST COMMIT ===`

**What NOT to do:**
- Don't write implementation code
- Don't proceed if tests pass (this means bad tests)

### Step 3: Commit Tests Only
**What to do:**
- Commit tests with message: `test: Add tests for [feature]`
- Consider tests as locked specification

**What NOT to do:**
- Don't include any implementation code

### Step 4: Write Implementation
**What to do:**
- Write minimal code to pass tests
- Follow this iteration cycle:
  1. Write/modify code
  2. Run tests
  3. Analyze failures
  4. Fix implementation (NOT tests)
  5. Repeat until all pass
- Announce: `Iteration [#]: [X/Y] tests passing`

**What NOT to do:**
- Never modify the tests - they are the spec!

### Step 5: Quality Review
**What to do:**
- Stop coding completely
- Start new task with  Code Review Super Star Agent to review the code
- Document findings in review log

### Step 6: Fix Review Issues
**What to do:**
- Address all quality issues found
- Re-run tests after each fix
- Document how you resolved each issue

**What NOT to do:**
- Don't modify original tests

### Step 7: Refactor
**What to do:**
- Improve code clarity and readability
- Optimize performance if needed
- Apply DRY principles
- Run tests after each change
- Run linters and fix style issues

### Step 8: Final Commit
**What to do:**
- Perform final review
- Verify all feedback addressed
- Commit with: `feat: Implement [feature]`

## 📊 Review Log Template

```
=== REVIEW CYCLE [#] ===
Component: [name]
Review Type: [checkpoint/overfitting-check/final]
Tests Status: [X/Y passing]

Issues Found:
- 🔴 Critical: [count]
- 🟡 Major: [count]
- 🟢 Minor: [count]

Overfitting Check:
- [ ] Handles cases beyond test inputs
- [ ] No hardcoded test-specific values
- [ ] Edge cases properly handled

Resolutions:
1. [Issue] -> [How fixed] -> [Verified by]
===
```

## Code Review agent
@docs/guidelines/code_review_agent.md

## ✅ Definition of Done

A task is complete only when ALL boxes are checked:
- [ ] Tests written before implementation
- [ ] Tests confirmed to fail initially
- [ ] All tests pass with implementation
- [ ] Linter shows no errors/warnings
- [ ] Zero critical review issues
- [ ] No overfitting confirmed
- [ ] Major issues resolved
- [ ] Documentation updated
- [ ] Separate commits for tests and implementation

## NEVER DO THESE:
- Create mock implementations in tests
- Write implementation before tests
- Modify committed tests
- Skip the "tests must fail" step
- Proceed when tests wrongly pass
- Skip workflow steps
- Continue past failures
- Assume library APIs

## ALWAYS DO THESE:
- Write tests first with clear I/O pairs
- Confirm tests fail before implementing
- Make separate commits for tests/implementation
- Iterate until ALL tests pass
- Check for overfitting
- Use review agents for verification