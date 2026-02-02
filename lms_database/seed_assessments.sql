-- Assessments for all modules
-- Module 1: What Kavia is
INSERT INTO assessments (module_id, question_type, question_text, choices, correct_answer, display_order) VALUES 
('what-kavia-is', 'short_answer', 'In one or two sentences, describe what Kavia is and what kind of outputs a team should expect from it.', NULL, 'Kavia is a workflow-oriented assistant that uses provided context to generate structured engineering outputs such as explanations, plans, designs, and other artifacts; teams should expect clear, usable deliverables rather than generic advice.', 1),
('what-kavia-is', 'multiple_choice', 'Which statement best describes Kavia''s role?', ARRAY['A replacement for a version control system', 'A workflow assistant that produces structured engineering artifacts from context', 'A hosted database service for storing project data', 'A CI tool that runs builds and deployments automatically'], 'A workflow assistant that produces structured engineering artifacts from context', 2);

-- Module 2: How Kavia can help you
INSERT INTO assessments (module_id, question_type, question_text, choices, correct_answer, display_order) VALUES 
('how-kavia-can-help-you', 'short_answer', 'Name two engineering activities where Kavia can help and briefly explain how.', NULL, 'Examples include architecture drafting (producing initial HLD/LLD structure from requirements) and test planning (deriving unit test cases from code behavior and edge cases), both accelerating first-pass deliverables.', 1),
('how-kavia-can-help-you', 'multiple_choice', 'What typically improves Kavia''s output quality the most?', ARRAY['Using shorter prompts with fewer details', 'Providing relevant context and desired output structure', 'Asking the same question repeatedly without changes', 'Avoiding any mention of constraints'], 'Providing relevant context and desired output structure', 2);

-- Module 3: Overview of our USP
INSERT INTO assessments (module_id, question_type, question_text, choices, correct_answer, display_order) VALUES 
('overview-of-our-usp', 'multiple_choice', 'Which phrasing best aligns with a credible USP message?', ARRAY['Kavia guarantees bug-free software with no review needed.', 'Kavia helps teams produce structured engineering artifacts faster, which can reduce iteration time when outputs are validated.', 'Kavia replaces all engineering roles on a project.', 'Kavia works without any input context.'], 'Kavia helps teams produce structured engineering artifacts faster, which can reduce iteration time when outputs are validated.', 1);

-- Module 4: Understanding customer needs
INSERT INTO assessments (module_id, question_type, question_text, choices, correct_answer, display_order) VALUES 
('understanding-customer-needs-and-speaking-on-that', 'short_answer', 'What is one example of an assumption you might document when a customer request is ambiguous, and why is it important?', NULL, 'An example assumption is that the feature must work for existing user roles without new permissions; documenting it is important so stakeholders can confirm or correct it before implementation and rework.', 1),
('understanding-customer-needs-and-speaking-on-that', 'multiple_choice', 'Which element best helps make a need verifiable?', ARRAY['A broad statement like "make it better"', 'Acceptance criteria that define success conditions', 'A list of unrelated technical terms', 'A promise to decide later'], 'Acceptance criteria that define success conditions', 2);

-- Module 5: Code ingestion
INSERT INTO assessments (module_id, question_type, question_text, choices, correct_answer, display_order) VALUES 
('code-ingestion', 'short_answer', 'List two types of files that often serve as key entry points during code ingestion and explain why.', NULL, 'Examples include an application entry file (it defines startup and routing) and configuration files like package manifests or environment config (they define dependencies and runtime constraints).', 1);

-- Module 6: Kavia Chat walkthrough
INSERT INTO assessments (module_id, question_type, question_text, choices, correct_answer, display_order) VALUES 
('kavia-chat-walkthrough', 'multiple_choice', 'Which prompt element most directly reduces irrelevant output?', ARRAY['Leaving requirements unspecified', 'Stating constraints and the desired output structure', 'Asking for "anything useful"', 'Avoiding mention of the existing codebase'], 'Stating constraints and the desired output structure', 1),
('kavia-chat-walkthrough', 'short_answer', 'What is one example of a validation step you should perform after receiving an output that references code files?', NULL, 'Verify that referenced files actually exist in the repository and that the described behavior matches what those files implement.', 2);

-- Module 7: Create HLD and LLD diagram
INSERT INTO assessments (module_id, question_type, question_text, choices, correct_answer, display_order) VALUES 
('create-hld-and-lld-diagram', 'multiple_choice', 'Which is the best description of an HLD?', ARRAY['A diagram listing every function and variable in the codebase', 'A diagram that focuses on major components, boundaries, and integrations', 'A user interface mockup for the frontend only', 'A database backup script'], 'A diagram that focuses on major components, boundaries, and integrations', 1),
('create-hld-and-lld-diagram', 'short_answer', 'Name one risk you can detect early by reviewing an HLD or LLD diagram.', NULL, 'You can detect unclear integration ownership, such as a missing API contract between services, which can cause late-stage rework.', 2);

-- Module 8: Create and understand a user story/bug
INSERT INTO assessments (module_id, question_type, question_text, choices, correct_answer, display_order) VALUES 
('create-and-understand-a-user-story-bug-use-case-1', 'short_answer', 'What are two essential elements that make a bug report verifiable?', NULL, 'Clear reproduction steps and a comparison of expected behavior versus actual behavior; together they allow someone else to confirm the issue consistently.', 1),
('create-and-understand-a-user-story-bug-use-case-1', 'multiple_choice', 'Which acceptance criteria is best?', ARRAY['The feature should be nice and fast.', 'Users should like the experience.', 'When a user completes action X, the system stores result Y and displays confirmation Z.', 'We will decide what success means later.'], 'When a user completes action X, the system stores result Y and displays confirmation Z.', 2);

-- Module 9: Generating unit test
INSERT INTO assessments (module_id, question_type, question_text, choices, correct_answer, display_order) VALUES 
('generating-unit-test-use-case-2', 'multiple_choice', 'Which is the best unit test characteristic?', ARRAY['It depends on a live external service to pass.', 'It is deterministic and validates a small unit of behavior.', 'It requires manual steps to execute.', 'It changes production data.'], 'It is deterministic and validates a small unit of behavior.', 1),
('generating-unit-test-use-case-2', 'short_answer', 'Give one example of an edge case you would include in unit tests for input validation logic.', NULL, 'An empty string or null input that should be rejected with a clear error outcome is a common edge case for validation logic.', 2);

-- Module 10: Manifest Generation
INSERT INTO assessments (module_id, question_type, question_text, choices, correct_answer, display_order) VALUES 
('manifest-generation-use-case-3', 'short_answer', 'What is one benefit of using a structured manifest rather than a free-form summary?', NULL, 'A structured manifest is easier to validate and consume programmatically, making it more reliable for tracking artifacts and supporting repeatable workflows.', 1),
('manifest-generation-use-case-3', 'multiple_choice', 'Which field is most critical for traceability in a manifest?', ARRAY['Random inspirational quote', 'Unique, stable identifiers for items', 'A long paragraph with no structure', 'An external service API key'], 'Unique, stable identifiers for items', 2);
