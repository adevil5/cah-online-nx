# Nx Tips & Commands Reference

Complete guide to using Nx 21+ for the CAH Online monorepo.

---

## Table of Contents

1. [What is Nx?](#what-is-nx)
2. [Essential Commands](#essential-commands)
3. [Project Management](#project-management)
4. [Building & Serving](#building--serving)
5. [Testing](#testing)
6. [Linting & Formatting](#linting--formatting)
7. [Dependency Graph](#dependency-graph)
8. [Caching & Performance](#caching--performance)
9. [Generators](#generators)
10. [Migration & Updates](#migration--updates)
11. [Best Practices](#best-practices)
12. [Troubleshooting](#troubleshooting)

---

## What is Nx?

Nx is a smart, fast, and extensible build system with:

- **Monorepo Management**: Manage multiple apps and libraries in one repo
- **Computation Caching**: Cache build results locally and remotely
- **Smart Rebuilds**: Only rebuild what changed
- **Task Orchestration**: Run tasks in optimal order
- **Code Generators**: Scaffold new code with schematics
- **Migration Tools**: Automated upgrades for dependencies

### Why Nx for CAH?

- ✅ Share code between frontend and future libs
- ✅ Fast builds with caching
- ✅ Better dev experience with IDE integration
- ✅ Easy to add new apps/libs later
- ✅ Built-in Angular support

---

## Essential Commands

### Check Nx Version

```bash
# Check installed version
npx nx --version

# Or with package.json script
npm run nx -- --version
```

### Get Help

```bash
# General help
npx nx help

# Command-specific help
npx nx help serve
npx nx help build
npx nx help generate
```

### Run Commands

```bash
# Pattern: nx <target> <project> [options]

# Serve frontend
npx nx serve frontend

# Build frontend
npx nx build frontend

# Test frontend
npx nx test frontend

# Lint frontend
npx nx lint frontend
```

### Run Multiple Targets

```bash
# Run target for all projects
npx nx run-many --target=build --all

# Run for specific projects
npx nx run-many --target=test --projects=frontend,util-type-helpers

# Run multiple targets
npx nx run-many --target=lint,test --all
```

### Affected Commands

Only run tasks on projects affected by changes:

```bash
# Test only affected projects
npx nx affected --target=test

# Build only affected projects
npx nx affected --target=build

# Lint only affected projects
npx nx affected --target=lint

# Compare against specific branch
npx nx affected --target=test --base=main --head=HEAD
```

---

## Project Management

### List Projects

```bash
# List all projects
npx nx show projects

# List projects with details
npx nx list
```

### View Project Details

```bash
# Show project configuration
npx nx show project frontend

# Show project graph
npx nx graph

# Show project graph for specific project
npx nx graph --focus=frontend
```

### Generate New Project

#### Angular Application

```bash
# Generate new Angular app
npx nx g @nx/angular:application my-app

# With options
npx nx g @nx/angular:application my-app \
  --style=css \
  --routing=true \
  --standalone=true
```

#### Library

```bash
# Generate shared library
npx nx g @nx/angular:library shared-ui

# Generate TypeScript library
npx nx g @nx/js:library shared-utils
```

#### Remove Project

```bash
# Remove project (interactive)
npx nx g @nx/workspace:remove my-app

# Force remove
npx nx g @nx/workspace:remove my-app --forceRemove
```

---

## Building & Serving

### Serve Application

```bash
# Serve with default configuration
npx nx serve frontend

# Serve with specific configuration
npx nx serve frontend --configuration=production

# Serve with specific port
npx nx serve frontend --port=4300

# Serve with open browser
npx nx serve frontend --open

# Serve with proxy
npx nx serve frontend --proxy-config=proxy.conf.json
```

### Build Application

```bash
# Development build
npx nx build frontend

# Production build
npx nx build frontend --configuration=production

# Build with specific output path
npx nx build frontend --outputPath=dist/custom

# Build with optimization
npx nx build frontend --optimization=true

# Build with source maps
npx nx build frontend --sourceMap=true
```

### Watch Mode

```bash
# Watch and rebuild on changes
npx nx build frontend --watch

# Watch tests
npx nx test frontend --watch
```

---

## Testing

### Unit Tests (Jest)

```bash
# Run all tests
npx nx test frontend

# Run tests in watch mode
npx nx test frontend --watch

# Run tests with coverage
npx nx test frontend --coverage

# Run specific test file
npx nx test frontend --testFile=app.component.spec.ts

# Run tests matching pattern
npx nx test frontend --testNamePattern="should create"

# Run tests in CI mode (no watch)
npx nx test frontend --ci
```

### E2E Tests (Playwright)

```bash
# Run E2E tests
npx nx e2e frontend-e2e

# Run in headed mode (show browser)
npx nx e2e frontend-e2e --headed

# Run specific browser
npx nx e2e frontend-e2e --browser=chromium
npx nx e2e frontend-e2e --browser=firefox

# Debug mode
npx nx e2e frontend-e2e --debug

# Update snapshots
npx nx e2e frontend-e2e --update-snapshots
```

### Test All Projects

```bash
# Test everything
npx nx run-many --target=test --all

# Test with coverage
npx nx run-many --target=test --all --coverage

# Test only affected
npx nx affected --target=test
```

---

## Linting & Formatting

### ESLint

```bash
# Lint project
npx nx lint frontend

# Lint with fix
npx nx lint frontend --fix

# Lint all projects
npx nx run-many --target=lint --all

# Lint only affected
npx nx affected --target=lint
```

### Prettier (Format)

```bash
# Format all files
npx nx format:write

# Format only affected files
npx nx format:write --uncommitted

# Check formatting (CI)
npx nx format:check
```

### Combined Lint + Format

```bash
# Run both lint and format
npx nx run-many --target=lint --all && npx nx format:write
```

---

## Dependency Graph

### Visualize Dependencies

```bash
# Open interactive graph
npx nx graph

# Focus on specific project
npx nx graph --focus=frontend

# Show affected projects
npx nx affected:graph

# Export graph as JSON
npx nx graph --file=graph.json
```

### Analyze Dependencies

```bash
# List dependencies of a project
npx nx show project frontend --json | jq '.dependencies'

# Check circular dependencies
npx nx graph --file=graph.json
# Then manually inspect graph.json
```

---

## Caching & Performance

### Cache Management

```bash
# Clear cache
npx nx reset

# View cache info
npx nx show cache

# Disable cache for single run
npx nx build frontend --skip-nx-cache
```

### Parallel Execution

```bash
# Run with specific parallel limit
npx nx run-many --target=test --all --parallel=3

# Use all CPU cores
npx nx run-many --target=build --all --maxParallel=999
```

### Remote Caching (Nx Cloud)

```bash
# Connect to Nx Cloud (optional, for teams)
npx nx connect-to-nx-cloud

# For free tier: Just say yes to prompt during first build
# Nx will create a free workspace for you
```

---

## Generators

### Component Generator

```bash
# Generate Angular component
npx nx g @nx/angular:component my-component --project=frontend

# Generate standalone component
npx nx g @nx/angular:component my-component \
  --project=frontend \
  --standalone=true

# Generate component in specific path
npx nx g @nx/angular:component components/my-component \
  --project=frontend \
  --flat=false

# Skip tests
npx nx g @nx/angular:component my-component \
  --project=frontend \
  --skipTests=true
```

### Service Generator

```bash
# Generate service
npx nx g @nx/angular:service services/my-service --project=frontend

# With barrel export
npx nx g @nx/angular:service services/my-service \
  --project=frontend \
  --export=true
```

### Other Generators

```bash
# Pipe
npx nx g @nx/angular:pipe pipes/my-pipe --project=frontend

# Guard
npx nx g @nx/angular:guard guards/auth --project=frontend

# Directive
npx nx g @nx/angular:directive directives/highlight --project=frontend

# Interface
npx nx g @nx/angular:interface models/user --project=frontend

# Enum
npx nx g @nx/angular:enum enums/status --project=frontend
```

### List Available Generators

```bash
# List all generators for Angular
npx nx list @nx/angular

# Show generator options
npx nx g @nx/angular:component --help
```

### Dry Run

Preview changes without writing files:

```bash
npx nx g @nx/angular:component my-component \
  --project=frontend \
  --dry-run
```

---

## Migration & Updates

### Check for Updates

```bash
# Check what can be updated
npx nx migrate latest

# Check interactive
npx nx migrate latest --interactive

# Check for specific package
npx nx migrate @nx/angular@latest
```

### Run Migrations

```bash
# Step 1: Create migration file
npx nx migrate latest
# This creates migrations.json

# Step 2: Install updated packages
npm install

# Step 3: Run migrations
npx nx migrate --run-migrations

# Step 4: Clean up
rm migrations.json
```

### Migrate from Older Nx Version

```bash
# From Nx 17 to Nx 21
npx nx migrate 21.6.4

# Run migrations
npm install
npx nx migrate --run-migrations

# Check for issues
npx nx build frontend
npx nx test frontend
```

### Update Specific Package

```bash
# Update Angular only
npx nx migrate @angular/core@20.3.4

# Update and run
npm install
npx nx migrate --run-migrations
```

---

## Best Practices

### 1. Use Nx Console (VSCode Extension)

Install Nx Console for visual interface:
- Generate components with UI
- Run tasks with buttons
- View project graph
- Explore available commands

**Install**: Search "Nx Console" in VSCode extensions.

### 2. Create NPM Scripts

Add to `package.json`:

```json
{
  "scripts": {
    "dev": "nx serve frontend",
    "build": "nx build frontend --configuration=production",
    "test": "nx test frontend",
    "test:all": "nx run-many --target=test --all",
    "lint": "nx run-many --target=lint --all",
    "format": "nx format:write",
    "graph": "nx graph"
  }
}
```

Then use:
```bash
npm run dev
npm run build
npm test
```

### 3. Use Task Pipelines

Define task dependencies in `nx.json`:

```json
{
  "targetDefaults": {
    "build": {
      "dependsOn": ["^build"],
      "cache": true
    },
    "test": {
      "dependsOn": ["build"],
      "cache": true
    }
  }
}
```

### 4. Organize Libraries by Scope

```
libs/
├── shared/          # Shared utilities
│   ├── ui/          # UI components
│   ├── utils/       # Helper functions
│   └── types/       # TypeScript types
├── game/            # Game domain
│   ├── state/       # Game state management
│   └── logic/       # Game logic
└── player/          # Player domain
    └── state/       # Player state
```

### 5. Use Import Restrictions

Enforce architecture with ESLint rules in `nx.json`:

```json
{
  "namedInputs": {
    "default": ["{projectRoot}/**/*"]
  },
  "targetDefaults": {
    "lint": {
      "cache": true
    }
  }
}
```

In `.eslintrc.json`:

```json
{
  "overrides": [
    {
      "files": ["*.ts"],
      "rules": {
        "@nx/enforce-module-boundaries": [
          "error",
          {
            "allow": [],
            "depConstraints": [
              {
                "sourceTag": "type:app",
                "onlyDependOnLibsWithTags": ["type:feature", "type:ui", "type:util"]
              },
              {
                "sourceTag": "type:feature",
                "onlyDependOnLibsWithTags": ["type:ui", "type:util"]
              }
            ]
          }
        ]
      }
    }
  ]
}
```

### 6. Cache Everything

Enable caching for all targets in `nx.json`:

```json
{
  "targetDefaults": {
    "build": { "cache": true },
    "test": { "cache": true },
    "lint": { "cache": true },
    "e2e": { "cache": true }
  }
}
```

---

## Troubleshooting

### Issue: "Cannot find module '@nx/...'"

**Solution**: Install missing plugin:

```bash
npm install --save-dev @nx/angular
# or
npm install --save-dev @nx/js
```

### Issue: "Nx daemon failed to start"

**Solution**: Reset Nx daemon:

```bash
npx nx reset
```

### Issue: Cache is corrupted

**Solution**: Clear cache:

```bash
npx nx reset
```

### Issue: Build fails with "Out of memory"

**Solution**: Increase Node memory:

```bash
export NODE_OPTIONS=--max_old_space_size=4096
npx nx build frontend
```

Or in `package.json`:

```json
{
  "scripts": {
    "build": "NODE_OPTIONS=--max_old_space_size=4096 nx build frontend"
  }
}
```

### Issue: Tests are slow

**Solution**: Run in parallel:

```bash
npx nx run-many --target=test --all --parallel=3
```

### Issue: Affected commands not working

**Solution**: Check git setup:

```bash
# Ensure you have commits
git log

# Ensure you're comparing to correct base
npx nx affected --target=test --base=main
```

---

## Nx Configuration Files

### `nx.json`

Workspace configuration:

```json
{
  "$schema": "./node_modules/nx/schemas/nx-schema.json",
  "defaultBase": "main",
  "namedInputs": {
    "default": ["{projectRoot}/**/*"],
    "production": ["!{projectRoot}/**/*.spec.ts"]
  },
  "targetDefaults": {
    "build": {
      "cache": true,
      "dependsOn": ["^build"]
    },
    "test": {
      "cache": true
    }
  },
  "tasksRunnerOptions": {
    "default": {
      "runner": "nx/tasks-runners/default",
      "options": {
        "cacheableOperations": ["build", "test", "lint"]
      }
    }
  }
}
```

### `project.json`

Project-specific configuration:

```json
{
  "name": "frontend",
  "sourceRoot": "apps/frontend/src",
  "projectType": "application",
  "targets": {
    "build": {
      "executor": "@angular-devkit/build-angular:browser",
      "options": {
        "outputPath": "dist/apps/frontend",
        "index": "apps/frontend/src/index.html",
        "main": "apps/frontend/src/main.ts"
      }
    },
    "serve": {
      "executor": "@angular-devkit/build-angular:dev-server",
      "options": {
        "buildTarget": "frontend:build"
      }
    },
    "test": {
      "executor": "@nx/jest:jest",
      "options": {
        "jestConfig": "apps/frontend/jest.config.ts"
      }
    }
  }
}
```

### `workspace.json` (Legacy)

Older Nx versions use `workspace.json`. Nx 21 uses `project.json` files instead.

---

## Useful Aliases

Add to `.bashrc` or `.zshrc`:

```bash
# Nx shortcuts
alias nxs='npx nx serve frontend'
alias nxb='npx nx build frontend'
alias nxt='npx nx test frontend'
alias nxl='npx nx lint frontend'
alias nxg='npx nx graph'
alias nxr='npx nx reset'

# Run all
alias nxta='npx nx run-many --target=test --all'
alias nxla='npx nx run-many --target=lint --all'

# Affected
alias nxat='npx nx affected --target=test'
alias nxab='npx nx affected --target=build'
```

---

## Nx Workspace Scripts

Add these to `package.json` for common tasks:

```json
{
  "scripts": {
    "dev": "nx serve frontend",
    "build": "nx build frontend --configuration=production",
    "build:all": "nx run-many --target=build --all",
    "test": "nx test frontend",
    "test:all": "nx run-many --target=test --all",
    "test:affected": "nx affected --target=test",
    "test:watch": "nx test frontend --watch",
    "test:coverage": "nx test frontend --coverage",
    "lint": "nx run-many --target=lint --all",
    "lint:fix": "nx run-many --target=lint --all --fix",
    "format": "nx format:write",
    "format:check": "nx format:check",
    "graph": "nx graph",
    "reset": "nx reset",
    "migrate": "nx migrate latest",
    "affected": "nx affected:graph"
  }
}
```

---

## Performance Tips

### 1. Use Remote Caching

Free with Nx Cloud:
```bash
npx nx connect-to-nx-cloud
```

### 2. Enable Parallel Execution

In `nx.json`:
```json
{
  "tasksRunnerOptions": {
    "default": {
      "runner": "nx/tasks-runners/default",
      "options": {
        "parallel": 3
      }
    }
  }
}
```

### 3. Use Production Configuration

```bash
nx build frontend --configuration=production
```

This enables:
- AOT compilation
- Tree shaking
- Minification
- Dead code elimination

### 4. Skip Unnecessary Tasks

```bash
# Skip cache
nx build frontend --skip-nx-cache

# Skip tests during build
nx build frontend --skip-tests
```

---

## Quick Reference Card

| Task | Command |
|------|---------|
| **Serve** | `nx serve frontend` |
| **Build** | `nx build frontend` |
| **Test** | `nx test frontend` |
| **Lint** | `nx lint frontend` |
| **E2E** | `nx e2e frontend-e2e` |
| **Format** | `nx format:write` |
| **Graph** | `nx graph` |
| **Reset Cache** | `nx reset` |
| **Test All** | `nx run-many --target=test --all` |
| **Test Affected** | `nx affected --target=test` |
| **Generate Component** | `nx g @nx/angular:component my-component --project=frontend` |
| **Generate Library** | `nx g @nx/angular:library my-lib` |
| **List Projects** | `nx show projects` |
| **Migrate** | `nx migrate latest && npm install && nx migrate --run-migrations` |

---

## Resources

- [Nx Documentation](https://nx.dev)
- [Nx Angular Guide](https://nx.dev/nx-api/angular)
- [Nx Console Extension](https://marketplace.visualstudio.com/items?itemName=nrwl.angular-console)
- [Nx Cloud](https://nx.app)
- [Nx Examples](https://github.com/nrwl/nx-examples)
- [Nx YouTube Channel](https://www.youtube.com/@nxdevtools)

---

**Last Updated**: 2025-10-20
**Nx Version**: 21.6.4
**Angular Version**: 20.3.4
