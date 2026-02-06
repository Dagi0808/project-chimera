# Project Chimera — OpenClaw Integration

## 1. Agent Identity
- Agent Name: Chimera
- Role: Autonomous Influencer Agent
- Capabilities:
  - Trend Analysis
  - Content Generation
  - Publishing
- Version: 0.1 (initial agent)

---

## 2. Availability Advertisement
Chimera publishes its current status to the OpenClaw network:
- **idle** → ready to accept tasks
- **busy** → currently processing tasks
- **degraded** → partially available, some skills unavailable

Availability message includes:
- Supported platforms (YouTube, TikTok, Instagram)
- Enabled skills (trend_fetcher, content_generator, safety_validator)
- Current task load (# of active tasks)

---

## 3. Task Reception
Chimera accepts tasks from other agents with the following structure:
- **task_id**: unique identifier
- **requesting_agent**: agent name who sent the task
- **task_type**: trend_analysis | content_generation | publishing
- **priority**: low | medium | high
- **expected_output_schema**: JSON schema the agent must follow

> The agent must **validate tasks** and reject anything outside allowed task_types.

---

## 4. Status Reporting
Chimera reports back to requesting agents:
- **Task accepted** → task has been received and queued
- **Task completed** → task finished successfully
- **Task failed** → task failed, include failure reason
- **Progress updates** → optional, e.g., 50% complete

---

## 5. Security & Safety Notes
- Only accept tasks from **trusted agents** (verified via agent registry)
- Never execute tasks that require bypassing safety validation
- All messages should be **signed and traceable**
