# Tooling Strategy for Project Chimera

## Developer MCPs

### git-mcp
**Purpose:** Manage source control and version history.  
**Why:** Ensures traceability of changes and alignment with project specifications.

### filesystem-mcp
**Purpose:** Abstract file operations for skills and data.  
**Why:** Provides safe access to files, prevents arbitrary modifications.  
**Example:** Using a fake CSV file to test file read/write operations safely:

```csv
id,name,skill
1,AgentAlpha,Analysis
2,AgentBeta,Reporting
3,AgentGamma,Monitoring
