-- Remaining lessons for modules 6-10

-- Module 6: Kavia Chat walkthrough
INSERT INTO lessons (id, module_id, title, summary, duration_minutes, video_url, display_order) VALUES 
('prompt-structure-basics', 'kavia-chat-walkthrough', 'Prompt structure basics', 'Explains a repeatable prompt pattern: context, task, constraints, and output schema.', 20, 'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4', 1),
('iterating-with-feedback', 'kavia-chat-walkthrough', 'Iterating with feedback', 'Shows how to tighten scope, request deltas, and prevent unnecessary rewrites.', 20, 'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4', 2),
('validation-and-sanity-checks', 'kavia-chat-walkthrough', 'Validation and sanity checks', 'Introduces simple checks to confirm outputs are consistent with files, APIs, and constraints.', 20, 'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4', 3);

-- Module 7: Create HLD and LLD diagram
INSERT INTO lessons (id, module_id, title, summary, duration_minutes, video_url, display_order) VALUES 
('hld-vs-lld', 'create-hld-and-lld-diagram', 'HLD vs LLD', 'Defines the purpose and audience of each diagram type and what level of detail is expected.', 20, 'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4', 1),
('building-a-clear-hld', 'create-hld-and-lld-diagram', 'Building a clear HLD', 'Focuses on system boundaries, major components, and integration points with minimal implementation detail.', 30, 'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4', 2),
('deriving-an-lld', 'create-hld-and-lld-diagram', 'Deriving an LLD from the HLD', 'Shows how to break components into modules, interfaces, and responsibilities without over-specifying.', 35, 'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4', 3);

-- Module 8: Create and understand a user story/bug - Use case 1
INSERT INTO lessons (id, module_id, title, summary, duration_minutes, video_url, display_order) VALUES 
('user-story-structure', 'create-and-understand-a-user-story-bug-use-case-1', 'User story structure', 'Covers a practical story format and how to keep scope constrained and verifiable.', 25, 'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4', 1),
('bug-reporting-basics', 'create-and-understand-a-user-story-bug-use-case-1', 'Bug reporting basics', 'Explains reproduction steps, environment details, and expected vs actual results.', 25, 'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4', 2),
('quality-checks-and-edge-cases', 'create-and-understand-a-user-story-bug-use-case-1', 'Quality checks and edge cases', 'Introduces quick checks for ambiguity, missing acceptance criteria, and untestable requirements.', 20, 'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4', 3);

-- Module 9: Generating unit test- Use case 2
INSERT INTO lessons (id, module_id, title, summary, duration_minutes, video_url, display_order) VALUES 
('unit-test-scope', 'generating-unit-test-use-case-2', 'Unit test scope and boundaries', 'Defines what belongs in unit tests versus integration tests and how to isolate dependencies.', 25, 'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4', 1),
('test-case-derivation', 'generating-unit-test-use-case-2', 'Deriving test cases', 'Covers deriving cases from normal paths, edge cases, and error handling behavior.', 25, 'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4', 2),
('determinism-and-maintainability', 'generating-unit-test-use-case-2', 'Determinism and maintainability', 'Explains stable fixtures, predictable inputs, and clear assertions to reduce flaky tests.', 20, 'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4', 3);

-- Module 10: Manifest Generation - Use case 3
INSERT INTO lessons (id, module_id, title, summary, duration_minutes, video_url, display_order) VALUES 
('manifest-purpose-and-scope', 'manifest-generation-use-case-3', 'Manifest purpose and scope', 'Defines what belongs in a manifest and how it supports repeatability and review.', 25, 'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4', 1),
('manifest-structure', 'manifest-generation-use-case-3', 'Designing a manifest structure', 'Walks through choosing fields, consistent identifiers, and how to represent relationships between artifacts.', 30, 'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4', 2),
('validation-and-upkeep', 'manifest-generation-use-case-3', 'Validation and upkeep', 'Covers verification steps and how to keep manifests up-to-date as a project evolves.', 30, 'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4', 3);

