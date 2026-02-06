# Skill: Trend Fetcher

## Purpose
Fetch trending topics from social media platforms.

## Input Schema
- platform: string
- region: string (optional)
- limit: int (number of trends)

## Output Schema
- trends: list of strings
- timestamp: ISO 8601 string

## Failure Modes
- Invalid platform
- Network errors
- Rate limiting
