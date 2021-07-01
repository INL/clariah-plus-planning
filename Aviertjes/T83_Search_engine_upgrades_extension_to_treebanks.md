Topic: Search engine upgrades: extension to treebanks
=====================================================

**IDs in Google Sheets:** T83

**Author:** INT / Jesse de Does a.o.

**Introduction:** In this task we aim to create something between the
efficient but limited CQL-based search engine and the feature-rich but
less scalable Xpath/Xquery-based engines.

**What exists:** Token level annotation search for large corpora (Corpus
workbench; Nosketch engine, Blacklab); separate treebank query engines
(PML-TQ, Gretel, ...)

**What must be adapted / extended / created anew:** Because of richer
and more intuitive searching for syntactic phenomena, it is surprising
that treebanks have not superseded token-based corpora as the basic
facility for corpus retrieval.

In this task, we develop a scalable integrated treebank search and
exploitation infrastructure for large corpora, integrated with the
BlackLab search engine.

**Why important for CLARIAH (scientific impact):** Current corpus
exploitation infrastructure for treebanks and token-based corpora is
fragmented and not always scalable; it is difficult to integrate
analytics from treebanks and token-based corpora.

On the one hand, analytics, query management, analytics and
visualization in treebank applications lag behind the facilities offered
by mature token-based corpus exploitation applications like the Sketch
Engine, IMS, BlackLab Server, WhiteLab and the Nederlab portal. On the
other hand, for many tasks (even very simple ones like finding typical
subject or object nouns for a given verb), token-based queries are no
more than a poor man’s substitute for phrase structure search. A single,
scalable mode of access to modern Dutch data will greatly benefit both
linguistic and applied research.

**Targeted/Actual users:** linguists; computational linguist; language
learners

**Actual use (quantify!):** Since the envisaged facility will have all
capacities of token-based and treebank query and more, a satisfactory
implementation will attract the attention from both user groups.

**Social Impact** **(concrete examples):** Facilitate linguistic
research based on corpus data by creating a single scalable retrieval
hub

**Estimate in PMs (try to justify):** 10PM. Production-quality
implementation of new technology is required; user interface needs to be
enhanced; 3PM functional design and testing

**Lead + PMs:** INT

**Participants + PMs: INT: 8**

**Working plan; deliverables **

  ---------------- -------- ------------- ---------- -----------------------------------------------------------------------------------
  T083 Treebanks   T083M1   Milestone     Document   Requirements and technical design
  T083 Treebanks   T083D1   Deliverable   Software   Scalable treebank search integrated with token-based search: backend and frontend
  T083 Treebanks   T083D2   Deliverable   Document   Scalable treebank search documentation
  ---------------- -------- ------------- ---------- -----------------------------------------------------------------------------------


