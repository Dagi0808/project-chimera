# Skill: Content Publisher

## Purpose
Publish content to multiple social media platforms.

## Input Schema
- content: string
- platform: string
- media: optional list of files

## Output Schema
- status: string (success/failure)
- post_id: string (if successful)

## Failure Modes
- Platform API errors
- Invalid media format
- Rate limiting
