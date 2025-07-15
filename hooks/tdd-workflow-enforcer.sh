#!/bin/bash

# TDD Workflow Enforcer Hook
# Shows TDD workflow reminders when using /tdd command

# Read JSON input from stdin
input=$(cat)

# Extract session_id and tool_name using grep/sed (avoid jq issues)
session_id=$(echo "$input" | grep -o '"session_id":"[^"]*"' | cut -d'"' -f4)
tool_name=$(echo "$input" | grep -o '"tool_name":"[^"]*"' | cut -d'"' -f4)

# Fallback if parsing fails
if [ -z "$session_id" ]; then
    session_id="fallback-$(date +%s)"
fi
if [ -z "$tool_name" ]; then
    tool_name=""
fi

# Counter and reminder file paths
counter_file="/tmp/claude-tdd-counter-${session_id}"
last_reminder_file="/tmp/claude-tdd-last-reminder-${session_id}"

# Read current counter or start at 0
if [ -f "$counter_file" ]; then
    counter=$(cat "$counter_file")
else
    counter=0
fi

# Increment counter
counter=$((counter + 1))

# Save updated counter
echo "$counter" > "$counter_file"

# TDD workflow file path
workflow_file="$HOME/.claude/docs/tdd_workflow.md"

# Check when we last showed a reminder
last_reminder=0
if [ -f "$last_reminder_file" ]; then
    last_reminder=$(cat "$last_reminder_file")
fi

# Calculate tools since last reminder
tools_since_reminder=$((counter - last_reminder))

# Show reminder if:
# - This is a Write/Edit tool call
# - AND (first time OR 20+ tools since last reminder)
if { [ "$tool_name" = "Write" ] || [ "$tool_name" = "Edit" ] || [ "$tool_name" = "MultiEdit" ]; } && \
   { [ "$last_reminder" -eq 0 ] || [ "$tools_since_reminder" -ge 20 ]; }; then

    if [ -f "$workflow_file" ]; then
        echo "🔄 TDD WORKFLOW REMINDER (Tool #$counter) - MANDATORY REVIEW:" >&2
        echo "=========================================================" >&2
        echo "" >&2
        cat "$workflow_file" >&2
        echo "" >&2

        # Record when we showed this reminder
        echo "$counter" > "$last_reminder_file"
        
        echo "Continue with task after reviewing the TDD workflow" >&2

        # Exit code 2 blocks the tool and feeds stderr back to Claude
        exit 2
    fi
fi

# Normal execution - don't block
exit 0