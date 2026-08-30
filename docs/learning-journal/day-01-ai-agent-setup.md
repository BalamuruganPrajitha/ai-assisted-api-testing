# Day 01 – AI Agent Fundamentals & Project Setup

**Date:** 30-Aug-2026  
**Project:** AI-Assisted API Testing  
**Learning Module:** AI Agent Fundamentals and Environment Setup

---

## 1. Objective

The goal of Day 1 was to understand how AI coding agents can be used
effectively in QA automation and prepare the development environment for
building an AI-assisted API testing framework.

The focus was not on immediately generating code.

Instead, the goal was to understand a controlled AI workflow:

Requirement
    ↓
AI Analysis
    ↓
Human Review
    ↓
Approval
    ↓
AI Implementation
    ↓
Test Execution
    ↓
Human Validation

---

## 2. What I Learned

### ChatGPT vs Codex

ChatGPT can be used for:

- Understanding requirements
- QA strategy
- Test scenario design
- Architecture discussions
- Learning and troubleshooting
- Reviewing AI-generated solutions

Codex can work directly with a code repository and help with:

- Repository analysis
- Code generation
- File modification
- Running commands
- Running tests
- Debugging
- Refactoring

The important lesson is that an AI coding agent should not be allowed
to make uncontrolled changes.

---

## 3. AI Agent Working Principle

Instead of giving a broad instruction such as:

> "Build an API automation framework."

A better approach is:

> "Analyze the repository first. Do not modify anything.
> Recommend an architecture and explain your approach."

Then review the recommendation before allowing implementation.

### Recommended workflow

1. Understand the requirement
2. Ask AI to analyze
3. Review the AI recommendation
4. Identify assumptions or risks
5. Approve a small implementation
6. Let AI implement
7. Execute tests
8. Review the result
9. Commit only validated changes

This makes AI an assistant rather than the decision maker.

---

## 4. Project Created

GitHub repository:

`ai-assisted-api-testing`

Purpose:

Build a portfolio-quality API automation framework using AI-assisted
test design and development.

Planned technologies:

- Java
- Maven
- Karate
- JUnit 5
- Git
- GitHub
- GitHub Actions
- ChatGPT
- Codex

---

## 5. Development Environment

Environment verified successfully:

- Git 2.53.0
- Java 21
- Maven 3.9.x
- VS Code
- macOS
- GitHub repository
- OpenAI Codex VS Code extension

---

## 6. Commands Learned / Used

Check Git:

    git --version

Clone repository:

    git clone <repository-url>

Check repository status:

    git status

Check Java:

    java -version

Check Maven:

    mvn -version

Open current repository in VS Code:

    code .

---

## 7. VS Code Setup

The `code` command was initially unavailable in the terminal.

It was enabled using:

VS Code
→ Command Palette
→ Shell Command: Install 'code' command in PATH

After that:

    code .

successfully opened the repository in VS Code.

---

## 8. Codex Setup

Installed/verified the official:

**Codex – OpenAI's coding agent**

VS Code extension.

Codex can:

- Navigate the repository
- Understand files
- Modify code
- Run terminal commands
- Execute tests
- Assist with debugging
- Work on larger coding tasks

For the first exercise, Codex was deliberately given
**analysis-only instructions**.

It was told:

- Do not create files
- Do not modify files
- Do not install anything
- Do not commit
- Do not push

This demonstrated how an AI agent can be given clear operational boundaries.

---

## 9. First Codex Exercise

Codex was asked to analyze the empty repository and recommend an
architecture for:

- Java 21
- Maven
- Karate
- JUnit
- GitHub Actions

Codex recommended:

- Single Maven module
- `src/test/java`
- `src/test/resources`
- Domain-based Karate feature organization
- JUnit 5 runners
- `karate.env` for environment handling
- Environment variables for secrets
- Karate tags for test selection
- GitHub Actions for CI
- Built-in Karate reporting

---

## 10. Architecture Lesson

Avoid creating unnecessary framework complexity before it is needed.

Instead of creating many folders and abstractions immediately, start
with a small working structure:

    ai-assisted-api-testing/
    │
    ├── src/
    │   └── test/
    │       ├── java/
    │       │   └── com/portfolio/apitesting/
    │       │       └── ApiTestRunner.java
    │       │
    │       └── resources/
    │           ├── karate-config.js
    │           └── features/
    │               └── users/
    │                   └── users.feature
    │
    ├── docs/
    ├── .gitignore
    ├── pom.xml
    └── README.md

Additional folders such as:

- data/
- schemas/
- common/
- support/

should be introduced when there is a real requirement for them.

---

## 11. Important QA + AI Lesson

### Never allow the current API response to automatically become the expected result.

For example:

Requirement:

    Minimum allowed age = 18

Suppose the API incorrectly accepts:

    age = 15

If AI observes this response and automatically generates an assertion
based on the observed behavior, the defect could accidentally become
the expected behavior.

Correct approach:

    Requirement
        ↓
    Expected Behavior
        ↓
    Test Design
        ↓
    Execute API
        ↓
    Actual Result
        ↓
    Compare Expected vs Actual

AI can help generate tests, but the QA engineer must validate the
expected behavior.

---

## 12. AI Safety Rules Learned

When using coding agents:

1. Never provide production credentials unnecessarily.
2. Never commit passwords, tokens, or secrets.
3. Do not allow AI to make unrelated repository changes.
4. Ask the agent to explain assumptions.
5. Prefer small, reviewable changes.
6. Review generated assertions carefully.
7. Do not blindly trust AI-generated expected results.
8. Run tests after AI-generated code changes.
9. Review changes before committing.
10. Human QA remains responsible for final validation.

---

## 13. Day 1 Key Takeaway

AI does not replace QA engineering knowledge.

The effective model is:

    QA Engineer
         +
    AI Agent
         =
    Faster QA Engineering

The QA engineer provides:

- Requirement understanding
- Business knowledge
- Test strategy
- Expected behavior
- Risk analysis
- Final validation

The AI agent helps with:

- Analysis
- Repetitive coding
- Test generation
- Refactoring
- Debugging
- Documentation

---

## 14. Completed Today

- [x] Created GitHub repository
- [x] Configured repository as public
- [x] Added README
- [x] Added Java `.gitignore`
- [x] Cloned repository locally
- [x] Verified Git
- [x] Verified Java 21
- [x] Verified Maven
- [x] Configured VS Code `code` command
- [x] Installed/verified official Codex extension
- [x] Connected Codex
- [x] Performed first read-only repository analysis
- [x] Reviewed AI-recommended framework architecture
- [x] Learned controlled AI-agent workflow

---

## 15. Next Learning Module

### Module 2 – First AI-Assisted Karate API Test

Next steps:

1. Select a safe public API
2. Understand the API requirement manually
3. Identify positive and negative scenarios
4. Create minimal Maven + Karate framework
5. Ask Codex to implement a small controlled change
6. Review Codex-generated code
7. Execute the first Karate test
8. Analyze the report
9. Commit the validated implementation

---

## Day 1 Status

**Status: COMPLETED**

Main lesson:

> Use AI agents to accelerate engineering work, but keep
> requirements, expected behavior, review, and final validation
> under human control.