# MARGINA Vercel Deployment

This directory is the complete public deployment root. It intentionally excludes the private launch brief and internal working files.

## Supported Workflow

Install the pinned project-local CLI:

```powershell
npm.cmd install
```

Authenticate and connect the directory to a managed Vercel project:

```powershell
npm.cmd run vercel:login
npm.cmd run vercel:link
```

Create a preview deployment:

```powershell
npm.cmd run deploy:preview
```

Create a production deployment:

```powershell
npm.cmd run deploy:production
```

For CI, set `VERCEL_TOKEN`, `VERCEL_ORG_ID`, and `VERCEL_PROJECT_ID` as protected secrets and call the local CLI with `--token "$env:VERCEL_TOKEN"`. Never commit credentials.

## Anonymous Deployment

`npm.cmd run deploy:temporary` creates an anonymous temporary URL. Vercel CLI 59.13.1 does not expose a `claim` command or claim URL. To manage the site, sign in, link this same directory to a project, and redeploy it. The anonymous URL remains a separate temporary deployment.

## Canonical Site

The canonical public address used by website metadata and documents is:

`https://lyshabo.github.io/margina/`

## Removed Legacy Mechanism

The former HTTP upload helper has been removed. An HTTP response is never treated as deployment success; only a successful Vercel CLI command that returns a deployment URL completes the deployment step.
