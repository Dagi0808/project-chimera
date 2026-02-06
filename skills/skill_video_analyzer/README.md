# Skill: Video Analyzer

## Purpose
Analyze video content for engagement metrics.

## Input Schema
- video_url: string
- analysis_type: string (e.g., sentiment, keyframes)

## Output Schema
- score: float
- insights: list of strings

## Failure Modes
- Invalid URL
- Unsupported format
- Analysis timeout
