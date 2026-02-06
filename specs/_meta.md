# Project Chimera — Meta Specification

## Vision
Project Chimera is an autonomous influencer system designed to operate as an independent AI agent capable of:
- Discovering content trends
- Generating and publishing media
- Managing engagement signals
- Participating in agent-to-agent networks

The system prioritizes reliability, safety, and spec-driven behavior over rapid experimentation.

---

## Constraints
- No business logic may be implemented without an approved specification.
- All agent actions must be traceable and testable.
- Human approval is required for high-risk content categories.
- The system must be deployable in a containerized environment.
- External platform APIs are considered unreliable and must be isolated.

---

## Non-Goals
- Real-time human chat interfaces
- Manual content editing tools
- Platform-specific UI dashboards
- Viral optimization through deceptive or unsafe behavior

---

## Definition of “Done”
The project is considered “done” when:
- All agent behaviors are defined by specs
- Skills expose stable, testable interfaces
- Failing tests define all expected outputs
- CI enforces spec compliance
- An autonomous agent can build features without human clarification
