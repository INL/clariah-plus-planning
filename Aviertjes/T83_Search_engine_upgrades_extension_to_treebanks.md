Topic: Search engine upgrades: extension to treebanks
=====================================================

**IDs in Google Sheets:** T83

**Author:** INT / Jesse de Does a.o.

**Introduction:** In this task we aim to create something between the
efficient but limited CQL-based search engine and the feature-rich but
less scalable Xpath/Xquery-based engines.

**What exists:** Token level annotation search for large corpora (Corpus
workbench; Nosketch engine, Blacklab); separate treebank query engines
(PML-TQ, Gretel, ...)\
**What must be adapted / extended / created anew:** Because of richer
and more intuitive searching for syntactic phenomena, it is surprising
that treebanks have not superseded token-based corpora as the basic
facility for corpus retrieval.

In this task, we develop a scalable integrated treebank search and
exploitation infrastructure for large corpora, integrated with the
BlackLab search engine.

Requirements

-   Performance. Performance at least for simple queries comparable to
    > CQL (e.g. /node\[@cat="np" and node\[@rel="mod" and @pt="adj"\]
    > and node\[@rel="hd" and @pt="n" and @lemma="schaap"\]\]) should
    > not be much slower than \[pos=”adj”\]\[lemma=”schaap”\]

-   Scalable, distributable, federable

-   Support both dependency and phrase structure

-   Enable combination of CQL constructions and treebank query

Benefits:

-   Leverage efficiency and flexibility of the lucene Span query
    > mechanism and lucene/solr solutions for scalability and
    > distributed processing to achieve goals

-   One infrastructure to publish corpora instead of different copies
    > of e.g. opensonar in whitelab and gretel3, so management of
    > metadata, distributed deployment, user annotation, statistics and
    > visualization, etc., need not be duplicated

**Why important for CLARIAH (scientific impact): **

Current corpus exploitation infrastructure for treebanks and token-based
corpora is fragmented and not always scalable; it is difficult to
integrate analytics from treebanks and token-based corpora.

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
implementation will attract the attention from both user groups

**Social Impact** **(concrete examples):** Facilitate linguistic
research based on corpus data by creating a single scalable retrieval
hub

**Estimate in PMs (try to justify):** 10PM. Production-quality
implementation of new technology is required; user interface needs to be
enhanced; 3PM functional design and testing

**Lead + PMs:** INT

**Participants + PMs: INT: 8**

**Working plan; deliverables **

Milestone: year 1: document describing requirements and technical design

Milestone: year 2: backend implementation

Deliverable: year 3: autosearch, blacklab and blacklab server versions
with handling of treebanks

Voorbeeldje dependency search in blacklab:

[*https://portal.clarin.inl.nl/atocorp/j.de.does@umail.leidenuniv.nl:testConnlU/search/hits?number=20&first=0&patt=%28a%3A%5Bpos%3D%22VERB%22%5D%5B%5D%7B0%2C4%7D+b%3A%5Bpos%3D%22NOUN%22+%26+deprel%3D%22obj%22%5D+%0A%7C+++b%3A%5Bpos%3D%22NOUN%22+%26+deprel%3D%22obj%22%5D+++%5B%5D%7B0%2C4%7D++a%3A%5Bpos%3D%22VERB%22%5D%29+%3A%3A+a.id%3Db.head*](https://portal.clarin.inl.nl/atocorp/j.de.does@umail.leidenuniv.nl:testConnlU/search/hits?number=20&first=0&patt=(a%3A%5Bpos%3D"VERB"%5D%5B%5D{0%2C4}+b%3A%5Bpos%3D"NOUN"+%26+deprel%3D"obj"%5D+%0A|+++b%3A%5Bpos%3D"NOUN"+%26+deprel%3D"obj"%5D+++%5B%5D{0%2C4}++a%3A%5Bpos%3D"VERB"%5D)+%3A%3A+a.id%3Db.head)
