# Project State

## Current branch
`revision/container-management`

## What was done
Full rebuild of the lab from a Grafana-based GUI/CLI split lab into a Cockpit-focused container management lab.

**Removed:** five old modules (install, GUI management, two identical Grafana validation modules, CLI management), Grafana docker.io dependency, Grafana tab in ui-config.yml.

**Added:** four new concept-first modules using `hostinfo-app` from the local registry:
- `module-01` — Cockpit orientation, image pull, pre-run inspection
- `module-02` — container lifecycle, persistent state visibility
- `module-03` — logs tab, Cockpit console (exec equivalent), details panel
- `module-04` — creation form as complete container spec (env var + volume mount)

**Updated:**
- `setup-automation/setup-rhel.sh` — now uses `setup_cockpit()` from lab-setup library (installs cockpit-podman), adds local registry + hostinfo-app mirror
- `site.yml` — new title "Managing Containers with the RHEL Web Console", updated start page
- `ui-config.yml` — four modules with clean labels, terminal + RHEL Web Console + hostinfo (port 8000) tabs

Committed as a single commit on this branch.

## What's in progress
Nothing — initial revision complete.

## What to do next
- Live review of the lab in a running environment to:
  - Verify `persist_env_var REGISTRY` sets the variable for the `rhel` user's shell (module 1 depends on `echo $REGISTRY`)
  - Confirm Cockpit image search/pull workflow with the local SSL registry
  - Review console command blocks in module 3 — currently plain `[source,bash]`, may need visual differentiation from terminal commands
  - Verify the Cockpit volume mount dialog surfaces a read-only mode option for the `os-release` mount in module 4
  - Screenshots: all four modules have no image references; screenshots to be added after live review

## Source labs (conceptual foundations)
- `../zt-podman-basics` branch `revision/podman-basics`
- `../zt-podman-deploy` branch `revision/podman-deploy`