-- Key terms for all modules
INSERT INTO module_key_terms (module_id, term) VALUES 
('what-kavia-is', 'workflow'),
('what-kavia-is', 'artifact'),
('what-kavia-is', 'structured output'),
('what-kavia-is', 'iteration loop'),
('what-kavia-is', 'requirements'),
('what-kavia-is', 'context'),
('how-kavia-can-help-you', 'context quality'),
('how-kavia-can-help-you', 'iteration'),
('how-kavia-can-help-you', 'deliverable'),
('how-kavia-can-help-you', 'validation'),
('how-kavia-can-help-you', 'workflow step'),
('overview-of-our-usp', 'USP'),
('overview-of-our-usp', 'structured artifacts'),
('overview-of-our-usp', 'repeatability'),
('overview-of-our-usp', 'stakeholder messaging'),
('overview-of-our-usp', 'constraints'),
('understanding-customer-needs-and-speaking-on-that', 'requirements'),
('understanding-customer-needs-and-speaking-on-that', 'constraints'),
('understanding-customer-needs-and-speaking-on-that', 'assumptions'),
('understanding-customer-needs-and-speaking-on-that', 'acceptance criteria'),
('understanding-customer-needs-and-speaking-on-that', 'stakeholder alignment'),
('understanding-customer-needs-and-speaking-on-that', 'scope'),
('code-ingestion', 'code ingestion'),
('code-ingestion', 'entry point'),
('code-ingestion', 'dependency'),
('code-ingestion', 'interface'),
('code-ingestion', 'repository structure'),
('code-ingestion', 'constraints'),
('kavia-chat-walkthrough', 'prompt structure'),
('kavia-chat-walkthrough', 'constraints'),
('kavia-chat-walkthrough', 'iteration'),
('kavia-chat-walkthrough', 'validation'),
('kavia-chat-walkthrough', 'delta update'),
('create-hld-and-lld-diagram', 'HLD'),
('create-hld-and-lld-diagram', 'LLD'),
('create-hld-and-lld-diagram', 'component'),
('create-hld-and-lld-diagram', 'data flow'),
('create-hld-and-lld-diagram', 'integration point'),
('create-hld-and-lld-diagram', 'interface'),
('create-and-understand-a-user-story-bug-use-case-1', 'user story'),
('create-and-understand-a-user-story-bug-use-case-1', 'bug report'),
('create-and-understand-a-user-story-bug-use-case-1', 'acceptance criteria'),
('create-and-understand-a-user-story-bug-use-case-1', 'reproduction steps'),
('create-and-understand-a-user-story-bug-use-case-1', 'scope'),
('create-and-understand-a-user-story-bug-use-case-1', 'edge case'),
('generating-unit-test-use-case-2', 'unit test'),
('generating-unit-test-use-case-2', 'test boundary'),
('generating-unit-test-use-case-2', 'fixture'),
('generating-unit-test-use-case-2', 'mock'),
('generating-unit-test-use-case-2', 'assertion'),
('generating-unit-test-use-case-2', 'edge case'),
('manifest-generation-use-case-3', 'manifest'),
('manifest-generation-use-case-3', 'structured data'),
('manifest-generation-use-case-3', 'artifact inventory'),
('manifest-generation-use-case-3', 'validation'),
('manifest-generation-use-case-3', 'traceability');

-- Resources for all modules
INSERT INTO module_resources (module_id, title, url) VALUES 
('what-kavia-is', 'Course glossary (placeholder)', 'https://example.com/kavia-course/glossary'),
('how-kavia-can-help-you', 'Prompting checklist (placeholder)', 'https://example.com/kavia-course/prompting-checklist'),
('overview-of-our-usp', 'USP one-pager (placeholder)', 'https://example.com/kavia-course/usp'),
('understanding-customer-needs-and-speaking-on-that', 'Customer needs worksheet (placeholder)', 'https://example.com/kavia-course/customer-needs-worksheet'),
('code-ingestion', 'Ingestion checklist (placeholder)', 'https://example.com/kavia-course/ingestion-checklist'),
('kavia-chat-walkthrough', 'Prompt templates (placeholder)', 'https://example.com/kavia-course/prompt-templates'),
('create-hld-and-lld-diagram', 'Diagramming conventions (placeholder)', 'https://example.com/kavia-course/diagramming-conventions'),
('create-and-understand-a-user-story-bug-use-case-1', 'User story template (placeholder)', 'https://example.com/kavia-course/user-story-template'),
('generating-unit-test-use-case-2', 'Unit test checklist (placeholder)', 'https://example.com/kavia-course/unit-test-checklist'),
('manifest-generation-use-case-3', 'Manifest example (placeholder)', 'https://example.com/kavia-course/manifest-example');

-- Note: Assessments will be added in a separate script due to complexity of escaping quotes
