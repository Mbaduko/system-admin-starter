# setup_environment.sh
Bash script that prepares a project skeleton: 3 directories (`logs`, `configs`, `scripts`) and 3 files inside them. Idempotent — existing items are skipped, missing ones are created, then it prints a summary (`tree` + `ls -lR`).

Run: `bash setup_environment.sh`

## Cases

### 1. First run (nothing exists)
No directories or files present. Script created `logs/`, `configs/`, `scripts/` and all 3 files with their default permissions, then printed the `Results` listing.

![Nothing exists](./screeshots/image.png)

### 2. Some directories exist, some missing
`logs/` and `scripts/` already existed, `configs/` was missing. Script skipped the existing ones (`Directory already exists: logs`, `Directory already exists: scripts`) and created `configs/` silently.

![Some exists](./screeshots/image1.png)

### 3. Directories exist, files missing
All 3 directories present but their files were deleted. Script recreated `logs/system.log`, `configs/app.conf`, and `scripts/backup.sh` with permissions `644`, `444`, `755`, no "already exists" messages for files.

![Files missing](./screeshots/image2.png)

