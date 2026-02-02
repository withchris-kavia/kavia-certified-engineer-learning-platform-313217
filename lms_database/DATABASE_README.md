# LMS Database Schema Documentation

## Overview
This PostgreSQL database stores all data for the Kavia Certified Engineer Learning Management System, including courses, modules, lessons, user progress, and assessments.

## Database Connection
- **Database**: myapp
- **User**: appuser
- **Port**: 5000
- **Connection String**: `postgresql://appuser:dbuser123@localhost:5000/myapp`

## Schema Tables

### 1. roles
Stores user role definitions (learner, admin, etc.)
- `id` (SERIAL PRIMARY KEY)
- `name` (VARCHAR(50) UNIQUE NOT NULL)
- `description` (TEXT)
- `created_at` (TIMESTAMP)

### 2. users
Stores user authentication and profile data
- `id` (SERIAL PRIMARY KEY)
- `email` (VARCHAR(255) UNIQUE NOT NULL)
- `password_hash` (VARCHAR(255) NOT NULL)
- `first_name` (VARCHAR(100))
- `last_name` (VARCHAR(100))
- `role_id` (INTEGER → roles.id)
- `is_active` (BOOLEAN DEFAULT true)
- `created_at` (TIMESTAMP)
- `updated_at` (TIMESTAMP)

### 3. courses
Stores course-level information
- `id` (VARCHAR(100) PRIMARY KEY)
- `title` (VARCHAR(255) NOT NULL)
- `overview` (TEXT)
- `total_duration_minutes` (INTEGER)
- `created_at` (TIMESTAMP)
- `updated_at` (TIMESTAMP)

### 4. modules
Stores course modules with ordering and prerequisites
- `id` (VARCHAR(100) PRIMARY KEY)
- `course_id` (VARCHAR(100) → courses.id)
- `title` (VARCHAR(255) NOT NULL)
- `description` (TEXT)
- `estimated_duration_minutes` (INTEGER)
- `prerequisites` (TEXT[]) - Array of prerequisite module titles
- `display_order` (INTEGER NOT NULL)
- `created_at` (TIMESTAMP)
- `updated_at` (TIMESTAMP)

### 5. lessons
Stores individual lessons/tabs within modules **with per-lesson videoUrl**
- `id` (VARCHAR(100) PRIMARY KEY)
- `module_id` (VARCHAR(100) → modules.id)
- `title` (VARCHAR(255) NOT NULL)
- `summary` (TEXT)
- `duration_minutes` (INTEGER)
- `video_url` (TEXT) - **Per-lesson video URL from course JSON**
- `display_order` (INTEGER NOT NULL)
- `created_at` (TIMESTAMP)
- `updated_at` (TIMESTAMP)

### 6. enrollments
Tracks user enrollments in courses
- `id` (SERIAL PRIMARY KEY)
- `user_id` (INTEGER → users.id)
- `course_id` (VARCHAR(100) → courses.id)
- `enrolled_at` (TIMESTAMP)
- `completed_at` (TIMESTAMP)
- `status` (VARCHAR(20) DEFAULT 'active')
- UNIQUE(user_id, course_id)

### 7. progress
Tracks user progress on individual lessons
- `id` (SERIAL PRIMARY KEY)
- `user_id` (INTEGER → users.id)
- `lesson_id` (VARCHAR(100) → lessons.id)
- `completed` (BOOLEAN DEFAULT false)
- `completed_at` (TIMESTAMP)
- `last_accessed_at` (TIMESTAMP)
- UNIQUE(user_id, lesson_id)

### 8. assessments
Stores assessment questions for modules
- `id` (SERIAL PRIMARY KEY)
- `module_id` (VARCHAR(100) → modules.id)
- `question_type` (VARCHAR(50) NOT NULL) - 'short_answer' or 'multiple_choice'
- `question_text` (TEXT NOT NULL)
- `choices` (TEXT[]) - Array of choices for multiple choice, NULL for short answer
- `correct_answer` (TEXT NOT NULL)
- `display_order` (INTEGER NOT NULL)
- `created_at` (TIMESTAMP)

### 9. assessment_responses
Stores user responses to assessments
- `id` (SERIAL PRIMARY KEY)
- `user_id` (INTEGER → users.id)
- `assessment_id` (INTEGER → assessments.id)
- `response` (TEXT NOT NULL)
- `is_correct` (BOOLEAN)
- `submitted_at` (TIMESTAMP)

### 10. module_key_terms
Stores key terms/vocabulary for each module
- `id` (SERIAL PRIMARY KEY)
- `module_id` (VARCHAR(100) → modules.id)
- `term` (VARCHAR(100) NOT NULL)
- `created_at` (TIMESTAMP)

### 11. module_resources
Stores resource links for each module
- `id` (SERIAL PRIMARY KEY)
- `module_id` (VARCHAR(100) → modules.id)
- `title` (VARCHAR(255) NOT NULL)
- `url` (TEXT NOT NULL)
- `created_at` (TIMESTAMP)

## Seed Data

The database has been seeded with:
- **1 Course**: "Kavia Certified Engineer: Foundations and Workflows"
- **10 Modules**: From "What Kavia is" through "Manifest Generation - Use case 3"
- **30 Lessons**: 3 lessons per module, each with individual videoUrl
- **2 Roles**: learner and admin
- **Key Terms**: 54 terms across all modules
- **Resources**: 10 resource links for modules
- **Assessments**: 21 assessment questions across modules

## Video URLs
All lessons currently use the sample video URL:
`https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4`

This can be updated per-lesson in the `lessons.video_url` field.

## Querying Examples

### Get all modules for a course in order:
```sql
SELECT * FROM modules 
WHERE course_id = 'kavia-certified-engineer-foundations-and-workflows' 
ORDER BY display_order;
```

### Get all lessons for a module with video URLs:
```sql
SELECT id, title, summary, duration_minutes, video_url, display_order
FROM lessons 
WHERE module_id = 'what-kavia-is' 
ORDER BY display_order;
```

### Get user progress for a specific course:
```sql
SELECT l.title, l.video_url, p.completed, p.completed_at
FROM progress p
JOIN lessons l ON p.lesson_id = l.id
JOIN modules m ON l.module_id = m.id
WHERE p.user_id = 1 
  AND m.course_id = 'kavia-certified-engineer-foundations-and-workflows'
ORDER BY m.display_order, l.display_order;
```

### Get assessments for a module:
```sql
SELECT * FROM assessments 
WHERE module_id = 'what-kavia-is' 
ORDER BY display_order;
```

## Additional Seed Scripts

Two SQL files are provided for completing the seed data:
1. `seed_remaining_data.sql` - Contains remaining lessons, key terms, and resources
2. `seed_assessments.sql` - Contains all assessment questions

Execute these using:
```bash
psql postgresql://appuser:dbuser123@localhost:5000/myapp -f seed_remaining_data.sql
psql postgresql://appuser:dbuser123@localhost:5000/myapp -f seed_assessments.sql
```
