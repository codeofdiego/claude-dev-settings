# Lean Development Workflow with Code Review
**⚠️ MANDATORY: Follow this workflow for EVERY piece of code. This workflow SHOULD NOT under any circumstances be compacted or summarized and must be remembered in its entirety.**

This document defines the exact steps you must follow when writing code. Each step is a checkpoint - complete it fully before moving to the next.

## 📢 Status Announcements
Always announce your progress:
- ✅ Success: `=== [STEP NAME] COMPLETE - PROCEEDING TO [NEXT STEP] ===`
- ❌ Failure: `=== [STEP NAME] FAILED - REASON: [explanation] - RETRYING ===`

## 🔄 The 5-Step Development Process

### Step 1: Requirements Analysis & Design
**What to do:**
- Analyze the requirements thoroughly
- Define expected behavior and edge cases
- Plan the implementation approach
- Document key design decisions
- Announce: `=== REQUIREMENTS ANALYZED - DESIGN COMPLETE ===`

**What NOT to do:**
- Don't start coding without clear requirements
- Don't skip edge case consideration

### Step 2: Initial Implementation
**What to do:**
- Write the implementation based on requirements
- Include error handling for edge cases
- Follow best practices and coding standards
- Use clear variable names and add comments
- Announce: `=== INITIAL IMPLEMENTATION COMPLETE ===`

**What NOT to do:**
- Don't over-engineer the solution
- Don't ignore error handling

### Step 3: Code Review
**What to do:**
- Stop coding completely
- Start new task with Code Review Agent to review the code
- Document all findings in review log
- Analyze for:
  - Logic errors
  - Edge case handling
  - Performance issues
  - Code clarity
  - Best practices adherence
- Announce: `=== CODE REVIEW COMPLETE - [X] ISSUES FOUND ===`

**What NOT to do:**
- Don't skip this step
- Don't dismiss minor issues

### Step 4: Iterative Refinement
**What to do:**
- Address all review issues systematically
- Follow this iteration cycle:
  1. Fix identified issues
  2. Re-run code review on changes
  3. Document how each issue was resolved
  4. Repeat until all issues addressed
- Run linters and fix style issues
- Announce: `Iteration [#]: [X/Y] issues resolved`

**What NOT to do:**
- Don't introduce new features during fixes
- Don't ignore review feedback

### Step 5: Final Review & Commit
**What to do:**
- Perform final code review
- Verify all feedback addressed
- Ensure code is clean and well-documented
- Commit with descriptive message: `feat: Implement [feature]`
- Announce: `=== IMPLEMENTATION COMPLETE - ALL REVIEWS PASSED ===`

## 📊 Review Log Template
```
=== REVIEW CYCLE [#] ===
Component: [name]
Review Type: [initial/iteration/final]
Issues Found:
- 🔴 Critical: [count]
- 🟡 Major: [count]
- 🟢 Minor: [count]

Edge Case Analysis:
- [ ] All edge cases identified and handled
- [ ] Error handling comprehensive
- [ ] No hardcoded values where variables needed

Code Quality:
- [ ] Clear variable/function names
- [ ] Proper documentation/comments
- [ ] DRY principles applied
- [ ] Performance optimized

Resolutions:
1. [Issue] -> [How fixed] -> [Verified by review]
===
```

## Code Review Agent
@docs/guidelines/code_review_agent.md

## ✅ Definition of Done
A task is complete only when ALL boxes are checked:
- [ ] Requirements fully analyzed
- [ ] Implementation covers all requirements
- [ ] Code review completed
- [ ] Zero critical issues
- [ ] All major issues resolved
- [ ] Linter shows no errors/warnings
- [ ] Code is well-documented
- [ ] Edge cases handled properly
- [ ] Final review passed

## 🚀 Quick Reference
1. **Analyze** → Define requirements and design
2. **Implement** → Write initial code
3. **Review** → Use Code Review Agent
4. **Refine** → Fix issues iteratively
5. **Finalize** → Final review and commit

## NEVER DO THESE:
- Skip requirement analysis
- Ignore code review feedback
- Proceed with unresolved critical issues
- Skip the review step
- Assume edge cases don't matter
- Commit without final review

## ALWAYS DO THESE:
- Analyze requirements thoroughly
- Consider all edge cases upfront
- Use Code Review Agent for every review
- Document issue resolutions
- Iterate until quality standards met
- Keep code clean and maintainable