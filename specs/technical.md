# Project Chimera — Technical Specification
## 1. API Contracts

### Trend Fetcher Output
```json
{
  "trend_id": "string",
  "platform": "string",
  "topic": "string",
  "engagement_score": "number",
  "timestamp": "ISO-8601"
}

### Content Generation Input
{
  "trend_id": "string",
  "topic": "string",
  "constraints": {
    "platform": "string",
    "max_length": "number"
  }
}

### Content Generation Output
{
  "content_id": "string",
  "text": "string",
  "safety_score": "number",
  "status": "approved | rejected | review_required"
}
## 2. Database Schema (ERD)

```mermaid
erDiagram
    TREND {
        string trend_id
        string platform
        string topic
        float engagement_score
        datetime created_at
    }

    CONTENT {
        string content_id
        string trend_id
        string text
        string status
        float safety_score
        datetime created_at
    }

    TREND ||--o{ CONTENT : generates

### 3️⃣ Event Flow (Mermaid Sequence Diagram)

- Add closing triple backticks and fix small typos (`Validatte` → `Validate`)  

```md
```mermaid
sequenceDiagram
    Agent->>TrendService: Fetch trends
    TrendService-->>Agent: Trend data
    Agent->>ContentGenerator: Generate content
    ContentGenerator-->>Agent: Draft content
    Agent->>SafetyValidator: Validate content
    SafetyValidator-->>Agent: Safety result
    Agent->>Publisher: Publish content
