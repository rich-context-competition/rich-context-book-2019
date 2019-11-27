
# Chapter 1 - Introduction

Rich Context Introductory Chapter

Ian Mulvany, Paco Nathan, Sophie Rand, Julia Lane

Introduction
============

Science is at a crossroads. The enormous growth of access to data
coupled with rapid technological progress, has created opportunities to
conduct empirical research at a scale that would have been almost
unimaginable a generation or two ago. Researchers can now rapidly
acquire and develop massive, rich datasets; routinely fit complex
statistical models; and conduct their science in increasingly
fine-grained ways. Yet there is no automated way to search for and
discover what datasets are used in empirical research, leading to
fundamental irreproducibility of empirical science and threatening its
legitimacy and utility(*1*, *2*). There is an enormous interest to
change the current manual and ad-hoc system, and incentives are
increasingly aligned: while only a fraction of datasets are identified
in scientific research, those publications that do cite data are cited
up to 25% more than those that do not(*3*).

Vannevar Bush foreshadowed the issue more than 60 years ago:

> "There is a growing mountain of research. But there is increased
> evidence that we are being bogged down today as specialization
> extends. The investigator is staggered by the findings and conclusions
> of thousands of other workers---conclusions which he cannot find time
> to grasp, much less to remember, as they appear. ... Mendel's concept
> of the laws of genetics was lost to the world for a generation because
> his publication did not reach the few who were capable of grasping and
> extending it; and this sort of catastrophe is undoubtedly being
> repeated all about us, as truly significant attainments become lost in
> the mass of the inconsequential"(*11*).

We can do better -- and we now have the opportunity to do so.

The core problem that needs to be addressed is automating the search for
and discovery of datasets used in empirical data -- building an
Amazon.com for data. The vast majority of scientific data and outputs
cannot be easily discovered by other researchers even when nominally
deposited in the public domain. Faced with a never-ending stream of new
findings and datasets generated using different code and analytical
techniques, researchers cannot readily determine who has worked in an
area before, what methods were used, what was produced, and where those
products can be found. Resolving such uncertainties consumes an enormous
amount of time and energy for many social scientists. A new generation
of automated search tools could help researchers discover how data are
being used, in what research fields, with what methods, with what code
and with what findings ---often by passively capitalizing on the
accumulated labor of one's extended research community. And automation
can be used to reward researchers who validate the results and
contribute additional information about use, fields, methods, code, and
findings.(*8*)

New advances in technology---and particularly, in automation---can now
change the way in which social science, and hence other sciences, is
done. The place to start is with the social sciences. The great
challenges of our time are human in nature - terrorism, climate change,
the use of natural resources, and the nature of work - and require
robust science to understand the sources and consequences. The lack of
reproducibility and replicability evident in many fields(*1*, *4*--*7*)
is even more acute in the study of human behavior both because of the
difficulty of sharing confidential data and because of the lack of
scientific infrastructure. Social scientists have eagerly adopted new
technologies in virtually every area of social science research---from
literature searches to data storage to statistical analysis to
dissemination of results(*8*). And, in the United States, the recent
passage of the Foundations of Evidence-based Policymaking Act(*9*, *10*)
and the focus on a Federal Data Strategy, mean that there is an
important use case for showcasing the value of new approaches.

The knowing how it has been produced and used before: the required
elements what do the data ***measure***, what ***research*** has been
done by what ***researchers,*** with what ***code***, and with what
***results***. Acquiring that knowledge has historically been manual and
inadequate. The challenge is particularly acute in the case of
confidential data on human subjects, since it is impossible to provide
fully open access to the source files.

How this book came to be
========================

This book was born out of a need to solve a very concrete problem. In
2016, the US Congress passed the Commission on Evidence-based
Policymaking Act to make a set of recommendations on how to better use
data for decision-making. The US Census Bureau was charged with
supporting the deliberations of the Commission and asked our team at New
York University to build a secure access facility in which data from
multiple agencies could be securely hosted.

After we built the facility, and had dozens of users, we realized that
putting data in one place, while necessary, was not sufficient for good
analytical work to be done. Every user who accessed the data wanted to
know what other work had been done with the data, with what assumptions
and what results. We were able to provide them with some information,
but essentially the information was drawn from our own research
experience and was certainly not representative of the entire field. The
obvious solution was to see if computer scientists had the technological
tools available to automate the discovery of research datasets and the
associated research methods and fields in research publications. Our
computer science colleagues assured us that, while the technology
existed in principle, no single team was known for having developed a
solution.

We decided to see what we could to advance the field, and approached
Schmidt Sciences, the Alfred P. Sloan Foundation and the Overdeck Family
Foundation for support. As part of that support, we ran the competition
with the results described in this book. We challenged participants to
combine machine learning and natural language processing methods to
identify the datasets used in a corpus of social science publications
and infer both the scientific methods and fields used in the analysis
and the research fields.

The core of the book describes both how the competition was set up, as
well as the results achieved by different competing teams. However, as
is always the case with exciting research agendas, the competition
helped us identify five major scientific challenges that need to be
addressed: (i) document corpus development, (ii) ontology development
for dataset entity classification, (iii) natural language processing and
machine learning models for dataset entity extraction, (iv) graph models
for improving search and discovery, and (v) the use of the results to
engage the community to both validate the model results, retrain the
model and to contribute code and knowledge. So the other chapters in the
book provide an overview of what could be done with more resources and
talent devoted to this interesting question. The next section provides a
more detailed overview of the contribution of each chapter.

Book overview
=============

Section 1 provides an overview of the motivation and approach. Section 2
describes new approaches to develop corpora and ontologies. Section 3
describes the competition results in terms of model development. Section
4 provides a forward looking agenda.

Section 1: Motivation and approach

In Chapter 2, " Where's Waldo: Conceptual issues when characterizing
data in empirical research," researchers from the Research Data and
Service Center at the Deutsche Bundesbank show us why better metadata
for social science data enables discovery of datasets and research, in
ways that surpass what traditional metadata from data producers can
support. They present a new modus operandi in the service delivery model
of research data facilities, based on the premise that datasets have a
measurable value that can be deduced from the relationships between
datasets and publications, and the people who author, do research on,
and consume them - that is, Rich Context around datasets.

They argue that a major advantage of rich context is that it closes the
loop on metadata is closed: a loop initiated by the metadata from the
data producer side, is closed by metadata from the data usage side. The
authors elucidate why such rich data from the *usage* perspective is
needed to deliver codified knowledge to the research community to guide
literature review and new research; without understanding the linkage
between datasets and outcomes, we are disabled in shaping new, impactful
research.  

The authors identify two primary reasons for this need: first, that
metadata on the datasets from the data users perspective helps the data
creator to improve upon the quality of the data itself, improving
dataset owners' service delivery (e.g. bundesbank as a service provider,
the service being data provision, consulting on dataset usage, creation
of new data products, etc); and second, that metadata on the usage of
datasets in publications helps us measure impact of datasets in their
ability to drive policy-making. With this closed loop, the scope of
researchers' discovery is broadened to include not only literature and
datasets, but the interplay between those two - that is, how datasets
have been used by whom and how.   The authors discuss a tangible outcome
of measuring dataset value - a dataset recommendation system, enabling
expedient sharing of available datasets through the research community.

Chapter 3 outlines the operational approach that was taken to develop
the [Rich Context
Competition](https://coleridgeinitiative.org/richcontextcompetition).
The goal of the competition, the results of which are described in
Section 2, was to implement AI to automatically extract metadata from
research - identifying datasets in publications, authors and experts,
and methodologies used. As such, the competition was designed to engage
practitioners in AI and NLP to develop models based on a corpus
developed at the Interuniversity Consortium of Political and Social
Research. The competition attracted 20 teams from around the world and
resulted in four finalists presenting their results at NYU on February
15, 2019 (see the [agenda and video
here](https://coleridgeinitiative.org/richcontextcompetition/workshopagenda)).

The results of the competition provided metadata to describe links among
datasets used in social science research. In other words, the outcome of
the competition generated the basis for a moderately-sized knowledge
graph. the [winning
team](https://ocean.sagepub.com/blog/an-interview-with-the-allen-institute-for-artificial-intelligence)
in the Rich Context Competition was from [Allen
AI](https://allenai.org/) which is a leader in the field of using
embedded models for natural language. Typical open source frameworks
which are popular for deep learning research include
[PyTorch](https://pytorch.org/) (from Facebook) and the more recent
[Ray](https://ray.readthedocs.io/en/latest/distributed_training.html)
(from UC Berkeley RISElab).

Section 2:
===========

A major challenge is developing a training corpus that sufficiently
represents the population of all documents, and tagging the datasets in
the corpus. It is essential to do this well if high quality models are
to be developed. There is a literature outlining the issues with
developing a \"gold standard corpus\" (GSC) of language around data
being mentioned and used in analysis in academic publications, since
creating one is time-consuming and expensive (*12*) In Chapter 4
"Standardized Metadata, Full Text and Training/Evaluation for Extraction
Models", Sebastian tk and Alex Wade describe the need for, and
strategies for collecting, large sets of annotated full-text sources for
use as training data for supervised learning models developed in the
Rich Context Competition. Dataset Extraction, the NLP task at the core
of the Rich Context Competition, relies on a high-quality set of full
text sources with metadata annotations. Developing such a corpus must be
done strategically, as full-text articles and their metadata are
organized inconsistently across their sources. The corpora gathered for
use as training data for the Competition required ad-hoc manual labor to
compile. Here, authors describe the legal, technological and human
considerations in creating a corpus. They dictate the scale of full-text
data needed, and the impact that an interdisciplinary (e.g spanning
multiple domains) corpus has on that scale. They suggest development of
a corpus with open-access text resources, use of human-annotators for
labeling of full-text, and attention to the mix of domains that may be
in a corpus when developing models. 

There is a separate challenge of developing a common understanding of
what a dataset is. Developing standard ontologies is a fundamental
scientific problem, and one that is often in the domain of libraries and
information scientists. Although some measure of linguistic ambiguity is
likely to be unavoidable in the social sciences given the complex
subject matter, even modest ontologies that minimally control the
vocabulary researchers use would have important benefits. In Chapter 5,
"Metadata for Administrative and Social Science Data", Robert B. Allen
describes a framework for the application of metadata to datasets,
details existing metadata schema, and gives an overview of the
technology, infrastructure and human elements that need to be considered
when designing a rich metadata schema for describing social science
data. 

Allen describes three types of metadata - structural, administrative and
descriptive; and emphasizes the growth needed in descriptive metadata,
which are characterized by semantic descriptions. Allen describes
existing metadata schemas which accommodate domain-specific metadata
schema, like the W3C DCAT, and the unique semantic challenges faced by
social science as opposed to natural sciences - in particular that
concepts - e.g. "family", "crime" -  are less well-defined, and
definitions change across sub-domains. He considers data repositories
and describes the essential role of metadata in making such repositories
searchable and therefore useful. He touches on several prominent data
repositories in the social and natural sciences and describes their
methods of gathering metadata and how the metadata supports services
offered, like search, computing environments, preservation of data for
archives, and logging of the history of a dataset and its provenance.
Allen describes other challengings in creating and maintaining metadata,
prompted by things like changes in technology that yield data streams,
and changes in metadata standards. He discusses some of the technology
underlying data repositories; in particular data cubes for data storage
that facilitate data exploration and retrieval; containerization and
cloud computing enabling sharing and reproducibility; and collection
management systems which can provide metrics on usage, like number of
downloads, maintenance of datasets, etc. 

Section 3:
===========

Chapter 6, by the Allen AI team, describes their overarching approach.
The team used a named entity recognition model to predict dataset
mentions. For each mention, they generated a list of candidate datasets
from the knowledge base. They also developed a rule based extraction
system which searches for dataset mentions seen in the training set,
adding the corresponding dataset IDs in the training set annotations as
candidates. They then use a binary classiﬁer to

predict which of these candidates is a correct dataset extraction. While
this approach was eventually the winning approach given the design of
the corpus and the scoring mechanism, it suffers from being too fragile
for general application, since it is necessarily corpus dependent. That
team did not devote substantial time to identifying fields and methods.

Chapter 7, by the KAIST team, describes a very different approach. They
generated their own questions about dataset names and use a machine
learning technique to train the model for solving question answering
task. In other words, questions suitable for finding dataset names such
as "What is the dataset used in this paper?," are generated and the
question answering model is trained to find the answers to those
questions from the papers. Furthermore, the resulting answers from the
model are filtered by types of each word. For example, if an answer
contains words with organization or agency types, then this answer is
likely to include the actual dataset names. They also were quite
innovative with identifying research fields, by using Wikipedia as the
source, and methods by using machine learning techiques

Chapter 8, by the GESIS team, also used a Named Entity Recognition
procedure. However, their design was module-based approach and they
developed tools that can be used separately but also as parts of a data
processing pipeline. For identifying research methods and fields, they
exploited the Social Science Open Access Repository maintained at GESIS
-- Leibniz Institute for the Social Sciences. They also used the ACL
Anthology Reference Corpus which is a corpus of scholarly publications
about computational linguistics

Chapter 9, by the DICE team at Paderborn University, also used a Named
Entity Recognition approach. They trained an Entity Extraction model
based on Conditional Random Fields and combined it with the results from
a Simple Dataset Mention Search to detect datasets in an article. For
the identification of Fields and Methods, they essentially used search
string to find embedded words

Chapter 10, by Singapore Management University, was an incomplete
submission, with a very interesting approach. They used dataset
detection followed by implicit entity linking approach to tackle dataset
extraction task. They adopt weakly supervised classification for
research methods and fields identification tasks utilizing SAGE
Knowledge as an external source and as a proxy for weak labels.

Section 4: Looking forward
==========================

In Chapter 11, researchers from Digital Science describe the role user
engagement plays in creating rich context around datasets, which are
take on properties of 'first class research objects' (like journal
articles) in that they are published as distinct research outputs in
their own right.  Authors lay out a set of challenges in the sharing of
datasets and dissemination of dataset metadata, and articulate goals in
creating infrastructure to answer these challenges. 

As technology has yielded ever larger streams of datasets available for
social science research, two critical, interrelated elements of
infrastructure have not kept apace: information infrastructure, and
cultural infrastructure.  Information infrastructure refers to content
of interest to the rich context competition models - journal articles,
datasets, and their metadata (including details on the data stewards,
usage of the datasets in research, and code used to prepare and analyze
datasets). Cultural infrastructure refers to the incentives and value
propositions in place to encourage individual data stewards, data users
and experts to share datasets and contribute metadata on datasets.
Cultural infrastructure around datasets do not fit into the existent
culture of research publications. 

In venturing to build out information infrastructure around datasets, we
must consider how concepts like versioning, reproducibility, and peer
review carry over to datasets. Further, how do metadata carry over, when
there is so much variability in what we mean when we say dataset?
Incentives around data sharing, dataset curation, and metadata
contribution are even slimmer than in publishing, where there exists a
culture of "publish or perish." This question must be resolved if we
wish to enrich the context around datasets to make them more efficiently
consumable. 

The future agenda is described in the concluding chapter by Paco Nathan
and Ian Mulvany

The first step is to create a corpus of research publications to be used
for training data during the Rich Context Competition.

The next step will be a formal implementation of the knowledge graph,
based primarily on extensions of open standards and use of open source
software. That graph is represented as an extension of a DCAT-compliant
data catalog. Immediate goals are to augment search and discovery in
social science research, plus additional use cases that help improve the
knowledge graph and augment research.

In the longer term, the process introduces human-in-the-loop AI into
data curation, ultimately to reward researchers and data stewards whose
work contributes additional information into the system. With this
latter step, in the broader sense Rich Context helps establish a
community focused on contributing code plus knowledge into the research
process

More resources
==============

General competition information

The competition had two phases. In the first phase, participants were
provided with labeled data, consisting of a corpus of 2,500 publications
matched to the datasets cited within them. Participants could use this
data to train and tune their algorithms. In the second phase, they were
provided with a large corpus of unlabeled documents and asked to
identify the datasets used in the documents in a test corpus, as well as
the associated methods and research fields. The participants were scored
on the accuracy of their techniques, the quality of their documentation
and code, and the efficiency of the algorithm -- and also on their
ability to find methods and research fields in the associated passage
retrieval.

The timeline was as follows:

-   **September 30 2018:** Participants submit a letter of intent (see
    [[How to
    Participate]{.underline}](https://coleridgeinitiative.org/richcontextcompetition#howtoparticipate))

-   **October 15 2018:** Participants notified and Phase 1 data provided
    (see [[First Phase
    Participation]{.underline}](https://coleridgeinitiative.org/richcontextcompetition#phase1participation))

-   **November 15 2018:** Preliminary algorithm submitted (see [[Program
    Requirements]{.underline}](https://coleridgeinitiative.org/richcontextcompetition#programreqs))

-   **December 1 2018:** 15 finalists selected (see [[First Phase
    Evaluation]{.underline}](https://coleridgeinitiative.org/richcontextcompetition#phase1evaluation))
    and Phase 2 data provided (see [[Second Phase
    Participation]{.underline}](https://coleridgeinitiative.org/richcontextcompetition#phase2participation))

-   **January 15, 2019:** The algorithms of up to 6 teams are selected
    for final submission (see [[Second Phase
    Evaluation]{.underline}](https://coleridgeinitiative.org/richcontextcompetition#phase2evaluation))

-   **February 15 2019:** Workshop is held in New York for final
    presentation and selection of winning algorithms (see [[Second Phase
    Evaluation]{.underline}](https://coleridgeinitiative.org/richcontextcompetition#phase2evaluation))

All the information provided to participants was available here

[https://github.com/Coleridge-Initiative/rich-context-competition](https://urldefense.proofpoint.com/v2/url?u=https-3A__github.com_Coleridge-2DInitiative_rich-2Dcontext-2Dcompetition&d=DwMFaQ&c=slrrB7dE8n7gBJbeO0g-IQ&r=omwcNBUqPba9pikmkXZXk2bFQ7zxZPhI5OH9dd8lFDA&m=jJJRJpvbdwLAeHNwur9CtaqPIY6UXS4q64avAMUSVV0&s=abG_3lYZ3eu8BWs6kkau2rcXOIwLyiymwo0uj6vwGt0&e=)

References
==========

1\. J. P. A. Ioannidis, Why Most Published Research Findings Are False.
*PLoS Med*. **2**, e124 (2005).2. M. R. Munafò *et al.*, A manifesto for
reproducible science. *Nat. Hum. Behav.* **1**, 21 (2017).3. G.
Colavizza, I. Hrynaszkiewicz, I. Staden, K. Whitaker, B. McGillivray,
The citation advantage of linking publications to research data (2019),
(available at https://arxiv.org/pdf/1907.02565.pdf).4. C. F. Camerer *et
al.*, Evaluating the replicability of social science experiments in
Nature and Science between 2010 and 2015. *Nat. Hum. Behav.* **2**, 637
(2018).5. A. Dafoe, Science deserves better: the imperative to share
complete replication files. *PS Polit. Sci. Polit.* **47**, 60--66
(2014).6. N. Young, J. Ioannidis, O. Al-Ubaydli, Why Current Publication
Practices May Distort Science. *PLoS Med* (2008).7. G. Christensen, E.
Miguel, Transparency, reproducibility, and the credibility of economics
research. *J. Econ. Lit.* **56**, 920--980 (2018).8. T. Yarkoni *et
al.*, "Enhancing and accelerating social science via automation:
Challenges and Opportunities" (2019), , doi:10.31235/osf.io/vncwe.9. N.
Hart, T. Shaw, Congress Provides New Foundation for Evidence-Based
Policymaking (2018), (available at
https://bipartisanpolicy.org/blog/congress-provides-new-foundation-for-evidence-based-policymaking/).10.
Office of Management and Budget, Federal Data Strategy (2019),
(available at https://strategy.data.gov).11. V. Bush, *Science, the
endless frontier: A report to the President* (US Govt. print. off.,
1945).12. L. Wissler, M. Almashraee, D. M. Díaz, A. Paschke, in *IEEE
GSC* (2014).

---

# Chapter 2 - Bundesbank

Title: Who’s Waldo: Conceptual issues when characterizing data in empirical research
Author:Stefan Bender, Hendrik Doll, Christian Hirsch [^footnote0]
Affiliation: Research Data and Service Centre , Deutsche Bundesbank
Date: June 14, 2019

[^footnote0]: The authors would like to thank Rafael Beier for helpful comments.We would like to thank Jannick Blaschke for providing the graphs in Section 2.2. The views expressed here do not necessarily reflect the opinion of Deutsche Bundesbank or the Eurosystem.

### Abstract

Empirical economic and social science research uses microdata for analyses to connect theory to socie-tal problems. We present conceptual lessons learned from a machine learning competition held to au-tomate the discovery of datasets, research methods and fields in these research publications. Obtained information from the competition can be used to inform the debate about the added value of the used (micro) data. Being able to measure societal benefits of data access is important to put funding decisions on an objective basis, since much research data is generated by publically funded researchers or available from official institutions. The obtained information from the competition can also be used to build up a user-centric dataset recommendation system. Both of these outcomes will elevate the current knowledge generating process of empirical research in a research data centre.

### Table of contents

1.	Introduction
2.	Insights from a research data centre perspective
3.	Lessons learned from competition
4.	Conclusions
5.	References

### Introduction

Policy makers increasingly recognize that informed decision-making requires microdata-backing. Only microdata can uncover interdependencies between entities and document disparate global develop-ments. Making microdata available for independent research is subject to legal requirements that are designed to prevent the disclosure of information concerning an individual person or business entity. At Deutsche Bundesbank, the Research Data and Service Centre (RDSC) is tasked with making microdata available for independent research while simultaneously ensuring statistical confidentiality.

To strengthen effective quantitative research through optimal microdata usage, the RDSC has engaged in a series of projects that are targeted at enhancing user experience. One specific project currently pur-sued by the RDSC is the development of a microdata recommendation system, which is based on how microdata is being used in empirical research. Describing microdata from the usage in publications dis-tinguished this approach from traditional metadata for researchers, which is largely based on how data is produced.

Empirical research papers are an obvious source of information about dataset usage. A useful microdata recommendation system needs to rely on a corpus of dataset usage, as large as possible. Hand-curating such a sufficiently large corpus is prohibitively labor-intensive and error-prone. Therefore, being able to automatically retrieve the necessary information from research papers lays the groundwork for any future implantation of such a recommendation system. The competition is an important first step and proofs data set extraction from research publications to be feasible and scalable.

We present lessons learned from the machine learning competition held to automate the discovery of datasets, associated research methods and fields in social science research publications. In doing so, we show our insights about dataset taxonomies from our experience in a research data center and from designing a machine learning competition. We do this with a background of all authors in social science.
We refer the readers interested in the more technical aspect of the task of extracting dataset citations from publications to later chapters.

Extracting dataset citations from publications is a fairly difficult task because of the variety of dataset ci-tation formats and the absence of training data. Besides empirical research support, the gained infor-mation is the basis to provide value for policy purposes in the G20 context. For example, by providing researchers with information about the use and availability of microdata previously not being available in a systematic way, the results of this competition and the ensuing microdata recommendation system are a step towards reducing data gaps that have been diagnosed in the aftermath of the financial crisis.

On a broader level, the outcome of the competition contributes to the ongoing digitalization efforts of the Deutsche Bundesbank. Extracting relevant information from research papers as an unstructured data source broadens the value of unstructured, underexplored, data. Thus, the project presents a well-defined use-case to turn tacit knowledge into codified knowledge by converting text into relatively well-structured information. As a concrete first institutional implementation of competition results, microdata-based research will be supported by turning unstructured information into a useful source of reference for researchers.

### Insights from a research data centre perspective

#### Background

The overriding principle of Bundesbank – and other Central Banks, National Statistical Institutes and Of-ficial International Institutions - when working with micro data is compliance with the statutory secrecy and data protection requirements, and thus maintaining the confidentiality of the information submitted by the reporting agents. European and national legal provisions regulate both the user group and the access channels to micro data, prescribe the required degree of data anonymisation and oblige data providers and data recipients to maintain data confidentiality at all times.

In response to the increased internal and external demand for microdata and the data confidentiality re-quirements, in 2013 the Bundesbank set up the Integrated Microdata - based Information and Analysis System (IMIDIAS) and established the Research Data and Service Centre (RDSC) (for a detailed moti-vation, refer to Kalckreuth, 2014 and Bender and Staab, 2015). The RDSC applies a standardised pro-cedure to generate high-quality datasets that cover a large part of data requests for research purposes. Thereby, the RDSC grants internal and external researchers’ access to selected Bundesbank microdata and serves as an interface between data producers and data users.

Requests to use microdata are first reviewed pursuant to legal requirements. The RDSC provides access to anonymized datasets on banks, securities, investment funds, enterprises and households, all of which can be accessed at dedicated researcher workstations or for most of the Bundesbank’s surveys – as for the Panel on Household Finances (PHF) study – the RDSC offers so called scientific use files. Data access and the underlying legal requirements are described in detail by Schönberg (2018).

In addition, the RDSC provides information and advice to researchers on data selection, data content and analytical approaches. Together with the relevant statistical experts, it ensures that the microdata provided are documented in detail and archived. In doing so, the RDSC works according to globally rec-ognized standards and was accredited as a research data centre (RDC) by the German Data Forum (“Rat für Sozial- und Wirtschaftsdaten”).

To date, metadata in the RDSC is provided to research using structured data reports. They are an es-tablished and well-functioning tool to convey information linearly from the data producers via the RDSC to the data users. To go a step further, efforts are underway in the RDSC to document microdata from the usage side. This relevant source of information has not been considered yet, because necessary in-formation on which datasets are used in which publication has not been broadly available to date. The competition changes this for the first time.

Potential of such data documentation from the usage side is manifold. Examples include newly arriving researchers, who get to see, what other researchers did with the data. At a glance, one can directly see potential for linkages with other micro datasets if others have done it. Data producers benefit from feed-backs on potential data gaps or limitations of the used data (which goes back to the initial institutional motivation for creating a research data center). Thereby a circular information flow is created by allowing feedback loops.

A main principle of the RDSC is to give free access to Bundesbank micro data for independent research. Motives for doing so are to get feedback on the data (use published research results to increase the internal data knowledge) and to strengthen evidence-based policy-making by Bundesbank itself. For fulfilling both of these tasks, the RDSC has to ensure microdata is used effectively by providing excellent services. Implementing potential for structured feedback from researchers back to data production and new research enables an improving empirical knowledge generating process.

#### The knowledge generating process of empirical research in the RDSC

The knowledge generating process of empirical research in the RDSC can be organised along the four key dimensions (i) data services, (ii) research, (iii) publication, and (iv) (structured) user specific knowledge.

 ![](./combined_images/20190614_Figure1.jpg)

Figure 1: The four dimensions of the knowledge generating process of empirical research in the RDSC

Data Services comprises raw microdata and comprehensive documentation of the data both of which the RDSC compiles together with the data producing units  in Bundesbank. [^footnote1] Furthermore, the data ser-vices dimension also includes the methodological improvement of microdata through e.g. applying rec-ord linkage techniques to facilitate the creation of new datasets for research. Finally, the RDSC also of-fers advisory services to potential and existing microdata users on topics such as e.g. dataset selection or analytical options.

[^footnote1]: Data producers in different departments across Bundesbank compile, e.g. microdata, indicators, or time series.

The second dimension of the knowledge generating process of empirical research in the RDSC is re-search. After the application of a researcher is approved by the RDSC, researchers conduct their re-search project in a secure environment designed to ensure ongoing compliance with internal data policies and external government regulations. For most microdata this requires researchers to be physically present at the premises of the RDSC in order to analyse the data. Furthermore, only strictly anonymised research outcomes may be used outside of the secure environment.

Researchers as users of data services produce research outcomes. These outcomes – after data confi-dentiality clearance – sometimes take the form of publications, which present results to the interested public in a form optimized for human consumption as unstructured text. These publications contain knowledge accumulated by researchers about data usage over time (experience), e.g., knowledge about dataset particularities, which in turn could be utilised to inform the debate on how to improve data services

Examples of user specific knowledge acquired by researchers include:
•	How data is used (e.g. additional data cleaning, variable transformation, combining datasets, us-ing additional information)
•	What purposes data is used for (e.g. topics, methodology, research area)
•	What kinds of analyses or techniques have been tried and are used ultimately
•	What information about data is most valuable to get to the results, respectively which linkage or data enrichment makes renders the data most valuable.

Being able to access structured user-specific knowledge through e.g. a competition enables improving data services by making discovery of data and related projects, people, and publications at Bundesbank more comprehensive and efficient. For example, knowledge harvested from publications may be used to enhance services provided by RDSC by allowing standard datasets to be tailored to the needs of re-searchers. Similarly, data producers benefit from feedback on their data, allowing them to improve data quality.

The challenge is to establish such a feedback loop. If effective feedback is given and used, the microda-ta-based knowledge-generating process restarts with data services, but on a higher level. Better data services in turn allow better research, because available microdata is better described and more effec-tively used. By automatizing the feedback-loop between research, publications, knowledge, and data services, the knowledge generating process can loop faster and augment quicker. We expect this to lead to improvements in the four key dimensions of this process of empirical research in the RDSC.

  ![](./combined_images/20190614_Figure2.jpg)

Figure 2: Elevating the knowledge generating process of empirical research in the RDSC to a higher level by enabling a feedback loop to data services.

At the moment, this feedback loop is not present in a systematic way. The aim of the competition is to identify appropriate procedures to close the gap between publication and data services, which would enable transforming knowledge available in publications into generally re-usable knowledge to inform stakeholders (data producers, RDSC, decision makers at Bundesbank). The results of the competition will thus ultimately enable better data services which in turn will make research outcomes more efficient through the channel of a more optimal data usage.

#### Added value of structured user-specific knowledge

This section details two applications of obtaining dataset usage information from publications that would add value to the data services provided for the RDSC. First, existing applications can be optimized in a user-centric way which would lead to obtaining refined products (e.g. improved researcher recommen-dations and data documentation). Second, the case for societal investment in free data access can be empirically fortified. Positive externalities (i.e. research as a public good) suggests a less then societally optimal provision of research data and related services. Obtaining a dataset impact factor can then make the case for further investment in microdata provision by concretely showing a dataset’s impact.

The structured user-specific knowledge produced during the competition may be used to inform the de-sign of a dataset proposition system for researchers. By obtaining information on dataset usage in publi-cations, data is for the first time available to construct indices on data set joint usability (and dataset maps to visualize such indices). Such an index connects datasets through actual use by researchers that combined data sets in the past. This enables recommendations, such as, “Researchers, who used dataset A, also used dataset B”.

Going further, the usability index can be expanded into a measure, how well new datasets fit each other. Without needing joint dataset usage in past publications goodness-of-fit measures may be predicted based on dataset usage in the same field, using the same methods or by additional metadata similarity. This can be a valuable accelerator to effectively distribute new datasets in the research community. While both indices can be implemented using only information from the competition, extensions may enhance value to users which are based on other information such as current metadata.

When thinking about user recommendations, the example is set by large online platforms. These online platforms can recommend from two dimensions of information (excluding interaction for simplicity). First, data is available on a large number of observed purchases per customer, which enables statements like “since you like products A and B, you might also like C”. Second, data is present on large numbers of observed customers per product, which enables statements like “users like you also bought”.

In our setting, with the knowledge generating process of empirical research in the RDSC, we consider researchers and datasets. The universe of data users/ researchers is decently large (i.e. the first dimen-sion), but per user, we only observe a limited amount of “dataset consumption” (i.e. the second dimen-sion). Hence, we have a decent chance of recommending based on other users behaviour. However, we have only limited means of predicting a single users future datasets needs based on his past personal “dataset shopping” behaviour.

However, we suspect a simpler underlying behavioural model of “data shopping” compared to shopping through large online platforms, because publishing with one dataset is not a casual purchase. Instead, it implies real commitment relating to being content with the purchase (less cognitive dissonance). Thus, we suspect that, compared to online platforms, less data points per person are needed, in order to make sensible recommendations. Also, in order to gain more of the rare information per user, we can fall back on dataset citations, i.e. “indirect data usage”, as outlined in chapter 3.

A challenge in building a data-driven recommendation system is to make sure that recommended da-tasets are indeed feasible to use, i.e. constitute meaningful recommendations. Thus, besides information about datasets, additional information such as fields and methods is needed to be ingested into the system. This additional information essentially constitutes additional links between datasets that helps better align datasets. This is especially true in the finance domain where linking microdata is a common feature in empirical research.

Second, the RDSC as part of a public institution has a responsibility towards its principals i.e. society. Granting data access free of charge for researchers should be backed by empirically measurable bene-fits of such data provision. Benefits from data usage can justify societal investment in free data access. However, measuring societal benefits through data access is not obvious at first glance. One possible starting point of approximating societal benefits of data access can be to measure the creation of knowledge [^footnote2] created by specific datasets.

[^footnote2]: In our model, we have called this knowledge user specific knowledge. Here the knowledge is in that sense specific, that it can be used to fulfil the task of Bundesbank in a better way

One can argue that added value of providing administrative microdata is the marginal benefit relative to the second-best comparable commercial database, if such a database exists. Also, one can argue that a dataset, which enables causal evidence, adds more value to societal knowledge, compared to previously available datasets, from which only correlations could be deduced if an important goal is to inform the policy debate. However, both of these methods require identifying which empirical result from a publica-tion can be attributed to which dataset.

### Lessons learned from competition

#### Related literature

Extracting dataset citations from publications is a fairly difficult task because of the variety of dataset ci-tation formats and the absence of training data (for a recent overview of data retrieval see Koesten et al., 2019). Boland et al (2012) propose a weakly supervised approach, using a pattern induction method for the detection of study references in full texts. They use a corpus of 259 publications from the Social Science Open Access Repository (SSOAR). They use a bootstrapping approach, starting with a small corpus of manually created training instances. The resulting system InfoLink now informs SSOAR.

Boland and Mathiak (2015) describe dataset extraction as a twofold task, finding dataset citation string and following entity resolution (match the string to the correct entity/ DOI). Concerning entity resolution, they report the difficulty of broad survey dataset citations that ignore data variability (such as years, ver-sions, questionnaire variants, etc.), motivating a dataset taxonomy. Named dataset citations are often underspecified allowing identification of the survey but not of the precise dataset (which of multiple sub-samples, aggregation levels, survey modes, etc.).

Zhang et al (2016) also use a bootstrapping approach to extract dataset citations from 116 computer science journals publications. Ghavimi et al. (2016) use a similar approach for social science papers finding datasets with well-documented metadata. According to them, only 25% of all dataset citations are given in the references, highlighting the unstructured citation culture for datasets. We advance from these with an environment with less available dataset metadata and a corpus of publications from a va-riety of fields for our purposes. To tackle this, we continue with a larger hand-curated annotated corpus.

Metadata schemas for datasets are available, such as DataCite metadata schema and the da|ra metadata schema, which complies with the DataCite schema (Helbig et al. 2014). They offer dataset taxonomies and standardized citation propositions, however their categories do not optimally support automatic search and extraction, if no unique dataset identification (such as a DOI) is used. In the con-text of central banks that provide microdata, recent progress has been made in the context of INEXDA. A metadata standard (in line with DataCite) has been developed (Bender et al. 2018) and datasets pro-vided by the RDSC are all DOI registered.

Improving dataset citation is high on the scientific agenda in recent years. This notably includes promot-ing widespread usage of persistent and unique dataset identifiers. As available datasets spread across a large number of databases, identification of datasets is important for reproducibility and to credit data creation efforts to incentivize data creation and publication (Lagoze and Vilhuber 2017, McMurry et al. 2017, Mooney and Newton 2012). If unique and persistent dataset identification in publications were available, Ball and Duke (2011) raise the idea of dataset impact factors with such information.

#### Dataset mentions

This section presents lessons that we learned throughout the duration of the competition. We organise this section around the three sets of information that where the main focus of the competition: datasets mentions, research fields, and (statistical) methods used. We begin by describing our a priori expectation of what a dataset is. We did not delve into definitions of a dataset but rather considered it sufficiently defined for our purposes (as empirical social scientists and for the competition).

Since our approach depends on getting to know the user-perspective, we thought it plausible to let usage in empirical papers define a dataset for the purpose of the competition. Having a background in working at a large provider of financial data, we had a vague idea that all datasets would look like those the RDSC provides access to, which consist mostly of collections of structured data in matrix or database form. These datasets typically are defined by a name and with a well-defined scope, thus allowing clear citation, probably including a unique dataset identifier (such as a Digital Object Identifier, DOI).

##### Lesson #1: datasets fall into two broad categories

Since the corpus of publication used for the competition spanned different domains (like healthcare, ed-ucation, and others), we quickly realized that our dataset image had an econocentric bias. In social sci-ence, we learned, datasets can be categorized into two broad categories for the purposes of extraction. First, there are named datasets, i.e. well defined, usually large-scale and publicized datasets (e.g. Com-pustat).

Generally, named dataset mentions are short strings in the publications, have commonly used abbrevia-tions (e.g. MMSR), and often containing institution name or name of commercial data vendor. Some-times (rarely, but increasingly) these datasets can be identified by a unique digital object identifier (DOI). These datasets are usually well-defined in scope and time, with formal documentation available. While data is usually collected with a specific purpose in mind, such datasets are be used across multiple pa-pers and research domains.

The second dataset category is what we call created datasets. By created dataset we understand da-tasets usually collected or built by authors of a publication for the purpose of analysing one specific re-search question. Often, created data comes in the form of small-scale surveys, (structured) interviews, or randomized controlled trials, RCTs. Such data normally does not have a trademark name, but instead one or multiple paragraph descriptions in the publication. Dataset information is blended together with information on data collection and sampling methods. Data reference at its most condensed form then comes in a structure like “we interview a given number of participants in a given region suffering from a given disease and code responses in the following way”.

In contrast to named datasets, created datasets usually are not referred to by a specific string or com-monly used abbreviation. Data collection is usually paper specific, and the universe of existing datasets are not easily searchable. This makes it hard for text mining algorithms to correctly extract strings refer-ring to dataset entities. Specific created datasets are harder to use for follow-up research, and reproduc-ibility is given only if publishers provide data together with the paper. Therefore, the lack of unique iden-tification and search terms renders data collection potentially redundant and dataset spread not optimal.

##### Lesson #2: Fractions of dataset category are domain specific

Throughout the competition duration it became clear that the fraction of named and created datasets varies across social science domains. Since different fields of social sciences rely on different identifica-tion techniques and differing potentials for conducting RCTs, the predominantly used data sources natu-rally vary. This has important repercussions for designing a competition, since algorithm performance and later recommendation system performance varies with the input corpus and the application field.

The number of datasets used per empirical paper (linked data) also varies across research areas. This number is also dependent on named vs. created datasets. In fields with widespread use of multiple da-tasets at once, the added value of recommending additional useful data might be expected to be higher than in fields that create study-specific data every time. Conversely, one could argue that the marginal utility of adding additional datasets is decreasing.

The optimal way forward is to start a data recommendation system for research field with higher ex-pected marginal utility from additional datasets. In our view, these are research areas with widespread usage of named datasets. Named datasets are constructed without the concrete research question in mind. That is why information to answer a particular research question often has to be obtained from more than one data source and is particularly true in empirical economic and finance research.

##### Lesson #3: Unique identification of datasets remains an issue

From the distinction above, one could make the argument that named datasets are easier to identify than created datasets. However, this is not the case, because the same dataset name can refer to multiple subsamples or waves of same datasets, and it is unclear where to make distinctions between dataset entities. This makes it difficult to identify the mentions referring to the same data points. Issues are, just to name a few, different time periods or subsamples, different states of data and states of knowledge, computational data pre-processing or enrichment steps. These identification issues render the current task of entity resolution of extracted dataset mentions complicated.

Unique dataset identification carries significant repercussions for reproducibility purposes, where identi-fying the exact data used for a study is paramount. For reproducibility purposes, the current solution to this dataset identification problem is the direct data upload to the publisher together with the publication. This is neither storage-efficient for large datasets nor feasible in the case of confidential microdata. A more flexible way to solve this issue is to assign unique identifiers (DOIs) to the datasets.

With a DOI (identifying the exact time frame, sampling universe, data version, wave, aggregations, state of knowledge, etc.), datasets are identified and quantitative research using confidential microdata is re-producible. To make lives easier, DOIs also drastically facilitate the automatized extraction of well-defined datasets from publications (comparable to largely standardized citations of other publications, allowing easy retrieval of publication networks, etc.).

Summarizing, if we successfully identify datasets and solve the issue of entity resolution, we can link and propose created datasets and thereby enable further research with such data, which takes up a notable fraction of publications in certain fields. While this task is harder than for named datasets, the potential for improvement remains larger as of today. For created datasets, too, DOI usage would be desirable; however encouragement or enforcement to use DOIs is harder in this case, because of a larger target group – authors instead of a limited number of data stewards. Even in case of widespread DOI usage for named datasets, the competition algorithms yield valuable results through the created datasets extraction in order to allow referencing and making available datasets used in the past for further analysis.

##### Lesson #4: Datasets mentions could indicate used for analysis vs. cited

After a discussion about dataset types and usage in fields, the last lesson that we learned about datasets concerns the mention of datasets in publications. These mentions come in two types. First, datasets used for empirical analysis and second, cited datasets in the literature review or references. Dataset citations (without empirical usage) can generally occur in the literature review section, even in theoretical, methodological papers, e.g. a given paper might report summary statistics based on datasets (“Author Y uses Compustat to…”). Sometimes differences between cited and used datasets are only semantic in nature. In well-written papers, the difference is usually fairly easy to distinguish for humans, but less clear for algorithms.

A key lesson we learned, is to think ahead of time, what the informational need is for the use-case at hand, used or cited datasets. Note that in an optimal setting, if information were available on the universe of datasets used for analysis in papers and on all publication citations, dataset citations would be redundant. This comes from the fact that a dataset citation in one publication is based on a dataset used for analysis in another publication and can be linked via available literature citations.

While literature citations are mostly standardized within research domains and are relatively straightfor-ward to extract (hence publication networks / publications maps exist), information on used datasets in papers remains incomplete (even after the competition). Because of this, for the competition, we asked for used and cited datasets. It is important to note, that extracted dataset citations are always incomplete, since some authors report aggregate statistics from a different paper, but not the data behind (“Smith et al show…”).

If well separated, through extracted dataset citations, one obtains a “dataset map”, thus the “closeness of datasets”, and network measures such as centrality distinguishing important datasets (“nodes”). Through extracted empirical dataset usage on the other hand, one obtains relevant information for our purposes, namely information relating to dataset similarity and joint usage possibilities from the user perspective. However, for our envisioned recommendation system, usage of cited data (“indirect” data usage) is a valuable feature, since it yields more limited data on dataset “purchases” of a user.

As training data for the algorithms it is important to include theoretical literature, essays, etc. in the corpus of publications. Obviously, this is helpful for algorithms to correctly identify true negatives, i.e. correctly identifying theoretical papers. For this task, distinguishing between cited and used datasets becomes relevant once again, because clearly separating theoretical papers that merely cite data from empirical papers depend on such a distinction.

#### Fields and Methods

The competition also asked participants to extract information about research fields and methods used in the publication. We want to gather this information from the user side, because data producers and annotators do not necessarily foresee all usage potential for their data and the point of our envisioned system is to increase user value. One such idea is to construct dataset similarity indices from the usage side, information is relevant not only on existing joint usage by others (“people like you often used dataset Y, too” – hence dataset extraction), but also on new dataset or linkage potentials (“this might also interest you based on your preferences”). For this, information is necessary on the context, how datasets are used.

##### Lesson #5: Think before you act: define fields and methods

To obtain the most relevant categories of research fields, we did not provide any thesauri to the compe-tition, on purpose. The rationale behind this was to see the unhindered creativity of teams, which availa-ble information sources they would use or not use (e.g. reference datasets, Wikipedia, archive.org, other repositories, thesauri, statistical clustering techniques, etc.). On the other hand, thesauri limit the cata-logue of potentially identifiable fields and methods, thus prohibiting new methods and fields to be identi-fied in fast-changing modern research areas. Also thesauri might disturb algorithm performance, since algorithm might be forced to categorize topics and fields to older or less exact categories than necessary.

However, using thesauri does have well-known advantages, as any librarian will confirm. These ad-vantages include easy clustering of similar fields and methods and a manageable category set of predic-tions. For field predictions, we generally face a fine line between too broad predictions (safe, but unin-formative) and too narrow predictions (narrow, but potentially wrong). A potential way out is backward induction here – we can present differently aggregated predictions for fields to users and get feedback from them (let users rank usability – “Was this helpful to you?”).

Concerning our definition of methods for the purpose of the competition, two questions arise. The first is the definition of statistical methods (i.e. inclusion of sampling methods, qualitative methods, etc.). Sec-ondly, there are multiple statistical methods in a publication (besides the main causal analysis, there can be methods reported for data preparation, sampling, baseline results, robustness checks, descriptive statistics, etc.) and issues of potential weighting of importance of these.

For useful new recommendations to be provided to researchers, we decide to include in statistical methods all methods that describe potential for a merge of datasets / joint usability, hence to include all the above listed. We consider a broad definition of methods, not only including high-level statistical methods, such as ordinary least squares, but also including the observed unit, time period or even re-gression equations. If two papers then use different datasets in the same field using the same methods, there is a relatively high likelihood that those datasets can be linked or used together to create new in-sights.

#### Discussion

Several decades ago, publication citation networks were constructed and to our knowledge no such un-dertaking has yet been done for datasets. This comes from the fact that no curated training data corpus is readily available in decent quality. Since no such data is available, we manually annotate papers for the competition and now propose to go forward with this in a larger scale.

We would have no need for this competition in a world with universal dataset identifier usage (such as DOIs). In such a scenario unique identification and standardized citations of datasets would be readily available. Since DOIs only now and slowly gain widespread application for datasets in social science, our task is a 1:n mapping of publications to datasets without unique identifiers. For scientific papers many journals already provide DOIs for papers.

There are ongoing efforts by journals to have all used data published for reproducibility reasons. Incen-tivizing researchers to provide unique identification of datasets used in papers is a logical next step. This will ensure reproducibility for confidential microdata and facilitate our use-cases. In the meantime, we show a way forward to learn from the current state of information and analytically use presently available information.

The competition highlights that datasets can be categorized in different dimensions for the purposes of extracting dataset mentions from publications. We propose a binary distinction of datasets into named as opposed to created datasets. As named datasets, we consider formal, large datasets by commercial or official institutions, often referenced in relatively standardized forms as commonly used abbreviations. Created datasets are those created for the specific purpose of one research question in mind. They are generally described in less standardized paragraphs. Usage of named versus created datasets varies across research areas.

Also varying across research areas is the number of datasets used per empirical paper. This number al-so depends on the spread of formal, named datasets as opposed to created datasets for single studies. In fields with widespread use of multiple datasets at once (linked data), the added value of recommending additional useful data might be expected to be higher than in fields that create study-specific data every time. Conversely, one could argue that the marginal utility of adding additional datasets is decreasing. The optimal way forward is to start a data recommendation system for research field with higher expected marginal utility from additional datasets.

### Conclusions

In this competition, we asked teams to extract datasets, fields and methods from a corpus of hand-annotated research publications. The value of the extracted information lies in informing a user-centric dataset recommendation system and thereby enabling optimal and timely spread of available datasets throughout the research community. Furthermore, such information allows us to compute dataset impact factors by obtaining data-driven information on which datasets underlie high-quality research outputs. This in turn is a proxy for societal benefits of data provision by research data centres, thus motivating in-vestment in data access infrastructure.

We introduce a circular model of the knowledge generating process, which increases in levels. From da-ta services, research is conducted, publications are published and user-specific knowledge is generated. Having such knowledge on dataset usage, data services in turn can be improved. Thereby the circle repeats on a higher level. The current competition works on strengthening the knowledge pillar as well as the transmission mechanisms from publications to knowledge to improved data services. [^Footnote3]

[^Footnote3]: For the future, ongoing effort is needed to support all four “corners of the circle” / “pillars of the level model”. The current competition strengthens the arrow from publication to knowledge and structures gained knowledge to improve data services. To support the data services pillar – for example -, digital RDC environments with facilitated access processes like a “data stewardship module” will in our view improve data access.

Automatic processing of generated knowledge in publications becomes increasingly available with mod-ern text analysis tools. Extracting such information is important, because timely and optimal usage of gained results increases the speed, by which findings can be incorporated into data services and thereby next-level research is enabled in turn. To further improve automatic processing, minimum standards for dataset taxonomy are needed. Harmonized metadata schemas for data sets – like the INEXDA metadata schema for central banks and statistical offices (compliant with and building upon DataCite) – offer such an approach.

The competition showcased that information extraction of the necessary information for such systems is possible. The delivered prototype algorithms prove this claim. With the proof of concept, there is a more substantiated case for investing in a larger hand-curated training corpus of annotated research papers. On the road towards a user-centric dataset recommendation and metadata system, the competition forced us to clarify organizational needs and methodological aspects.

For the way forward, it is important to note the importance of the research area on the strategic path to-wards a unified user-centric microdata recommendation system. The choice of the research domain will greatly influence algorithm performance. Since human effort in creating training data is expensive, one should deliberately pick research domains to start with. This arises because text extraction algorithms (and humans) struggle with informally described created datasets. The low-hanging fruits of prototyping dataset recommendation systems, usability indices etc. are easier to implement for research areas with a largely formalized dataset citation culture (however ultimately potential for benefits may well be larger in other research areas).

### References

-	Ball, A., and M. Duke (2011): How to cite datasets and link to publications. Digital Curation Centre.
-	Bender, S., Hausstein, B., & C. Hirsch (2018). An Introduction to INEXDA’s Metadata Schema. Technical Report 2018-02, Deutsche Bundesbank, Research Data and Service Centre.
-	Bender, S. and P. Staab (2015). The Bundesbank’s Research Data and Service Center (RDSC), Gateway to treasures of microdata on the German financial system. IFC Bulletin 41 (2015).
-	Boland, K., Ritze D., Eckert, K., & B. Mathiak (2012): Identifying references to datasets in publica-tions. Theory and Practice of Digital Libraries, pp. 150-161. Springer Berlin Heidelberg, http://doi.org/10.1007/978-3-642-33290-6_17
-	Ghavimi, B., Mayr, P., Vahdati, S., & C. Lange (2016). Identifying and improving dataset references in social sciences full texts. arXiv preprint arXiv:1603.01774.
-	Helbig K., Hausstein B., Koch U., Meichsner J., & A. Kempf (2014): da|ra Metadata Schema. Gesis Technical Reports 2014/17, DOI:10.4232/10.mdsdoc.3.1
-	Von Kalckreuth, U. (2014). A Research Data and Service Centre (RDSC) at the Deutsche Bundes-bank–a draft concept. IFC-Bulletin No 37, Irving-Fisher Comittee on Central Bank Statistics.
-	Koesten, L., Mayr, P., Groth, P., Simperl, E., & M. de Rijke (2019): Report on the DATA: SEARCH'18 workshop-Searching Data on the Web. ACM SIGIR Forum (Vol. 52, No. 1, pp. 117-124). ACM.
-	Boland, K. & B. Mathiak (2015). Challenges in Matching Dataset Citation Strings to Datasets in Social Science. D-Lib Magazine 21, 1/2.
-	McMurry, J. A., Juty, N., Blomberg, N., Burdett, T., Conlin, T., Conte, N., & A. Gonzalez-Beltran, A. (2017). Identifiers for the 21st century: How to design, provision, and reuse persistent identifiers to maximize utility and impact of life science data. PLoS biology, 15(6), e2001414.
-	Mooney, H, & M. P. Newton (2012): The anatomy of a data citation: Discovery, reuse, and credit.  eP1035-eP1035.
-	Schönberg, T. (2018): Data Access to Micro Data of the Deutsche Bundesbank. Bundesbank Tech-nical Report 2018-01.
-	Vilhuber, L. & C. Lagoze (2017): Making Confidential Data Part of Reproducible Research. Chance
-	Zhang, Q., Cheng, Q., Huang, Y., & W. Lu (2016). A bootstrapping-based method to automatically identify data-usage statements in publications. Journal of Data and Information Science, 1(1), 69-85.



---

# Chapter 3 - Digital Science Use Cases

Enriching context and enhancing engagement around datasets
==========================================================

Christian Herzog^1,a^, Daniel W Hook^1,2,3,b^, Mark Hahnel^1,c^, Stacy
Konkiel^1,d^, and Duane E. Williams^1,e^

^1^Digital Science, London, N1 9XW, UK

^2^Department of Physics, Washington University in St Louis, St Louis,
Missouri, USA

^3^Centre for Complexity Science, Imperial College London, London, SW7
2AZ, UK

(^a^[[https://orcid.org/0000-0002-9983-0033]{.underline}](https://orcid.org/0000-0002-9983-0033),
^b^[[https://orcid.org/0000-0001-9746-1193]{.underline}](https://orcid.org/0000-0001-9746-1193),
^c^[[https://orcid.org/0000-0003-4741-0309]{.underline}](https://orcid.org/0000-0003-4741-0309),
^d^[<https://orcid.org/0000-0002-0546-8257>]{.underline}
^e^[[https://orcid.org/0000-0002-2111-3413]{.underline}](https://orcid.org/0000-0002-2111-3413))

Introduction
------------

The relationship between research, researchers and data is changing.
Data has always played a critical role in scientific research, but in
recent years it has taken centre stage not only for the sciences but
also the social sciences, and it also now plays a significantly
increased role in the humanities. This change is being driven by two key
factors: First, the volume of research data that we have available is
growing rapidly; and, second, our ability to process and analyse these
data is growing as computers become faster and algorithms become more
powerful. While many researchers welcome having more data to work with,
the challenges in this new data-rich research world are not trivial.

The volumes of data that researchers have had to work with have been
steadily on the rise for many years. Big Science projects such as those
run by CERN have led the way in creating international infrastructures
for sharing, processing and analysing large datasets. In a very real
sense, the Internet itself is the result of the need for a global
infrastructure to support science. Grid computing is another piece of
infrastructure that was developed to support large international
collaborations. Looking at the research world from a high enough vantage
point and focusing on these large projects, however, misses the
challenges generated by a second wave of advances.

While many researchers now have large volumes of data, the technologies
developed to support the cutting-edge research projects of more than 20
years ago have become commoditised and are available to many researchers
at a fraction of their original cost: storage is cheap and data transfer
is fast. Technological issues are not, for the most part, at the centre
of today's challenges for our increasingly data-centric research world.
Rather it is infrastructure of a different sort that now needs to be
developed to support the research requirements of today.

In this short article, we discuss the needs of today's research system
for investment in two critical pieces of infrastructure that have not
kept pace with their technological counterparts mentioned above. These
missing pieces are information infrastructure and cultural
infrastructure. Both of these challenges are addressed in Digital
Science's Rich Context project. Through this project, our aim is to
provide 'enriched' information infrastructure around datasets. This
information includes details of the approach to data stewardship,
context of usage, code applied to the dataset in its production, as well
as code applied to the data to derive further results or translate it
for practical uses. All these factors add critical elements to the
research infrastructure. The cultural infrastructure involves creating
the incentives, triggers and frameworks that encourage the dataset
stewards, experts and users to contribute to these critical information
elements.

Information Infrastructure
--------------------------

It is important to understand that any successful information
infrastructure for research data will necessarily be deeply linked with
the culture of research. For clarity of presentation, we have decided to
present the challenges of the current information infrastructure and
those of our current cultural norms separately. However, at each stage
it is clear that each influences the other.

Information infrastructure can be defined as the collection of processes
and artefacts that are foundational to today's scholarly communications.
A simplified model of scholarly communications would have artefacts like
journals, journal articles, article metadata and citations. The
processes are peer review and scholarly search.

The members of the Royal Society did not have today's world in mind when
creating *Philosophical Transactions*, the first ever scientific
journal, 350 years ago. The infrastructures that have built up around
research publication since that time are powerful and persistent through
their ubiquity. Until very recently, we expected articles to be grouped
into journals, and published on a particular date. We expect there to be
a version of record that is in some sense the definitive record of a
piece of research.

But heavy use of data in a research problem, or data shared
collaboratively among colleagues across a research field, changes the
dynamic around the research record. Fields that use data increasingly
publish those data as a distinct output from a research article. Data
has become a principal research output, but lacks the infrastructure
that we have built up around the journal article (some experiments like
"data journals" have had only limited success, given that a static and
"flat" article is not a natural fit for publishing most data).

A dataset can change with time for many reasons: data may be added over
time, corrections may be issued, and so on. In these cases, it may be
appropriate to "version" the dataset (by issuing a persistent identifier
for a point-in-time snapshot for the dataset, allowing subsequent
changes to receive their own "versions"). But changes to a dataset may
have a knock-on effect on the interpretation of the data and may
fundamentally alter the research result that was originally reported.
Moreover, in many fields "Big Data" is so central that it not only puts
pressure on the community to establish an acceptable model of data
publication, but also puts significant stress on how we read, interpret,
and review research as a whole.

Many datasets are now so vast that we lack the ability as humans to
consume them in an easy way. Visualisation technologies and other tools
that allow us to interact with and sample data dynamically have received
significant attention in recent years, and have helped with the
interpretation of data in online environments. But it is simply
impossible to reduce some types of data to a single figure or printable
table, as would be the case for "traditional" journal publishing. By
attempting to do so, we miss the essence of the data and risk failing to
communicate data-driven conclusions accurately. This limitation of
current publication formats (e.g. static PDF files for articles) is an
issue that relates to the reproducibility crisis of modern research.

Peer review is another process that must change to account for data as a
"first class" research object. Historically, peer reviewers have ensured
that a piece of research is well-communicated and correct. This level of
peer review is difficult to apply in the context of research data. If
data is being published as a primary output, then it may be possible to
perform a kind of peer review by applying some statistical tests to a
sample of the data, or by using some other appropriate technique.
However, it is no longer practical in most cases to set up a parallel
experiment to reproduce data, as had been the case in years past. Across
all contexts there are good reasons for these challenges: the experiment
may be too costly to repeat, or the conditions of the original data
collection may not be replicable (for example, surveying stress levels
of the populace during a specific political event). In addition, ethical
considerations such as the anonymity of those being surveyed may make
certain types of data difficult to review. Thus, we must develop robust
and accepted approaches to peer review, not only for data itself but
also for those publications that are heavily based on data.

A number of publishing innovations have made journal articles more
discoverable and accessible in recent years, such as preprint servers,
DOIs, centralized search engines like Google Scholar and Dimensions,
etc., however, these do not translate directly across to research data.
Part of the reason for this is that there is a standard structure for an
academic article (e.g. abstracts, keywords, etc), which is specifically
designed around communication to humans. Solutions designed for data to
date still have a long way to go in that regard. For example, the core
fields required to create a valid DataCite record are identifier,
creator, title, publisher, publication year and resource type[^1]. All
other data fields are optional (e.g. location, funder, subject,
contributors) due to the fundamental uncertainty in what might
constitute research data in the future. This flexibility limits how data
can be discovered. It has taken some years for Web of Science, Google
and others to introduce functionality to search for datasets in their
discovery systems.

Clearly, technological infrastructure for data\--or lack thereof\--has
huge implications for the discovery, peer review, citation practices,
interpretation, and availability of data. These challenges are
interconnected with challenges we face when thinking about the cultural
infrastructure for data, as well.

Cultural Infrastructure
-----------------------

There are two main aspects to cultural infrastructure: incentives and
capability. Both of these aspects are strong drivers in how researchers
engage with research data, and their behaviours relating to sharing it
with others and making it available to external scrutiny.

Academics do not typically take up research careers for financial gain.
Rather, they choose to dedicate their lives to understanding a specific
problem partially in the hopes of discovering something that will make
them "successful" by some measure. Success, of course, can be understood
by looking at incentives for researchers. Researchers in many fields are
promoted by publishing in specific high-impact journals, leading to
funding success. Once you have demonstrated capability in this respect,
there is a virtuous cycle. More funding leads to a greater chance of
further publications in the "right" journals, which leads to more
funding.

There are no such incentives here for sharing data. In this context,
parting with the data that underpins your research gives rise to two
concerns. Firstly, that someone may find an error in your work and
discredit what you have done. Secondly, that someone else may not share
their own data but will gladly reuse yours if you make it available,
especially in fields where success is based on having more data to
analyse. That may be the difference between having a career where you
are well funded, promoted and have the ability to do research in the way
that you want, and having to leave the field.

A further level of inequity exists in which data-related jobs are valued
by the Academy. If a researcher happens to be particularly talented in
working with data curation, data analysis or data processing, there is
no track for recognising these talents. They are unlikely to be a first
author on a publication in a major journal due to their data wrangling
talents, and hence they have less of a chance of career progression than
researchers who take a more traditional "publish or perish" path with
their work as described above.

This set of perverse incentives means that people with the capability to
handle data are often incentivised to leave research. Hence, not only do
we have a problem of incentives in sharing and communicating data, but
we also have a problem in retaining people who have the capability that
we need to structure data so that it can be shared and built upon.

Capability for sharing data is the second aspect of the cultural
challenge that academia continues to wrestle with. Making data available
to others is generally accepted as a key part of the research
communication process. However, there are certain established norms
around when the data should be shared, and to what depth it is
shared[^2]; for example, in fields where human subjects research is
prevalent, there is a much more conservative attitude towards open data
than in fields like astronomy where data sharing is widely practiced,
given that data can be collected by only a handful of observatories and
telescopes worldwide.

In fields that are more applied, ensuring that data generated as a
result of a commercial relationship is protected is crucial. In such
fields, academics often have a better understanding of copyright,
intellectual property rights and licences[^3]. But outside of this
context, there is a general lack of understanding of these issues and
hence data are often not shared over concerns for a perceived legal
barrier.

Other concerns are ethical---for example, should these data be shared if
it might infringe the rights of the subjects of the research?
Researchers are beginning to become aware that, through the use of
algorithms, some data is not as well anonymised as it may first
appear[^4]. Anonymisation of data is a research field in and of
itself[^5].

Other concerns are simply practical---how do I make my data available in
a way that is meaningful to others? The work associated with making a
dataset generically machine-readable is challenging for many
researchers, who tend not to be experts in data handling. The work
associated with making a dataset human-understandable, reproducible and
fully contextualised is often significant. However, governments and
foundations have not necessarily prioritised these activities in their
grant programs (though this is changing)[^6]^,^[^7].

Enriching context
-----------------

While we at Digital Science cannot solve all the issues raised here, the
points discussed do offer a blueprint for a generalised approach to
handling and thinking about research data and what it means to be a
researcher in the current research paradigm. We believe that a
significant step in changing the perception of data and those who handle
data is to increase the contextuality of research data.

There are two important pieces of infrastructure that need to be
introduced. Firstly, a version of CredIT for research data[^8], whereby
all contributors to a dataset's feeding and care over time are
recognized, valued, and encoded in machine-readable ways^.^ Such a
system would be crucial in providing incentives towards data sharing,
both making it possible to recognize "data wranglers" who could advance
their career in-turn, and also by making it much easier for universities
to track and reward those who are contributing towards the kinds of open
access that are often discussed in university mission statements and
faculty council decrees. The second piece of crucial infrastructure
needed is, a set of tools that allow research data to be discovered and
contextualised. In this section, we will focus on the latter challenge.

When we built Dimensions, the ability to contextualise any piece of
research was a strong driver for our work[^9]. The idea that all
research happens in a particular place at a particular time, carried out
by a set of people, some of whom may be affiliated with a research
institution, gives a set of metadata that allows us the "weak context"
of a piece of research. By "weak context" we mean that the context being
provided gives no deep understanding of the context of an article to a
non-expert and is essentially indistinguishable from standard metadata.
But with modern data mining approaches, it is possible to add a "strong
context".

Strong contextualisation of research should provide a user with rich
information about the research including funding, other research
produced as part of the larger project (e.g. related publications,
clinical trials, etc), and details of the research that was built on top
of it. This information should also fit into, trends and graphical
representations that offer a more complete, more rapid understanding of
how research fits into the larger field, related fields, or the context
of the publishing journal or supporting institution. For example, for a
research article, we should be able to quickly understand how many
researchers are in a related field, whether the field is growing, how
old the field is, how much funding has been deployed in the field, which
countries have provided that funding, whether the field has begun the
translation to application through patents or clinical trials, or
whether it has been used as a basis for the formulation of policy.

Context can also be offered in the data that we provide to understand
the reach and influence of research.

Alternative metrics ("altmetrics") are data from the social web that run
orthogonal to classic citation measures, which can be seen to add
significant context to an article -- extending our understanding of how
different cohorts of potential users of the research are engaging with
it. For example, we can use altmetrics to understand if an article is
being mentioned in the news, in which geographical regions it is being
noticed, whether it is being used as part of a teaching syllabus, and
many other kinds of public and non-traditional scholarly engagement.
These data can then be visualized in creative ways to add instant
additional context to engagement with a research article (see Fig. 1).

![](combined_images/chap03_image1.png){width="7.270833333333333in"
height="2.5277777777777777in"}

*Figure 1: Different types of context tracked by Altmetric.com for any
research output.  
(Reproduced by permission of Altmetric.com)*

How datasets are used in research more broadly is another important
piece of context that many data search engines lack. This is where the
Rich Context project comes in. During the Rich Context project, we
explored using Dimensions' freely available public interface as a
destination for researchers who seek context around datasets.

Such context for research data and its impacts could be offered in the
form of in-app badges and other "signposts" that connect data with its
larger context. Such a contextualizing badge could include not only the
number of citations that the dataset has received, but also whether the
data has been versioned (through Figshare's repository metadata),
discussed online (through Altmetric data), and what kind of tools and
insights have been built on top of the data (through rich mining of
full-text and citation data available in the ReadCube reference
management corpus and in Dimensions).

Correctly developed and accepted by the community, this type of
information can make a contribution to solving many of the problems
highlighted in this article. If the correct contextual facets can be
developed, then recognition would be easier to assign to those who have
contributed to the process of creating and maintaining datasets. With
greater context around them, datasets become easier to locate,
understand and value. This in turn could lead to a broader evaluative
environment and more engagement from academics.

Engagement across academia, however, is not uniform. Mechanisms need to
be provided to engage data science-focused researchers from whom more
details of their tools, scripts and codebooks could be drawn, adding
further value to research data. At the same time, engagement tools need
to allow data scientists to leverage this information so that it is
valuable to them when they are the consumers of search results. These
are subtly different use cases from those of standard researchers. By
mining ever more open research systems wherein data is being analyzed
(e.g. Gigantum, Github, etc), we can start to integrate these other
crucial engagement contexts as well.

![https://lh5.googleusercontent.com/3OunhdD8OksXbG5n9dlxQZ4vHfq3ytZuYahLuNwnXG2oaJ7vSpCkCULgc\_8tpapwUqzFLsALR6Xcrhl2ZgyYtvxOhg2kfoXeAJ1MoibnK0liPl2w6xhvoMye-lGtyopkM0ja1xnB](combined_images/chap03_image2.png){width="4.543310367454068in"
height="4.776042213473316in"}

*Figure 2: Mock-up of a research data badge helping to contextualise a
set of search results.*

![https://lh5.googleusercontent.com/51fefhu7zEe3Y61OD1vbe-Bl9EiBI8IUUj1FOnP7NLLexSqDO7cJrzBeuzmwUR7eC84AQKmcMwDcTKW3trd7-vnNiyelvHvEOdM\_Da5OgEoTYh5lvrz8wfxWzTH2\_5DJjfgwe9Ed](combined_images/chap03_image3.png){width="4.163163823272091in"
height="4.505208880139983in"}

*Figure 3: Mock-up of a research data badge helping to contextualise a
specific dataset.*

In Figures 2 and 3, we have mocked up some early thinking for how a
contextualized research data badge could look. This visualisation is
based on insights from the Rich Context project and uses data that could
be mined from articles that use a specific dataset. In particular, we
have suggested four initial facets of context that both data
science-focused researchers and others could find helpful when viewing a
dataset:

-   **Experts** **who have made use of the data**, sourced from
    references made to the dataset in a professional context such as an
    industry whitepaper or policy document

-   **Academics** that **cite the data**, mined from citation of the
    dataset or ancillary data in the peer reviewed literature

-   **End users of the data**, sourced from code book references
    included in public code repositories

-   **Enhancements of the data**, vis-à-vis annotations and comments
    made on the data in public forums.

In summary, we believe that, if deployed across the many environments in
which researchers discover data (including and beyond Dimensions), the
thinking behind the Rich Context project can overcome current
infrastructural challenges to significantly extend the contextualisation
of datasets. The number and variety of datasets in use in academia will
certainly expand in the future, and we can only see data becoming even
more central to contemporary research efforts. As such, it is critical
to invest in robust infrastructures, not only to support the production
and sharing of these data, but also to change the culture and evaluative
environment around research data. It is only through initiatives such as
these that we will be able to solve the vast and complex sociotechnical
challenges that face academia today.

[^1]: Support.datacite.org. (2019). *DataCite Metadata Schema 4.0*.
    \[online\] Available at: https://support.datacite.org/docs/schema-40
    \[Accessed 1 Jul. 2019\].

[^2]: Linek SB, Fecher B, Friesike S, Hebing M (2017) Data sharing as
    social dilemma: Influence of the researcher's personality. PLOS ONE
    12(8): e0183216. doi: 10.1371/journal.pone.0183216

[^3]: Treadway, J., Hahnel, M., Leonelli, S., Penny, D., et al.
    (2016) The State of Open Data Report. \[Online\]. Available from:
    doi:10.6084/m9.figshare.4036398.v1 \[Accessed: 1 July 2019\].

[^4]: Siddle, J. (2019). *I Know Where You Were Last Summer: London\'s
    public bike data is telling everyone where you\'ve been*. \[online\]
    Vartree.blogspot.com. Available at:
    https://vartree.blogspot.com/2014/04/i-know-where-you-were-last-summer.html
    \[Accessed 1 Jul. 2019\].

[^5]: Li, N., Li, T. and Venkatasubramanian, S. (2007). t-Closeness:
    Privacy Beyond k-Anonymity and l-Diversity. *2007 IEEE 23rd
    International Conference on Data Engineering*.

[^6]: Rdmtoolkit.jisc.ac.uk. (2019). *Research Data Management Toolkit
    \| Jisc*. \[online\] Available at:
    https://rdmtoolkit.jisc.ac.uk/plan-and-design/data-management-planning/
    \[Accessed 1 Jul. 2019\].

[^7]: Nnlm.gov. (2019). *Data Management Plan \| NNLM*. \[online\]
    Available at: https://nnlm.gov/data/data-management-plan \[Accessed
    1 Jul. 2019\].

[^8]: Allen, L., Brand, A., Scott, J., Hlava, M., Altman, M., (2014)
    Nature 508, 312--313. doi:10.1038/508312a.

[^9]: Hook, D.W., Herzog, C. and Porter, S.j. (2018) Front. Res. Metr.
    Anal. doi:10.3389/frma.2018.00023


---

# Chapter 4 - Metadata for Social Science Datasets

> Metadata for Administrative and Social Science Data

Robert B Allen

\[0000-0002-4059-2587\]

rba\@boballen.info

Data are valuable but finding the right data is often difficult. This
chapter reviews current approaches and issues for metadata about numeric
data and data sets that may facilitate the identification of relevant
data. In addition, the chapter reviews how metadata support
repositories, portals, and services. There are emerging metadata
standards but they are applied unevenly so that there is no
comprehensive approach. There has been greater emphasis on structural
issues than on semantic descriptions.

INTRODUCTION
============

Evidence-based policy needs relevant data (Commission on Evidence-Based
Policy, 2018; Lane, 2016). Such data is valuable, but often difficult to
find and/or replicate. The FAIR Open Access guidelines suggest that,
ideally, data should be Findable, Accessible, Interoperable, and
Reusable.[^1] Therefore, data curation and stewardship is needed.

While data may include text, image, or video, here we focus on numeric
observations recorded and maintained in machine-readable form. There are
many data sets of such observations available online; the DataCite[^2]
repository alone contains over five million. There are many different
types of data sets. Data sets differ in their structure, their source,
and their use. In some cases, they are single vectors of data; in other
cases, they comprise all the data associated with one study or across a
group of related data sets. Following the approach of W3C-DCAT (World
Wide Web Consortium-Data Catalog Vocabulary)[^3], a data set may be a
collection of related observations which is developed and managed by a
single entity such as a statistical agency. When stored as a unit
online, the data set is a digital object.

Metadata consists of short descriptors which refer to a digital object.
Metadata can support users in finding data sets, and enable users to
know what is in them. However, there is tremendous variability in the
types of metadata and how they are applied. One categorization of
metadata identifies structural (or technical), administrative, and
descriptive metadata. Structural metadata includes the organization of
the files. Administrative metadata describes the permissions, rights,
and usage. Descriptive metadata covers the contents.

This chapter surveys the state of the art of metadata for numeric data
sets, focusing on metadata for administrative and social science
records. Administrative records describe details about the state of the
world as collected by organizations or agencies. They include
governmental records, hospital records, educational records, and
business records. By comparison, social science data generally is
collected for the purpose of developing or applying theory.

Section 2 describes data, metadata, and digital objects. Section 3
discusses semantics. Section 4 considers repositories. Section 5
describes services. Section 6 describes the techniques for documenting
the internal structure of data sets. Section 7 discusses
cyberinfrastructure.

DATA, METADATA, AND DIGITAL DATA OBJECTS
========================================

A metadata element describes some attribute of a digital object. The
simplest metadata identifies the digital object.[^4] Individual metadata
elements are generally part of a set which describes attributes of a
data set. Such a set of metadata elements can be structured as a
catalog, schema, or frame, and restrictions can be placed on the values
allowed for the individual elements. A fragment of an example of the
Schema.org[^5] dataset schema is shown in Figure 1. Note the distinct
metadata elements in that fragment.

Figure 1: Fragment of schema.org dataset schema[^6].

The W3C DCAT[^7] is a schema standard for data sets that is used by many
repositories such as data.gov. Other structured frameworks for data sets
include the DataCite[^8] metadata schema and the Inter-university
Consortium for Political and Social Research Data Documentation
Initiative (ICPSR DDI) discussed below (Section 4.1). The catalog
specifications provide a flexible framework. For instance, DCAT allows
the inclusion of metadata elements drawn from domain schema and
ontologies. Some of these domain schemas are widely used resources which
DCAT refers to as assets. For instance, spatial relationships are often
modeled by the Federal Geographic Data Committee (FGDC) standard.[^9]

Many of the implementations for indexing collections of metadata schemas
use relational databases. Thus, they use SQL and support tools such as
data dictionaries. Moreover, they are often characterized by Unified
Modeling Language (UML) Class Diagrams which are common for data
modeling.

SEMANTIC DESCRIPTIONS
=====================

Semantic data models have become widely explored. In particular, the
Semantic Web utilizes nodes which are implemented with XML. RDF
(Resource Description Framework) extends XML by requiring triples which
assert a relationship (property) between two identifiers:
"identifier"-"property"-"identifier". By connecting triples, RDF can
define a graph network of the relationships among a set of controlled
vocabulary terms; this is the essence of linked data.

RDFS (RDF Schema) extends RDF by supporting class/subclass
relationships. The classes allowed for identifiers in RDFS triples are
controlled by domain and range parameters. Traditional thesauri have a
simple hierarchical structure, the Simple Knowledge Organization System
(SKOS) is an RDFS standard for a machine-processable representation of
thesauri. Many administrative and social-science-related thesauri such
as EDGAR, and those of the World Bank, and the OECD have now been
implemented with SKOS. In addition, a knowledge graph is a model of a
domain, sometimes including instances, which may be implemented in SKOS.
For example, DBpedia[^10] is a knowledge graph based on Wikipedia.

Some frameworks for structural descriptions of data sets include aspects
of ontologies. For example, less formal ontologies simply provide
definitions and employ RDFS. Similarly, Schema.org schemas can be used
with micro-formats which match schema elements with passages in an
online text. Schema.org has a classification of topics and may
incorporate other systems such as FOAF (Friend of a Friend) which
includes attributes associated with people. Formal ontologies use OWL
(Web Ontology Language) to add features to RDFS. These features lend
themselves to logical inference provided that the entities and
relationships are rigorously defined.

Upper ontologies provide top-down structures for the types of entities
allowed in derivative domain and application ontologies. One of the best
known upper ontologies is the Basic Formal Ontology (BFO) (Arp, Smith, &
Spear, 2015), which is a realist, Aristotelian approach. At the
top-level, BFO distinguishes between Continuants (endurants) and
Occurrents (perdurants) and also between Universals and Particulars
(instances). Many biological ontologies have been developed based on BFO
and are collected in the Open Biomedical Ontology (OBO) Foundry.

There are fewer rich ontologies dealing with social science content than
there are for natural science. One challenge is "social ontology", that
is, developing definitions for social terms. It is difficult to define
exactly what is a family, a crime, or money. In most cases, an
operational definition or an approximate definition may suffice where
structured documentation of the definitions are unavailable. Moreover,
while social terms are especially difficult to define for vernacular
speech, it seems possible to make clear, though perhaps cumbersome,
definitions for scholarly applications.

DATA REPOSITORIES
=================

A data repository holds data sets and related digital objects. It
provides access to the data sets and supports search. Metadata is
integral to these services at several levels. In addition to item-level
metadata for the data sets, there can also be study-level metadata or
collection-level metadata.

The Inter-University Consortium for Political and Social Research (ICPSR)
-------------------------------------------------------------------------

ICPSR[^11] is a major repository of public-use social science and
administrative data sets derived from questionnaires and surveys. The
ICPSR DDI[^12] (e.g., Vardigan, Heus, & Thomas, 2009) defines a catalog
code. A notable feature is a codebook which saves the exact wording of
all the questions. In addition, the ICPSR provides an index of all
variable names that are used in the data sets. DDI-Lifecycle is an
extension of DDI that describes the broader context in which the survey
was administered as well as the details about the preservation of the
file (see Section 5.3).

Repositories of Governmental and NGO Statistical Agencies
---------------------------------------------------------

Statistical data collection is a core function of government. Most
countries have national statistical agencies. While these statistical
collections often emphasize social data, they also include related
indicators such as agricultural and industrial output and housing, such
as Statistics New Zealand, and the Korean Social Science Data Archive
(KOSSDA). European data sets are maintained in the Consortium of
European Social Science Data Archives (CESSDA)[^13] and the European
Social Survey.[^14] Australia has a broad data management initiative,
ANDS.[^15] Many U.S. governmental data sets are collected at
data.gov.[^16] In addition, there are many non-governmental and
inter-governmental agencies such as the OECD, the World Bank, and the
United Nations, which host data sets.

Other Data Repositories
-----------------------

Many data sets are produced, curated, and used in the natural sciences
such as astronomy and geosciences. Some of these data sets have highly
automated data collection, elaborate archives and established curation
methods. Many of these repositories include multiple data sets for which
access is supported with portals or data cubes (see Section 6.1). For
instance, massive amounts of geophysical data and related text documents
are collected in the EarthCube[^17] portal. The Science.gov portal is
established by the U.S. Office of Science Technology and Policy. NASA
supports approximately 25 different data portals. Each satellite in the
Earth Observation System (EOS) may provide hundreds of streams of
data,[^18] with much common metadata. This provides a context analogous
to study-level metadata. Likewise, there are massive genomics and
proteomics data sets which are accessible via portals such as
UniProt[^19] and the Protein Data Bank[^20] along with suites of tools
for exploring them. Similarly, there are very large data sets from
medical research such as from clinical trials and from clinical practice
including Electronic Health Records (EHRs).

Ecosystem of Texts and Data Sets
--------------------------------

Data sets are often associated with text reports. For example, the Dryad
Digital Repository[^21] hosts data sets from scholarly publications
which require the deposit of data associated with scholarly papers
accepted for publication. In addition, data sets may be cited in much
the same way that research reports are cited. Formal citation
facilitates tracing the origins of data used in analyses and helps to
acknowledge the work of the creators of the data sets. Standards have
been developed for such citations (Martone, 2014; Silvello, 2017).

SERVICES
========

The purpose of metadata and other aspects of information organization
and management is to provide services to users. Indeed, "service
science" is an approach in information technology which focuses on the
design and delivery of services rather than on underlying technologies.

Search
------

Searching for data sets differs from the familiar web-based text search
because data repositories are generally hosted by either relational
databases or semantic triplestores. Even where the data are stored on
separate servers the metadata can be harvested and searched. This type
of federated search is supported by the Open Archives Initiative
Protocol for Metadata Harvesting (OAI-PMH);[^22] both data.gov and ICPSR
use OAI-PMH.

From Statistical Packages to Virtual Research Environments
----------------------------------------------------------

There is an increasingly rich set of analytic tools. Some of the
earliest tools were statistical packages such as SPSS, R, SAS, and
STATA. These were gradually enhanced with data visualization and other
analytic software. The current generation of tools such as Jupyter,
RSpace, and eLab notebooks (ELN) integrate annotations, workflows, raw
data, and data analysis into one platform. In addition, some
repositories have developed their own powerful data exploration tools
such as ICPSR Colectica[^23] for DDI and the GSS Data Explorer[^24].
Virtual research environments (VREs) are typically organized by research
communities to coordinate data sets with search and analytic tools. For
instance, the Virtual Astronomy Observation (VAO) uses Jupyter to
provide users with a robust research environment. WissKI[^25] is a
platform for coordinating digital humanities data sets which are based
on Drupal.

Preservation
------------

Lost data is often irreplaceable. Even if the data is not entirely lost,
users need confidence that the quality of stored data has not been
compromised. Moreover, although data storage prices are declining
dramatically, we cannot save everything and the cost of maintaining a
trusted repository remains substantial. Many of these challenges are
familiar from traditional archives. For instance, selection policies
typical in archives could help in controlling the many poorly documented
data sets in some repositories. Yet, prioritization is difficult[^26]
(Whyte & Wilson, 2010).

The Open Archival Information System (OAIS) provides a reference model
for the management of archives (Lee, 2010). The OAIS framework has been
incorporated into the ICPSR DDI-Lifecycle model. The Integrated
Rule-Oriented Data System (iRODS)[^27] is a policy-based archival
management system developed for large data stores. It implements a
service-oriented architecture (SOA) to support best practices
established by archivists.

Provenance records the history of an entity. This can help to ensure
confidence in its authenticity. For data in a repository, provenance
often means tracing the history of repository operations. The history of
transitions is often recorded as event data, where the events are what
happened to the data in the dataset. Typically, provenance ontologies
include actors, events, and digital objects. Potentially, blockchains
could provide an even greater level of trust in digital provenance.

Metadata Quality and Metadata Management
----------------------------------------

Metadata, whether for texts or data sets, needs to be complete,
consistent, standardized, machine processable, and timely (Park, 2009).
A metadata editor supports the assignment of quality metadata (e.g.,
Gonclaves, O'Conner, et al., 2019). When collections or metadata
standards change, the repository librarian must revise metadata (Tonkin,
2009). This might be particularly needed when updating metadata from
data streams[^28] such as those from satellite downlinks or smart-city
sensors.

Although survey results are generally aggregated across individuals,
individual-level data is sometimes very useful. Some repositories of
survey data include micro-data, data for the responses that individuals
gave to survey questions.[^29] Currently, there are no distinct metadata
tags for such data; they are embedded into repository data. Moreover,
the individual level of analysis raises privacy concerns and needs to be
carefully managed; at the least, access should be limited to qualified
researchers.

Metadata registries, such as the Marine Metadata Interoperability
Ontology Registry and Repository,[^30] record usage. The Registry of
Research Data Repositories (re3data registry),[^31] which is operated by
DataCite, links to more than 2000 different repositories each of which
holds many data sets. Each of the repositories is described by the
re3data.org schema for the description of research data repositories
(Rücknagel, Vierkant, et al., 2015).

Metadata application profiles provide constraints on the types of
entities that can be included in the metadata for a given application.
For instance, DCAT Application Profiles (DCAT-AP) support standardized
metadata exchange between repositories in different jurisdictions in the
EU.[^32]

DETAILS ABOUT THE DATA IN DATA SETS
===================================

Data Cubes
----------

Many notable data management techniques were originally developed for
managing and processing business data.[^33] One such technique is data
cubes, which support access to multidimensional data. They present data
as if it filled cells of a high-dimensional cube, even if the data will
probably not fill all of the cells. Users can generate different views
of the data by drilling-down, rolling-up, and slicing-and-dicing across
cells. For complex data sets, there will be many dimensions. To
facilitate retrieval, there can be a rich pre-coordinated index for
common queries; other queries can be implemented with slower methods
such as hashing or B-trees.

Data cubes have been extended beyond business information processing to
cubes such as the Statistical Data and Metadata eXchange (*SDMX) used in
the financial services industry and the* W3C Data Cube[^34] standard
that is applied in projects such as EarthCube.

Sequential Activities and Modeling Research
-------------------------------------------

Entities change over time, yet knowledge representation frameworks
rarely model change. In order to represent changes, models need to
represent transitions, processes, and other sequential activities. Such
modeling is closer to the Unified Modeling Language (UML) or even
programming languages than to ontologies. In fact, modeling change is
routine for state machines, Petri nets, and other transition models. A
"model-layer" that allows general statements to be made about sequential
activities could incorporate both ontology and transitionals (Allen &
Kim, 2018).

Models of sequential activities include workflows and mechanisms (e.g.,
Allen, 2018). A workflow is a structure for managing a sequence of
activities and is a natural fit for describing research methods and
analyses (Austin, Bloom, et al., 2017). The Taverna workflow tool has
been widely used in the MyExperiment[^35] project, which provides a
framework for capturing and posting research methods and incorporates
ontologies such as FOAF.

Allen (2015, 2018) has proposed direct representation of entire research
reports. This approach uses a programming language that blends upper
ontologies with object-oriented programming to do semantic modeling.
Beyond modeling events, it is also possible to use structured
argumentation and assertions in scientific research reports.
Potentially, social mechanisms (e.g., Hedstrom & Ylikoski, 2010) and
community models could be implemented. Further, highly-structured
evidence and claims might be applied to the evaluation of evidence-based
social policy.

CYBERINFRASTRUCTURE
===================

Information Institutions and Organizations
------------------------------------------

Libraries and archives (whether traditional or digital) have the
mission, and often the resources, to develop standards and maintain
information over the long-term. As noted earlier (Section 5.3),
preservation is the fundamental concern for archival collections.
Information institutions often have formal collection management
strategies, metrics, and policies. These include Web and repository
metrics and analytics, usage statistics such as reports of how many
downloads were made from data sets, and procedures for updates and
formatting standards.

In addition to traditional information institutions, there are now many
other players. These new players have slightly different mandates. For
example, Schema.org's primary mission is to provide a structure that
improves indexing by search engine companies. Nonetheless, these
organizations often adopt best practices similar to those of traditional
information organizations.

CrossRef[^36] and DataCite are DOI registration agencies. CrossRef is a
portal to metadata for scholarly articles, while DataCite provides
metadata for digital objects associated with research. Increasingly, the
two projects are coordinating. ORCID iDs[^37] are persistent digital
identifiers assigned to authors. The emergence of structured identifiers
such as DOIs and ORCID iDs has allowed the development of services such
as VIVO[^38] and the Microsoft Academic Graph (MAG)[^39] which allow
authors to be tracked across research reports and projects, and across
publishers.

Cloud Technologies, Software as a Service, and the Internet of Things
---------------------------------------------------------------------

We are now well into the era of cloud computing (Foster & Gannon, 2017),
allowing flexible allocation of computing, networking and storage
resources, which facilitates Software as a Service (SaaS). The
compatibility of the versions of software packages needed for data
management is often a challenge. Containers, such as those from Docker,
allow compatible versions of software to be assembled and run on a
virtual computer. A container could hold datasets, workflows, and the
programs used to analyze the data, making the analyses readily
replicable. Highly-networked data centers also facilitate the Internet
of Things (IoT) which will generate massive data sets such as for "smart
cities".

CONCLUSION
==========

Data may not be useful when stand-alone without context. Some of the
biggest issues for the retrieval of information from data sets concern
information organization, which help provide context. Metadata supports
the discovery of and access to data sets. We need richer, more
systematic, and more interoperable metadata standards. Even more
attention to metadata would further support evidence-based policy.

ACKNOWLEDGMENTS {#acknowledgments .ListParagraph}
===============

Julia Lane and members of NYU's Center for Urban Science and Progress
provided useful advice and comments.

REFERENCES {#references .ListParagraph}
==========

Allen, R.B. (2015). Repositories with direct representation, *Networked
Knowledge Representation Systems,* arXiv: 1512.09070

Allen, R.B. (2018). *Issues for Using Semantic Modeling to Represent
Mechanisms*, arXiv:1812.11431

Allen, R.B., & Kim, YH. (2017/2018). Semantic Modeling with Foundries,
arXiv:1801.00725

Arp, R., Smith, B., & Spear, A.D. (2015). *Building Ontologies with
Basic Formal Ontology*, MIT Press, Cambridge. MA.

Austin, C.C., Bloom, T., Dallmeier-Tiessen, S., Khodiyar, V.K., Murphy,
F., Nurnberger, A., et al. (2017). Key components of data publishing:
Using current best practices to develop a reference model for data
publishing. *In[ternational Journal on Digital
Libraries](https://link.springer.com/journal/799), 18*(2) 77--92, doi:
10.1007/s00799-016-0178-2

Commission on Evidence-Based Policymaking. (2018). The Promise of
Evidence-Based Policymaking, <https://www.cep.gov/cep-final-report.html>

Foster, I., & Gannon, D.B. (2017). Cloud Computing for Science and
Engineering, MIT Press, Cambridge, MA.

Gonçalves, R.S., O\'Connor, M.J., Martínez-Romero, M., Egyedi, A.L.,
Willrett, D., Graybeal, J., & Musen, M.A. (2019). *The CEDAR workbench:
an ontology-assisted environment for authoring metadata that describe
scientific experiments*. arXiv: 1905.06480

Hedström, P., & Ylikoski, P. (2010). Causal mechanisms in the social
sciences. *Annual Review of Sociology*, *36* 49-67.

Lane, J. (2016). Big data for public policy: The quadruple helix,
*Journal Policy Analysis and Management, 35*(3), doi:
[**10.1002/pam.21921**](https://doi.org/10.1002/pam.21921)

Lee, C.A. (2010). Open Archival Information System (OAIS) Reference
Model. *Encyclopedia of Library and Information Sciences* (3^rd^
Edition). CRC Press, doi: 10.1081/E-ELIS3-120044377

Martone M. (ed.) (2014). *Joint Declaration of Data Citation
Principles*. San Diego CA: FORCE11, Data Citation Synthesis Group:
<https://www.force11.org/group/joint-declaration-data-citation-principles-final>

Park, JR., Metadata quality in digital repositories: A survey of the
current state of the art. *Cataloging & Classification Quarterly, 47*,
213--228, 2009, doi: 10.1080/01639370902737240

Rücknagel, J., Vierkant, P., Ulrich, R., Kloska, G., Schnepf, E.,
Fichtmüller, D. et al. (2015): Metadata Schema for the Description of
Research Data Repositories: version 3.0 (29), doi: 10.2312/re3.008

Silvello, G. (2018). Theory and practice of data citation. *Journal of
the Association for Information Science and Technology, 69*(1) 6-20.
doi: 10.1002/asi.23917

Starr, J., Castro, E., Crosas, M., Dumontier, M., Downs**, R.R.,**
Duerr, R., et al. (2015). Achieving human and machine accessibility of
cited data in scholarly publications, *PeerJ Computer Science* 1: e1,
doi 10.7717/peerj-cs.1

Tonkin, E., (2009). MetRe [supporting the metadata revision
process.](https://research-information.bristol.ac.uk/en/publications/metre-supporting-the-metadata-revision-process(b2fa9a79-e50b-4888-b510-336aacf73da5).html)
*International Conference on Digital Libraries*,

Vardigan, M., Heus,P., & Thomas, W. (2008). Data documentation
initiative: Toward a standard for the social sciences. *International
Journal of Digital Curation. **3*****(1). doi:**
[10.2218/ijdc.v3i1.45](https://doi.org/10.2218/ijdc.v3i1.45)

Whyte, A. & Wilson, A. (2010). How to appraise and select research data
for curation. *DCC How-to Guides. Edinburgh*: Digital Curation Centre.
http://www.dcc.ac.uk/resources/how-guides

Wilkinson, M.D.,
[Dumontier](https://www.nature.com/articles/sdata201618#auth-2), M.,
Aalbersberg, I.J.J., Appleton, G., Axton, M., Baak. A., et al. (2016).
The FAIR guiding principles for scientific data management and
stewardship, *Scientific Data, 3*, 160018. doi: 10.1038/sdata.2016.18

[^1]: The FAIR Guidelines have been extended from scholarly texts to
    data sets (Wilkinson,
    [Dumontier](https://www.nature.com/articles/sdata201618#auth-2), et
    al., 2018).

[^2]: <https://datacite.org/>

[^3]: <https://www.w3.org/TR/vocab-dcat/>

[^4]: Such operators need to be unambiguous. For example, Digital Object
    Identifiers (DOIs, <http://doi.org>) were developed for scholarly
    journals and are assigned by publishers, with a part of the DOI code
    being a unique publisher ID. While the DOIs may identify more than
    one data set, version numbers distinguish the data sets. For
    instance, the entire GSS (General Social Survey) has only one DOI,
    but it is possible to drill down through the different data sets by
    specifying version numbers.

[^5]: Schema.org is a project of a consortium of search-engine
    companies. The Schema.org dataset schema
    (<https://schema.org/Dataset>) is used by the Google Data Search.

[^6]:

[^7]: https://www.w3.org/TR/vocab-dcat/

[^8]: <https://schema.datacite.org/>

[^9]: <https://www.fgdc.gov/>

[^10]: <https://wiki.dbpedia.org/>

[^11]: <https://www.icpsr.umich.edu/icpsrweb/>

[^12]: <https://www.ddialliance.org/>. Note that the Data Documentation
    Initiative (DDI) is different from the Data Discovery Index (DDI)
    associated with DataMed.

[^13]: [https://www.cessda.eu/]{.underline}

[^14]: <https://www.europeansocialsurvey.org/data/>

[^15]: The Australia National Data Service, <https://www.ands.org.au/>

[^16]: There are additional collections at <http://data.census.gov>,
    <http://gss.norc.org>. [ ]{.underline} <http://electionstudies.org>,
    <http://psidonline.isr.umich.edu>, and <http://www.nlsinfo.org>.

[^17]: <https://www.earthcube.org/>

[^18]: <https://pds.nasa.gov/>

[^19]: <https://www.uniprot.org/>

[^20]: <http://www.rcsb.org/>

[^21]: <https://datadryad.org/>

[^22]: <https://www.openarchives.org/pmh/>

[^23]: <https://www.colectica.com/>

[^24]: <https://gssdataexplorer.norc.org/>

[^25]: <http://wiss-ki.eu>

[^26]: <http://www.dcc.ac.uk/>

[^27]: <http://irods.org>

[^28]: <http://schema.org/dataset/datastreams>

[^29]: The term micro-data is used in two distinct ways. In the context
    of HTML, it is associated with embedding Schema.org codes into web
    pages similar to micro-formats. In the context of survey data, it
    refers to individual-level data.

[^30]: <https://mmisw.org/>

[^31]: <https://www.re3data.org/>

[^32]: <https://joinup.ec.europa.eu/release/dcat-ap/11>

[^33]: E.g., Online Analytical Processing (OLAP), Enterprise Data
    Warehouses (EDW), and Decision Support Systems (DSS).

[^34]: <https://www.w3.org/TR/vocab-data-cube/>

[^35]: <https://www.myexperiment.org/home>

[^36]: <https://www.crossref.org/>

[^37]: <https://orcid.org/>

[^38]: <https://duraspace.org/vivo/>

[^39]: <https://www.microsoft.com/en-us/research/project/microsoft-academic-graph/>

---

# Chapter 5 - Compettion Design

**Andrew Gordon, Ekaterina Levitskaya, Jonathan Morgan, Paco Nathan and
Sophie Rand - New York University**

We hosted a competition to address the problem of automating information
extraction from publications. The goal of the competition was to develop
and identify the best text analysis and machine learning techniques to
find datasets in empirical scientific publications and use that
information to discover relationships between data sets, researchers,
publications, research methods, and fields. The results were expected to
help to create a rich context for empirical research -- and build new
metrics to describe data use. This is an open-source project, and we
sought to generate models that could be continuously improved upon
through engagement with the research community.

This paper describes how the competition was designed and discusses the
lessons learned.

Competition Design

The design approach followed the successful approach developed in the
Natural Language Processing (NLP) domain, which developed a series of
competition patterns for inspiring disparate groups of researchers to
help to carry out information tasks against text data. These include
more basic competitions where data is provided to groups and they are
allowed to train and then submit a number of runs of their models
against a subset of evaluation data[^1]. We were also inspired by the
design of the 2015 PatentsView Inventor Disambiguation Technical
Workshop[^2].

Competition Design in Phases

The competition had two phases. In each of the two phases, competing
teams were given text and metadata for 5,000 publications and single set
of metadata on 10,348 data sets of interest, shared between the two
phases, for use in training and testing their models. Separate
5,000-publication samples were provided for each phase. The corpus[^3]
included data maintained by Deutsche Bundesbank and the set of public
data sets hosted by the Inter-university Consortium for Political and
Social Research (ICPSR). In addition, a single 100-publication
development fold was provided separate from the training and testing
data to serve as a test for packaging of each team's model, and as a
quick test of their model and the quality of its output. After the first
phase, the phase 1 holdout was also provided to phase 2 competitors to
serve as additional training and testing data.

All publication text provided to teams was either open access (freely
available) or licensed from the publisher for use in the contest. For
each publication, participants were provided with PDF and plain text
versions of each publication together with basic metadata. Copyright and
licensing around research publications limited what publications could
be accessed, licensed, and distributed for the competition, and so our
universe of publications was limited to publications that were either
open access, or published by Sage Publications.

At the end of each phase, competing teams packaged their models into a
docker container. Then these containers were run on AWS by the
competition organizers, evaluating the holdout data to generate
predictions that were used to evaluate the teams.

Phase 1
-------

In the first phase, each publication was labeled to indicate which of
the datasets from the master list were referenced within and what
specific text was used to refer to each dataset. The teams used this
data to train and tune algorithms to detect mentions of data in
publication text and, when a data set in our list is mentioned, tie each
mention to the appropriate data set.

The annotated portion of the two sets of publications were drawn from a
set of publications provided by Bundesbank that referenced their data
and the publications captured in the ICPSR catalog, which had been
manually annotated as having used a particular data set for analysis.
These publications were collected in a database application designed to
facilitate a mix of human and automated content analysis of
publications. They were then filtered into two sets: those that were
open access, and so could be shared publicly, and those that were not
open access, but that were available from our publisher partner (Sage
Publications, or "Sage"). Of the 5,100 total publications with annotated
data citations provided to phase 1 participants, the 2,550 publications
in the train-test corpus (2,500) and development fold (50) were randomly
selected from the open access set, so they could be distributed freely
to all participants. The 2,500 in the holdout were randomly selected
from the remainder of the open access set plus those available from
Sage. The un-annotated publications used in phase 1 were all published
by Sage: the 2,550 non-annotated publications in the train-test corpus
(2,500) and development fold (50) were open access publications from
Sage journals. The 2,500 un-annotated publications used in the holdout
evaluation corpus were sampled from across Sage Publications' journal
holdings including non-open access journals.

Both the train-test publications and the holdout publications were
broken into 2,500 publications each that used one or more of the data
sets of interest for analysis, as compiled by ICPSR and Bundesbank
staff, and 2,500 publications that had not been annotated and had been
filtered to not contain data. The data set citations were captured in a
separate data set citations JSON file. The citations for the phase 1
train-test publications were provided to competition teams to use as
training data, while the citations in the phase 1 holdout were used to
test the quality of each team's model in phase 1, and given to teams as
additional training data in phase 2.

Each team was allowed up to 2 test runs against the evaluation corpus
before final submission. The final models of each group were evaluated
against the holdout corpus, along with a random qualitative review of
the mentions, methods, and fields detected by the team's model.
Submissions were primarily scored on the accuracy of techniques, the
quality of documentation and code, the efficiency of the algorithm, and
the quality and novelty of the methods and research fields inferred for
each of the publications.

Four finalist teams were then selected to participate in the second
phase, the teams from: Allen Institute for Artificial Intelligence,
United States; GESIS at the University of Mannheim, Germany; Paderborn
University, Germany; and KAIST in South Korea.

Phase 2
-------

In the second phase, finalists were provided with a new training corpus
of 5000 unlabeled publications and asked to discover which of the
datasets from the first phase's data catalog were used in each
publication, as well as infer associated research methods and fields. As
in the first phase, teams were scored on the accuracy of their
techniques, the quality of their documentation and code, the efficiency
of their algorithm, and the quality and novelty of the methods and
research fields inferred for each of the publications.

We worked with Sage to find publications in six key topic areas of
interest for partners and future projects (Education, Health care,
Agriculture, Finance, Criminal justice, and Welfare). For 28,769
matches, Sage provided PDFs for each and we parsed the text (see details
below), removing any that did not parse, or that resulted in file sizes
smaller than 20KB, reducing the size of the sample to 25,888. We looked
at publication year and type to see if we needed to filter out older
publications or non-academic publications, but there were few enough of
each class (644 pre-2000 publications and 3,115 non-research articles)
that we decided we'd keep all in to preserve as much potential for
heterogeneity as possible. From these 25,888 publications, we then
randomly selected a total of 10,000 with the goal to keep the
distribution across the 6 topic areas equal (so 1666 randomly selected
in 2 topic areas, 1667 randomly selected in the other 4). Then, we split
the phase 2 corpus to give half to participants and keep half back for
evaluation, maintaining equal distribution between the topic areas
within each set of 5,000 publications.

Operational Issues

Converting PDF files
--------------------

Plain text provided for each publication was derived from that
publication's PDF file by the competition organizers. It was not
intended to be a gold standard, but to serve as an option in case a team
preferred not to allocate resources to PDF parsing. Articles were
converted from PDF to text using the open source "pdftotext"
application. There are multiple drawbacks with this approach, such as
losing many artifacts from PDF formatting, converting multi-column
layouts to output text, and losing tables and chart information.
Competition participants were encouraged to try their own conversion
process if this text did not meet their needs, and if so we asked them
to supply documentation so we could build a set of PDF processing
strategies to reuse in the future.

Data Sets
---------

Competitors were provided with two sets of data related to detecting
data sets: 1) a catalog of all of the data sets of interest that models
were tasked with finding in publications, including basic metadata for
all and a list of verbatim mention text snippets for those that were
cited in the train-test data; and 2) a subset of these data sets that
were actually specifically annotated as having been used for analysis in
a given publication.

The data set catalog, provided to participants in the JSON file
data\_sets.json, contained metadata for all public datasets in the ICPSR
data repository and a subset of public data sets available from Deutsche
Bundesbank. It includes all data sets cited in the train-test and
evaluation corpora, plus many others not cited in either.

A major challenge with the corpus development was that ICPSR captured
when a given data set was used in analysis within a particular
publication, but did not capture how that determination was made. To
provide better data for participants, we implemented a human content
analysis protocol to capture mention text for each data set-publication
pair included in our train-test corpus. Since we manually created this
data, given limited time and resources, we initially only did this work
for data sets that the teams would be using for training and testing in
phase 1. The list of data sets cited in a particular publication is also
not exhaustive, because the ICPSR staff only tagged datasets that were
ICPSR data and used in analysis.

### Data Set Mention Annotation Process

A long term goal is to facilitate the building of generalized models
that are not overly dependent on the use of formal titles of data sets.
We aim for models that know of and use the language of discussing and
using data to recognize where data is discussed in a particular article
and then identify which data sets. The ICPSR data contains many explicit
ties between publications and data sets that would have been hard to
come by otherwise, but the lack of any indication of which parts of the
publication indicated the citation relationship made it difficult to
identify the linguistic context within the publication that captured the
relationship.

To make it easier for participants in the competition to efficiently and
systematically engage with the language used to discuss data, we
developed a content analysis protocol and accompanying web-based coding
application so human coders could examine all of the data set citations
in our train-test corpus and capture mention text for each. This
required human workers to examine each data set citation in the context
of its publication (there were X citations in 2500 training
publications) to identify and mark locations in the text where each data
set was referenced.

Because of the manual effort required, we only did this for the 2,500
train-test publications that referenced data provided to the teams. We
did not manually annotate mention text in the 2,500 publications in the
phase 1 holdout, and this made that data a little less useful for teams
when it was given to them in phase 2.

Our team of coders was spread across the United States, and so we used a
web-based application with a central database store to allow our
distributed team of coders to work in parallel. The basic unit of work
was a publication-data set pair (so a given publication would be
examined as many times as it had different data sets cited within it).

The ICPSR data set repository is very fine-grained in definition of a
data set, so each year of an ongoing survey, for example, might have its
own data set. To save time, we eventually created the concept of a data
set family for these types of data sets and assigned coding for any one
instance in a family to all other instances from that family within a
given publication. So, for example, multiple years of the same survey or
longitudinal data collection were related to each other in a family, and
then coding for one year within a paper was used for all other years
cited in that paper.

The general process was as follows:

each user was assigned a list of citations to code.

Once the user logged in to the coding tool, they were presented with a
list of the coding tasks assigned to them that included a status of
each, so they could track which they had already completed, and a link
for each to the coding page.

Once the user loads a particular citation for coding, they are presented
with the following coding page, and are asked to follow the coding
instructions in the codebook/documentation for the annotation tool[^4]

![image2.png](combined_images/chap05_figure1.png){width="6.5in"
height="3.486111111111111in"}

*Figure 1. Interface showing a publication and its related mention
capturing.*

Coders were instructed to find terms that relate to mentions of the
dataset and avoid general synonyms of those terms (for example, tagging
"ANS survey" instead of only "survey"). If the phrase provides
additional information about collection of the dataset, the mention is
tagged twice. For example, in the case of "ANS survey
collected/conducted by X", "ANS survey" is captured first, and then "ANS
survey collected/conducted by X". At the same time, we tried to avoid
including too much descriptive information of the dataset. The task is
just to code the specific mentions of a particular dataset, including
alternate names (e.g. abbreviations, etc.), rather than trying to
capture full text in which the data set is discussed.

In total, a team of 5 coders, with a background in text analytics for
policy research and computational linguistics, completed the task. The
results were then used to re-render data\_sets.json and the
data\_set\_citations.json file for the phase 1 train-test data to
include mentions.

This combined protocol and tool were developed in-house both because of
time considerations and because some of the off-the-shelf text
annotators and Qualitative Analysis tools such as lighttag.io,
tag.works, NVivo, Atlas.ti, MAXQDA did not handle distributed workflows.

Methods and Fields
------------------

For the task of detecting methods and fields for a given publication,
our goals were broader than simply providing a vocabulary for each and
asking the teams to classify publications against them. We want to
encourage development of models that not only can figure out when a
given publication is a part of an existing field or uses an existing
method, but that also understand enough about fields and methods such
that they can be used to detect new fields and methods as they emerge,
and can then be used to look back through time for traces of these new
fields and methods to track their growth and evolution.

We did not give any formal set of either methods or fields that
participants needed to train models to classify from. Instead, we
provided examples of taxonomies of methods and fields that Sage
Publications uses to classify their publications, and we directed
participants to use them as an example, but to try to make models that
would be more creative and potentially able to find new, emerging, or
novel fields rather than just fit a publication to a term from a
predefined taxonomy. This decision to forego use of an existing taxonomy
showed the complexity of the problem of understanding fields and methods
well enough to detect them based on linguistic context. Some teams
limited themselves to the vocabularies we defined, and the results were
uninspiring. Some teams tried to detect based on text, but ended up with
a lot of noise and few relevant terms.

In addition, we also learned that there is complexity in "methods" that
lumping all methods together did not account for: methods could mean
many things, and we started to find sub-categories that we wish we had
broken this into: statistical methods, analysis methods, data collection
and creation methods, etc.

For future work, for each of these types of information, we intend to
first work to decide what exactly we mean by "fields" and "methods",
then find or develop one or more taxonomies to precisely capture what we
mean. Once we have these taxonomies, we'll focus separately on building
models to classify publications to them, and making models to extend and
update them.

Developing a submission process
-------------------------------

The submission process was designed to make it as straightforward and
easy as possible for a team to package their model for submission,
including minimizing the understanding needed to use technologies chosen
for packaging and deployment and having a built-in way to automatically
run the model over the dev fold to validate processing of standard input
formats and creation of required output formats. We also wanted to
minimize the installation and configuration work needed on part of
competition organizers to replicate computing environments as part of
model submission process and maximize our ability to see and be able to
test how each submission environment is set up, and so avoid accepting a
blackbox that could contain anything (including malicious code or
sneaky/clever tricks). The git repository[^5] was integral to our
framework, but was not used directly by participants. Its code
repository was solely used as a home for the code, scripts, and files
that made up our submission framework.

Participants were instructed to work within the "project" folder in
their work folder, get their code working first on their local machine,
then set up a docker container using the provided example files and get
the model running there, to isolate problems with docker from problems
with their model. Participants were allowed 2 test submissions before
the final submission, and most groups took us up on those test
submissions in phases 1 and 2. All groups were able to work within the
"code.sh" and "project.py" files in "project" to get their model to run,
so no further customizations were needed.

Running a Submitted Model
-------------------------

Once a model was submitted, the competition organizers followed a
standard script for running the model and processing its output for
analysis. Throughout this process, the evaluator communicated any
problems with the participant team and worked with the team to address
problems and turn around a new version of the model as quickly as
possible. If a team's model performed poorly on the standard size
machine, we also would sometimes try different sizes of server to give
them an idea of whether their problem was related to needing more
compute power, or was a limitation of their approach independent of
available resources.

Evaluation

In both phases of the competition, we evaluated raw mentions, research
fields, and research methods separate from citation of named data sets.

Phase 1 Evaluation
------------------

### Mentions, Methods and Fields

In phase 1, expert social science judges evaluated mentions, methods,
and fields in two ways: 1) we randomly selected 10 publications to
manually examine each team's output against, and made notes of good and
bad for each team, then ranked the teams within each publication; and 2)
we generated distributions of all values found across all publications
within each type of value, counted the occurrences of each, compared the
distributions across teams, and ranked the teams based on how their
distributions compared. To create overall rankings, the judges met,
compared notes and individual rankings, and then agreed on an overall
ranking of the teams.

### Data Set Citations

To evaluate data set citations in phase 1, we used the ICPSR citation
data as our evaluation baseline for creating a confusion matrix based on
how each team's citation findings compared to ICPSR's baseline, and we
calculated precision, recall, and F1 scores from the confusion matrix to
compare across teams. To create the confusion matrix for each team, we
started with a list of all of the data set-publication pairs found
either in ICPSR's baseline or the team's output. We created found-or-not
(1 or 0) vectors for every publication-data set pair for the baseline,
and for the team. Then, for each data set-publication pair, we compared
the values between the baseline vector and the team vector to decide how
to update the confusion matrix for that pair: if a team agreed with
ICPSR on presence of a data set, that was counted as a true positive
(TP). If the team found a data set that ICPSR did not, that was counted
as a false positive (FP). If a team missed a data set ICPSR indicated
was present, it was counted as a false negative (FN). We did not develop
a way to capture true negatives since the metrics we used to evaluate
did not require it. In addition, as part of the processing to create the
overall confusion matrix, we created per-publication confusion matrices
for each publication, so we could track average false positives and
false negatives per publication, and highlight publications that were
higher than the average, for more detailed evaluation.

We also deferred figuring out "mentioned" vs. "used in analysis" in our
initial competition, to make the initial task more manageable. This
decision, combined with the traits of the ICPSR data, caused substantial
noise in the phase 1 precision/recall/F1 scores. For example, even
models that figured out that a longitudinal data set was present
sometimes got many false positives and false negatives because they got
the years wrong, and models that correctly found ICPSR data sets used in
discussion had those counted as false positives because ICPSR had only
captured data sets used in analysis.

Phase 2 Evaluation
------------------

### Mentions, Methods and Fields

In evaluating phase 2, we kept the division between mentions, fields,
and methods and citations, but we refined our evaluation methods based
on what we'd learned in the first phase. We kept the basic strategy of:
1) comparing the values created by each team's model in the context of a
set of selected publications and 2) reviewing the overall distributions
of values for each team.

We expanded the number of publications across which we compared values
to make the sample reviewed more representative, though, and created a
web-based tool to help judges deal with the added work from more
publications to review. We also selected publications differently for
data mentions from fields and methods, choosing publications with
different levels of agreement between the teams on whether data was
present or not, to start to evaluate the different model's ability to
detect data at all, in addition to comparing the results when they
thought a publication contained data.

For fields and methods (and data set citations), we selected 20
publications for each of our 6 topic areas of interest (Education,
Health care, Agriculture, Finance, Criminal justice, and Welfare) with a
few extras (2 extra in finance and 1 extra in criminal justice), for a
total of 123 publications to compare values across. Within the 20
publications per topic area, we worked through a random selection of
articles picking publications to add to our sample to fill out a rough
ratio within each topic area of 5:4:1 between publications with titled
data sets (5); data described, but not titled (4); and no data (1).

To make it easier for the judges to work through this increased number
of publications, we also created a tool that collected the output for
each team side-by-side per publication along with a link to each
publication's PDF, and had a place for the judge to score each team's
output for a given publication from among "--1", "0", and "1". Once
judges scored all output, we then created rankings based on the sum of
each team's scores.

![image1.png](combined_images/chap05_figure2.png){width="6.5in" height="5.0in"}

For manual evaluation of data set mentions, we used the same tool
described above, but we chose a different sample of 60 publications
based on agreement between the output of the different participant team
models as to whether publications had data mentions. We then asked a
separate pair of qualitative judges to use the tool to compare and
evaluate the data set mentions generated by the teams across these
publications.

### Data Set Citations

Our analysis of data set citations in phase 2 required a more
substantial rethinking since we did not have any starting point for
presence or absence of data like the ICPSR corpus. We implemented a
method of creating a confusion matrix that could be used to generate
precision, recall, and F1 scores more closely aligned with the task we'd
assigned the teams to implement - finding mentions of data and data sets
within publications.

To implement this, we started with the sample of 123 publications used
for evaluating mentions and fields above and:

Captured all "data references" within each of those publications using a
new human coding protocol. This included external titled data sets
either discussed or used in analysis, external data without a title that
was discussed or used in analysis, and data created by the researcher
for a given study.

For each data reference, we compared all mentions and citations created
by each team for the publication to the information on the data
reference within that publication and marked any that were "related" to
the data reference.

Finally, we used the list of references as a baseline and built a
confusion matrix based on whether each team had found mentions or
citations "related" to each of the data references, along with a "false
positive" record where the baseline was always 0 and the team was
assigned a 1 if they had one or more mentions or citations that were not
"related" to any data reference.

To capture data references in our sample of publications, we created a
basic protocol for an initial round of data creation then evaluated the
results throughout the rest of the process. We used a single data
reference coder to encourage consistency in output. We tried to capture
detailed context on each reference in order to make it easier for
reviewers of this data to evaluate the quality of each data reference
and to give more context for judges deciding if mentions and citations
for a given team were "related" to a given data reference.

After the data references were captured, a team of coders then looked at
each data reference related to the selected publications for each team
to see if data set citations and mentions by the team were "related" to
the data reference. The coders, subject matter experts in the different
key topic areas, looked at each "data reference" in publications in
their area of expertise. For each, they evaluated it against the
mentions and citations output by the model of each team that found
mentions or citations in the selected publication. For each
reference-team pair, the coder flagged any mentions or citations they
deemed "related to" the current data reference[^6].

![image3.png](combined_images/chap05_figure3.png){width="6.5in" height="5.0in"}As one
would expect, while we got coders on the same page, each had subtly
different ideas about what was or was not "related to". To remove some
of this variability from our final data, we then had a sole experienced
researcher who understood what we were trying to do review all coding
and, when he saw coding that obviously did not fit his understanding,
either: revise to fit his understanding of "related to"; or flag as one
he was unsure of and note his thoughts. This experienced researcher also
served as a final reviewer of the data references that were collected,
marking any that did not actually refer to data as needing to be removed
from our final analysis. Finally, the protocol designer reviewed all
removed data references, corrections, and ambiguities flagged for
additional review, and made a final set of corrections.

Scoring the Results
-------------------

To create a "related to" confusion matrix for each team, we started with
a list of all of the data references that our final reviewers indicated
should be included in our analysis (165 total). We created found-or-not
(1 or 0) vectors with a value for every reference set to 1 for the
baseline, and then set based on our coding for each team. For each
publication, we also included a false positive item that was always 0
for the baseline, and that was set to 1 for a given team if they had any
mentions or citations that were not "related to" a data reference from
that publication.

We did not develop a way to capture true negatives since the metrics we
used to evaluate did not require it.

Lessons learned

The docker-based model submission process worked well for competition,
but subsequent use of the models by Digital Science and Bundesbank has
shown that more precise design of how the models work within their
docker container and the APIs they provide is necessary if packaged
models are to be be used to produce reusable APIs. For example, to be
readily able to be used within an existing environment, the model needs
to be able to be invoked from a simple unit of code (a python function,
for example), rather than needing to spin up an instance of a container
each time you want results.

To facilitate re-use, we need much more detailed specification of how
the participants should implement their models. For example:

If a submission is implementing multiple tasks, each should be broken
into its own separate API so it can be used separately (so separate
services for mention detection, field detection, and data detection).

We need to better specify how we expect the models to be re-trained, in
particular elements of the model we expect to be easily changed and
which we expect would require a full retraining to tune. For example, we
hoped to be able to easily switch out the data sets of interest that are
detected specifically without needing to retrain on a full corpus
referring to those data sets, but we didn't mention this, and none of
the models worked this way.

We also learned that that while the data for the competition was an
excellent starting point, it has some drawbacks. The base ICPSR data did
not include mention text. It only identified ICPSR data that were used
for analysis. Hence, for the majority of data sets, the only text
available for characterizing a data set was the title and a paragraph of
description with no examples of how the data would be discussed within a
publication. A further drawback was that while data signatures of
interest in the real world might just be clusters of key terms without a
formal title, the competition data did not have that information.

We consider the competition design to have been effective. We got a good
number of participants, the resulting models were interesting and some
of the solutions were novel and surprisingly effective given their
novelty, and discussions after the competition lead to collaborations
between pairs of sponsors and participants and collective work on making
a gold standard corpus that could be used to develop better models in
the future (a great step toward higher quality models). The models also
ended up being re-usable as they are, though in a limited scope, and
Bundesbank has been able to run them and get output of high enough
quality that it is useful to them.

There remains substantial work needed to move this effort forward,
however. The next iteration of the competition is tentatively scheduled
to begin at the end of 2020, and in this round, we are exploring options
for building out a better corpus that combine manual, automated and
crowd-sourced means of annotating data. We are working on a more
standardized and carefully designed model packaging framework, to
facilitate re-use. We are also working on more detailed specifications
of model requirements (ability to retrain on data sets of interest
without needing a whole new corpus of train-test data, for example).

*Jonathan Morgan designed and implemented the data annotation and
evaluation strategies and the first draft of our model packaging
framework. Andrew Gordon sampled and prepared the corpus for processing
and for distribution to participants. Ekaterina Levitskaya helped with
the design of refinement of coding protocols and did a substantial
amount of the data annotation. Jonathan and Andrew worked together to
collect and run submissions for the competition and summarize the output
for the judges.*

[^1]: Soboroff, I. M., Ounis, I., Lin, J., & Macdonald, C. (2013).
    Overview of the TREC--2012 Microblog Track. NIST Special Publication
    500--298: The Twenty-First Text REtrieval Conference Proceedings
    (TREC 2012), 2012, 20. Retrieved from
    [[https://www.nist.gov/publications/overview-trec--2012-microblog-track]{.underline}](https://www.nist.gov/publications/overview-trec%E2%80%932012-microblog-track)

[^2]: See
    [[http://www.patentsview.org/community/workshop-2015]{.underline}](http://www.patentsview.org/community/workshop-2015)

[^3]: For details about the metadata provided for each type of data, see
    [[https://github.com/Coleridge-Initiative/rich-context-competition/wiki/Dataset-Description]{.underline}](https://github.com/Coleridge-Initiative/rich-context-competition/wiki/Dataset-Description)

[^4]: For more details, including an FAQ that provides guidance on
    specific issues that arose during coding, e.g., how to handle data
    sets that span multiple years, see the content analysis protocol
    [[https://docs.google.com/document/d/1xuZL\_-z1re6TO3Sv8\_9tdFk7z6ovyqTwDVgc1bYO3Ag/edit?usp=sharing]{.underline}](https://docs.google.com/document/d/1xuZL_-z1re6TO3Sv8_9tdFk7z6ovyqTwDVgc1bYO3Ag/edit?usp=sharing)

[^5]: [[https://github.com/Coleridge-Initiative/rich-context-competition]{.underline}](https://github.com/Coleridge-Initiative/rich-context-competition)

[^6]: The protocol is described in
    [[https://docs.google.com/document/d/1Hi13N6gfiRz9nfwCoUQrey8v\_ozY7fKHMtHV4GgX2ys/edit]{.underline}](https://docs.google.com/document/d/1Hi13N6gfiRz9nfwCoUQrey8v_ozY7fKHMtHV4GgX2ys/edit)

---

# Chapter 6 - Finding datasets in publications: The Allen Institute for Artificial Intelligence approach

---
author:
- |
    Daniel King, Waleed Ammar, Iz Beltagy, Christine Betts  
    **Suchin Gururangan and Madeleine van Zuylen**  
      
    Allen Institute for Artificial Intelligence, Seattle, WA, USA  
    daniel  @allenai.org  
bibliography:
- 'acl2015.bib'
title: The AI2 Submission at The Rich Context Competition
---

[Introduction](#sec:intro)
============

The Allen Institute for Artificial Intelligence (AI2) is a non-profit
research institute founded by Paul G. Allen with the goal of advancing
artificial intelligence research for the common good. One of the major
undertakings at AI2 is to develop an equitable, unbiased software
platform (Semantic Scholar)[^1] for finding relevant information in the
scientific literature. Semantic Scholar extracts meaningful structures
in a paper (e.g., images, entities, relationships) and links them to
other artifacts when possible (e.g., knowledge bases, GitHub
repositories), hence our interest in the rich context competition (RCC).
In particular, we participated in the RCC in order to explore methods
for extracting and linking datasets used in papers. At the time of this
writing, Semantic Scholar comprehensively covers the computer science
and biomedical literature, and we plan to expand our coverage in 2019 to
other scientific areas, including social sciences.

In the following sections, we describe our approach to the three tasks
of the RCC competition:
1. extracting the datasets used in publications,
2. predicting the field of research of publications
3. extracting the methods used in publications

[Methods](#sec:methods)
=======

[Dataset Extraction and Linking](#sec:datasets_methods)
------------------------------

This task focuses on identifying datasets used in a scientific paper.
Datasets which are merely mentioned but not used in the research paper
are not of interest. This task has two sub-tasks:

1.  Citation prediction: extraction and linking to a provided knowledge
    base of *known datasets*, and

2.  Mention prediction: extraction of both *known and unknown* dataset
    mentions.

### Provided Data ###

The provided knowledge base of known datasets includes approximately 10K
datasets used in social science research. The high textual similarity between
different datasets in the knowledge base informs our approach for linking dataset
mentions to their dataset in the knowledge base. Approximately 10% of the datasets in the
knowledge base were linked one or more times in the provided corpus of
5K papers. To attempt to generalize mention discovery beyond those present in the knowledge base, we train a Named Entity Recognition model on the noisy annotations provided by the labeled mentions in the knowledge base.

![image](combined_images/datasets.png){width="13cm"}

We provide a high-level overview of our approach in Figure
[\[fig:datasets\]](#fig:datasets){reference-type="ref"
reference="fig:datasets"}. First, we use a named entity recognition
(NER) model to predict dataset mentions. For each mention, we generate a
list of candidate datasets from the knowledge base. We also developed a
rule based extraction system which searches for dataset mentions seen in
the training set, adding the corresponding dataset IDs in the training
set annotations as candidates. We then use a binary classifier to
predict which of these candidates is a correct dataset extraction.

Next, we describe each of the sub-components in more detail.

### Mention and Candidate Generation ###

We first constructed a set of rule based candidate citations by exact
string matching mentions and dataset names from the provided knowledge
base. We found this to have high recall on the provided development fold
and our own development fold that we created. However, after our test
submission, it became clear that there were many datasets in the actual
test set that did not have mentions in the provided knowledge base.

To address this limitation, we developed an NER model to predict
additional dataset mentions. For NER, we use a bi-LSTM model with a CRF
decoding layer, similar to [@Peters2018DEEPCW], and implemented using
the AllenNLP framework.[^2] In order to train the NER model, we
automatically generate mention labels by string matching mentions in the
provided annotations against the full text of a paper. This results in
noisy labeled data, because it was not possible to find all correct
mentions this way (e.g., some dataset mentions were not annotated), and
the same string can appear multiple times in the paper, while only some
are correct examples of dataset usage.

We limit the percentage of negative examples (i.e., sentences with no
mentions) used in training to 50%, and use 40 words as the maximum
sentence length. We use 50-dimensional Glove word embeddings
[@Pennington2014GloveGV], 16-dimensional character embeddings with 64
CNN filters of sizes (2, 3, 4). The CNN character encoder outputs
128-dimensional vectors. We optimize model parameters using ADAM
[@Kingma2014AdamAM] with a learning rate of 0.001.

In order to generate linking candidates for the NER mentions, we score
each candidate dataset based on TF-IDF weighted token overlap between the mention
text and the dataset title. For a given mention, many dataset titles can
have a non-zero overlap score, so we take the top 30 scoring candidates
for each mention as the linking candidates for that mention.

### Candidate Linking ###

The linking model takes as input a dataset mention, its context, and one
of the candidate datasets in the knowledge base, and outputs a binary
label. We use a gradient boosted trees classifier using the XGBoost
implementation.[^3] The model takes as input the following features: prior probability of
entity, prior probability of entity given mention, prior probability of
mention given entity, whether a year appears in the mention context and
in the dataset title, mention length, mention sentence length, whether
the mention is an acronym, estimated section title of the mention,
overlap between mention context and dataset keywords provided in the
knowledge base, and the TF-IDF weighted token overlap. We note that it
is possible to predict zero, one or multiple dataset IDs for the same
mention, and each dataset candidate is scored independently.

[Research Area Prediction](#sec:areas_methods)
------------------------

### Data ###

The second task of the competition is to predict research areas of a
paper. The task does not specify the set of research areas of interest,
nor is training data provided for the task. After manual inspection of a
subset of the papers in the provided test set, the SAGE taxonomy of
research, and the Microsoft Academic Graph (MAG) [@Shen2018AWS], we
decided to use a subset of the fields of study in MAG as labels. In
particular, we included all fields related to social science or papers
from the provided training corpus. However, since the abstract and full
text of papers are not provided in MAG, we only use the paper titles for
training our model. The training data we ended up with included
approximately 75K paper titles along with their fields of study as
specified in two levels of the MAG hierarchy. We held out about 10% of
the titles for development data. The coarse level (L0) has 7 fields
while the more granular one (L1) has 32. Fields associated with less
than 100 papers were excluded.

### Methods ###

For each level, we trained a bi-directional LSTM which reads the paper
title and predicts one of the fields in this level. We additionally
incorporate ELMo embeddings [@Peters2018DEEPCW] to improve performance.
In the final submission, we always predict the most likely field from
the L0 classifier, and only report the most likely field from the L1
classifier if it exceeds a certain threshold. It takes approximately 1.5
and 3.5 hours for the L0 and L1 classifiers to converge, respectively.

[Research Method Extraction](#sec:methods_methods)
--------------------------

### Data ###

The third task in the competition is to extract the scientific methods
used in the research paper. Since no training data was provided, we
started by inspecting a subset of the provided papers to get a better
understanding of what kind of methods are used in social science and how
they are referred to within papers.

### Methods ###

Based on the inspection, we designed regular expressions which capture
common contextual patterns as well as the list of provided SAGE methods.
In order to score candidates, we used a background corpus to estimate
the salience of candidate methods in a paper. Two additional strategies
were attempted but proved unsuccessful: a weakly-supervised model for
named entity recognition, and using open information extraction (openIE)
to further generalize the list of candidate methods.

[Results](#sec:results)
============

[Dataset Extraction and Linking](#sec:datasets_results)
------------------------------

First, we report the results of our NER model in Table
[\[tab:ner\_results\]](#tab:ner_results){reference-type="ref"
reference="tab:ner_results"}. Since it is easy for the model to memorize
the dataset mentions seen at training time, we created disjoint train,
development, and test sets based on the paper--dataset annotations
provided for the competition. In particular, we sort datasets by the
number of papers they appear in, then process one dataset at a time. For
each dataset, we choose one of the train, development, or test splits at
random and add the dataset to it, along with all papers which mention that dataset. When there is a
conflict, (e.g., a paper *p* has already been added to the
train split when processing an earlier dataset *d<sub>1</sub>*, but it is
also associated with a later dataset *d<sub>2</sub>*), the later dataset
*d<sub>2</sub>* along with all papers associated with it are added to the
same split as *d<sub>1</sub>*. For any further conflicts, we prefer to
put papers in the development split over the train split, and the test
split over the development split.

We also experimented with adding ELMo embeddings [@Peters2018DEEPCW],
but it significantly slowed down training and decoding which would have
disqualified our submission due to the runtime requirements of the
competition. As a result, we decided not to include ELMo embeddings in
our final model.

|            | prec.   | recall  |  F1    |
| ---------- | ------- | ------- | ------ |
| dev set    | 53.4    | 50.3    | 51.8   |
| test set   | 50.7    | 41.8    | 45.8   |

NER precision, recall and F1 performance (%) on the development and
test sets.
[\[tab:ner\_results\]]{#tab:ner_results label="tab:ner_results"}

|                                   | prec.   | recall   |  F1  |
| --------------------------------- | ------- | -------- | ---- |
| baseline                          | 28.7    | 58.0     | 38.4 |
| \+ p(d $\mid$ m), p(m $\mid$ d)   | 39.6    | 42.0     | 40.7 |
| \+ year matching                  | 35.1    | 57.0     | 43.5 |
| \+ aggregated mentions, tuning, and other features | 72.5 | 45.0 | 55.5 |
| \+ dev set examples               | 77.0    | 47.0     | 58.3 |
| \+ NER mentions                   | 56.3    | 62.0     | 59.0 |

End-to-end precision, recall and F1 performance (%) for citation
prediction on the development set provided in phase 1 of the
competition.
[\[tab:e2e\_results\]]{#tab:e2e_results label="tab:e2e_results"}

|                   | prec.   | recall   |  F1    |
| ----------------- | ------- | -------- | ------ |
| phase 1 holdout   | 35.7    | 19.6     | 25.3   |
| phase 2 holdout   | 39.6    | 18.8     | 25.5   |

End-to-end precision, recall, and F1 performance (%) for dataset
prediction on the phase 1 and phase 2 holdout sets. Note that the
phase 1 holdout results are for citation prediction, while the phase 2 holdout results are for mention prediction.
[\[tab:test\_results\]]{#tab:test_results label="tab:test_results"}

We report the end-to-end performance of our approach (on the development
set provided by the organizers in the first phase) in Table
[\[tab:e2e\_results\]](#tab:e2e_results){reference-type="ref"
reference="tab:e2e_results"}. This is the performance after using the
linking classifier to predict which candidate mention--dataset pairs are
correct extractions. We note that the development set provided in phase
1 ended up having significantly more overlap with the training data than
the actual test set did. As a result, the numbers reported in Table
[\[tab:e2e\_results\]](#tab:e2e_results){reference-type="ref"
reference="tab:e2e_results"} are not indicative of test set performance.
End to end performance from our phase 2 submission can be seen in Table
[\[tab:test\_results\]](#tab:test_results){reference-type="ref"
reference="tab:test_results"}. This performance is reflective of our
focus on the linking component of this task. Aside from the competition
development set, we also used a random portion of the training set as an
additional development set. The initial model only uses a dataset
frequency feature, which gives a baseline performance of 38.4 F1. Adding
p(d $\mid$ m) and p(m $\mid$ d), which are the probability of entity
given mention and probability of mention given entity improves the
performance ($\Delta = 2.3$ F1). Year matching helps disambiguate
between different datasets in the same series, which was found to be a
major source of errors in earlier models ($\Delta = 2.8$ F1).
Aggregating mentions for a given dataset, adding mention and sentence
length features, adding an is acronym feature, and further
hyper-parameter tuning improve the results ($\Delta = 12.5$ F1). Adding
examples in the development set while training the model results in
further improvements ($\Delta = 2.8$ F1). Finally, adding the NER-based
mentions significantly improves recall at the cost of lower precision,
with a positive net effect on F1 score ($\Delta = 0.7$ F1).

Two clear limitations of our model are its difficulty in generalizing to unseen datasets, and its inability to effectively distinguish between datasets that are used in a publication and datasets that are merely reference. These limitations are the main causes of the low recall (due to difficulty generalizing to unseen datasets) and low precision (due to difficulty distinguishing between used datasets and referenced datasets).

[Research Area Prediction](#sec:areas_results)
------------------------

To select a model, we performed a 100 trial random search across model
hyper-parameters, evaluated on a held out development set of papers from
the Microsoft Academic Graph. Our final model contained 512 hidden
dimensions, 2 layers and 0.5 dropout prior to classification. The top
performing classifier achieved 84.4% accuracy on our development set on
L0 fields, and 65.2% accuracy on our development set on L1 fields. The main limitation of using MAG for this problem is that our model cannot find new fields of research, and is limited to those provided by MAG. Additionally, our method performs classification based only on the titles of papers, while there are other pieces of information about the paper that would be useful for classifying the field of research.

[Research Method Extraction](#sec:methods_results)
--------------------------

We evaluated performance by manually evaluating the output of our
extractor for a subset of 50 papers from the provided test set to
compute precision. Since evaluating recall requires a careful
annotation, we resorted to using yield as an alternative metric. Our
final submission for method extraction has 95% precision and yield of
1.5 methods per paper on the manually inspected subset of papers. Similarly to research area prediction, the main limiation here is the difficulty our model has finding new methods, as it is limited to the SAGE ontology and a few hand-crafted patterns.

[Future Work and Lessons Learned](#sec:future_work)
============

We now provide some possible directions of improvement for each
component of our submission. For dataset extraction, the most promising
avenue of improvement is to improve the NER model, and the most
promising avenue to improve the NER model is to collect less noisy data.
We effectively have distantly supervised training data for the NER
model, and the first thing to try would be directly annotating papers
with dataset mentions to provide a clearer signal for the NER model. For
research area prediction, it would help to include signals beyond just
the paper title for predicting the field of study. The difficulty here
is finding labeled training data that includes richer signals like
abstract text and paper keywords. For method prediction, exploring
the use of open information extraction is a potential avenue
of future research. Additionally, it would be helpful to clarify what
exactly is meant by a method, as it is currently unclear what a
successful method extraction looks like.
The main lesson learned is that, when presented with noisy, distantly supervised, real-world data, to produce a production-quality system, it becomes very important to (1) have a high-confidence evaluation dataset, and (2) look for other data sources that are similar enough to the task at hand to be useful. Taking steps towards both of these objectives are promising avenues of future work.

[Conclusion](#sec:conclusion)
==========

This report summarizes the AI2 submission at the RCC competition. We
identify dataset mentions by combining the predictions of an NER model
and a rule-based system, use TF-IDF to identify candidates for a given
mention, and use a gradient boosted trees classifier to predict a binary
label for each candidate mention--dataset pair. To identify research
fields of a paper, we train two multi-class classifiers, one for each of
the top two levels in the MAG hierarchy for fields of study. Finally, to extract research methods, we
use a rule-based system utilizing a dictionary and common patterns,
followed by a scoring function which takes into account the prominence
of a candidate in foreground and background corpora.

[Acknowledgments](#sec:acknowledgements)
===============

We would like to thank the competition organizers for their tireless
efforts in preparing the data, answering all our questions, doing the
evaluations, and providing feedback. We also would like to thank Zhihong
(Iris) Shen for helping us use the MAG data.

[Appendix](#sec:appendix)
========

The code for the submission can be found [here](https://github.com/allenai/coleridge-rich-context-ai2). There is a README with additional documentation at this github repo.


[^1]: [www.semanticscholar.org](www.semanticscholar.org)

[^2]: <https://github.com/allenai/allennlp/blob/master/allennlp/models/crf_tagger.py>

[^3]: <https://xgboost.readthedocs.io/en/latest/>

---

# Chapter 7 - Finding datasets in publications: The KAIST approach

---
author:
- |
    Giwon Hong  
    IR & NLP Lab  
    KAIST  
    Daejeon, South Korea  
    gch02518  @kaist.ac.kr  
    Minh-Son Cao  
    IR & NLP Lab  
    KAIST  
    Daejeon, South Korea  
    minhson  @kaist.ac.kr  
    Haritz Puerto-San-Roman  
    IR & NLP Lab  
    KAIST  
    Daejeon, South Korea  
    haritzpuerto94  @kaist.ac.kr  
    Sung-Hyon Myaeng  
    IR & NLP Lab  
    KAIST  
    Daejeon, South Korea  
    myaeng@kaist.ac.kr  
bibliography:
- 'bibliography.bib'
title: Rich Text Competition
---

Non technical overview
=============

Our approach for retrieving datasets is to generate our own questions about dataset names and use a machine learning technique to train the model for solving question answering task. In other words, questions suitable for finding dataset names such as "What is the dataset used in this paper?," are generated and the question answering model is trained to find the answers to those questions from the papers. Furthermore, the resulting answers from the model are filtered by types of each word. For example, if an answer contains words with organization or agency types, then this answer is likely to include the actual dataset names.

For the research fields retrieval, we first crawled Wikipedia articles that correspond to the list of research fields. Then, we retrieved the research fields of the papers by measuring the similarity between the papers and the crawled Wikipedia documents. For example, we crawled the Wikipedia article "economic history" which corresponds to the research field "economic history." If the similarity between a paper and the article "economic history" is high enough, it is determined that the paper belongs to a research field "economic history." For the similarity measurement, the TF-IDF similarity is used, which is the similarity measurement based on the term frequency and document frequency.

For the research methods retrieval, we train a model that recognizes named entities through a machine learning technique. More specifically, we considered the research methods as named entities and train a model to retrieve the named entities. For example, for a research method called "bivariate analysis", this research method is considered as a named entity by the trained model and therefore, retrieved by the model.

Literature Review
=============

Although *Information Retrieval* is a well-established research field, only a few attempts have focused on the task of dataset extraction form publications. [@ghavimi2016identifying] tried it using heuristics and dictionaries but their heuristics have some problems. Firstly, they give too much weight to acronyms. For example, *NYPD (New York Police Department)* is detected as a dataset name.
Furthermore, they also give too much weight to the publication year of the datasets because they assumed dataset names are usually followed by the publication year but that may only work on Social Sciences publications. For example, Computer Science datasets do not appear followed by the publication year so this heuristic cannot detect all kind of dataset mentions.

What did you do
=============

In this section, we will explain about the models we used for datasets retrieval, research fields retrieval, and research methods retrieval.

Datasets Retrieval
------------------

Our approach to solving the dataset retrieval task is reading comprehension (RC) with query generation and entity typing. An RC model is applied to the given publications with our own query generation module. Then, the result from the RC model is filtered with an entity typing module. Figure 1 shows our overall approach for dataset retrieval. In following subsections RC model, query generation, and entity typing are explained in detail.

![image](combined_images/docqaarch3.png)

*Figure 1: Overall architecture for dataset retrieval*

### Document QA

Reading comprehension models are neural networks that find answers for given queries according to a text. Answers must appear explicitly in the text. Since the dataset retrieval task is about finding explicit dataset mentions from publications, RC models are suitable for this task.

The RC model used in this work is Document QA [@clark2017simple]. It uses Bi-GRU, bi-attention, and self-attention mechanism. In addition, Document QA performs a paragraph selection that pre-filters and selects the *k* most relevant paragraphs through TF-IDF similarity between the query and paragraphs. We observed that datasets are usually mentioned together in some specific paragraphs of the publications. Therefore, this model is appropriate for this task thanks to its paragraph selection stage.

### Query generation module

In order to apply an RC model, such as Document QA, to the dataset retrieval task, queries that are suitable for finding the datasets are required. However, defining a general query for retrieving datasets is difficult, since the dataset mentions appear in various forms like surveys, datasets, or studies. Therefore, we devised a query generation module with some important query terms to generate multiple specific queries instead of one general query.

To generate important query terms, we used a query generation model that creates queries given answers proposed by [@yuan2017machine]. Thanks to this model, we could obtain a list of queries to retrieve datasets from the training set. After that, we extracted query terms that are frequent in the list of queries and at the same time are not frequent in non-dataset-mention sentences. Because of this, these query terms have discrimination power for retrieving dataset mentions since 1) queries are generated to extract mentions and 2) the query terms do not appear in the sentences without dataset mentions.

This list of query terms is used to generate a general query concatenating query terms. This query is used for the paragraph selection stage of Document QA, as shown in Figure 1. After this stage, the query generation module generates queries for each paragraph by string matching, in order to create specific queries for each paragraph.

### Ultra-Fine Entity Typing

Ultra-Fine Entity Typing [@Choi:2018:ACL] can predict a set of free-from phrases like *criminal* or *skyscraper* given a sentence with an entity mention. For example, in the sentence: *Bob robbed John and he was arrested shortly afterward*, Bob is of type *criminal*. In our task, candidate answers proposed by Document QA and their context are input to Ultra-Fine Entity Typing. Although this system can predict 10k different entity types in which *dataset* is included, after a few experiments we observed that most of the dataset names are recognized as some specific entity types such as *organization* and *agency*. Since these entity types are consistent, we decided that this could be a feature for our candidate answer classifier.

### Candidate Answer Classifier

Using the score given by the RC model for each candidate answer and the entity types given by Ultra-Fine Entity Typing for each candidate answer, a neural network classifier that filters the candidate answers of Document QA was used. We discovered that a candidate answer with a high score given by Document QA and whose entity type is *organization* or something similar is considerably likely to be a correct dataset name. Due to this pattern, we were able to create neural network classifier to filter out candidate answers.

The classifier has the following architecture:

1.  Input size: 10332 (10331 labels from Ultra-Fine Entity Typing and the Document QA score)

2.  1 hidden layer with 50 neurons

3.  Output size: 2

The training set consists of 25172 examples and the test set of 6293 examples. Adam optimizer was used and cross entropy was used as loss function.

Research Fields Retrieval
-------------------------

Our approach to obtaining the research fields is based on TF-IDF similarity with Wikipedia articles. First, a set of Wikipedia articles about different research fields using the library MediaWiki for Python was obtained. The list of research fields provided the Coleridge Initiative for the Rich Context Competition was used to crawl Wikipedia. This list has three levels of hierarchy as the example in Figure 2.

![Research fields hierarchy[]{label="fig:researchfieldshiearchy"}](combined_images/fieldshierarchy2.png)*Figure 2: Research fields hierarchy*

The leaf nodes of that hierarchy were searched in Wikipedia to retrieve specific research fields instead of general ones. For example, we were aiming to retrieve *Neurosurgery* instead of *Medicine*.

Then, using Scikit-learn [@scikit-learn], a TF-IDF matrix of all the publications and Wikipedia articles of research fields were computed and the research field and all its superior nodes in the hierarchy associated with the most similar article were returned along with the similarity in the range \[0,1\]. The overall architecture can be seen in Figure 3.

![Overall architecture for research fields retrieval[]{label="fig:researchfields"}](combined_images/researchfields2.png)*Figure 3:  Overall architecture for research fields retrieval*

Research Methods Retrieval
--------------------------

For the research methods retrieval task, we modeled it as an named-entity recognition (NER) problem. Research methods are considered to be a named entities and because of this, they can be tagged as research method label (RS) instead of common NER labels such as: *location*, *people*, etc. Figure 4 shows the main architecture of the model proposed by [@lample2016neural] and used in this task.

![BiLSTM-CRF architecture](combined_images/bi-lstm.png)*Figure 4: Paragraph selection for DocQA in research method retrieval*

The representation of a word using the model is obtained considering its context. We have the assumption that research methods have dependencies and constraints with words that appear in their surrounding context. Therefore, the conditional random field [@lafferty2001conditional] layer in this model is suitable for detecting research methods by jointly tagging the whole sentence, instead of independently tagging each word.

In this task, research method phrases which appeared in the training set were marked. Then, we represented the data in CoNLL 2003 format [@tjong2003introduction], using IOB tag (Inside, Outside, Beginning). Every token is labeled as B-RS if the token is the beginning of a research method, I-RS if it is inside a research method but not the first token, or O if otherwise. We used this type of data to train the model which could detect research methods in publications.

What worked and what didn’t
===========================
We tried different ideas to extract dataset names. Firstly, we tried to extract the dataset name using some hand-crafted queries in the QA model. But we noticed that these manually generated queries do not have sufficient discriminative power. Therefore, we tried to generate a general query with enough discriminative power to retrieve datasets names. To this end, we converted the sentences containing the dataset into queries, and then clustered the converted queries to get some generalized queries. However, we found that each of the resulting clusters did not reflect generalized queries. Hence, we had to create specific queries for each publication as explained in the previous section.

We also tried to use the section names as a feature of the paragraph selection part in the Document QA. However, the use of section name has rather degraded the overall performance. In our analysis, this seems to be due to the noise that occurred when extracting the section name, since we relied on some heuristics to extract them.

The use of entity typing worked well to remove the wrong candidate answers proposed by the reading comprehension model. Thanks to this filtering by entity types, we were able to improve the recall using the query generation module without sacrificing the precision.

Our approach to retrieve research fields worked well as will be shown in the next section.

Finally, our first idea to retrieve research methods was based on identifying their context words by using the frequency of those words. However, this approach did not achieve good results due to the lack of discriminative power of the most common words that co-occur with the research methods. Therefore, we tried to model it as an NER problem, where we consider each research method that appeared in a paper as a named-entity. By modeling the problem in this way, we can use existing NER models to extract research methods from papers. However, this approach also performed poorly.


Summary of your results and caveats
===================================

Due to the difficulty of performing a quantitative analysis on a not extensively labeled dataset, a qualitative analysis was made. Several random publications were chosen and manually labeled by us to check the quality of our model and discover the strong and weak points.

Datasets Retrieval
------------------

To analyze the effects of the query generation module and entity typing module, we performed analyses on 100 phase 1 dev set with 3 different settings:

1.  Document QA only

2.  Document QA + query generation module

3.  Document QA + query generation module + entity typing module

### Document QA only

Figure 5 shows the results from 3 publications of phase 1 dev set with Document QA only. Compared to the other settings, Document QA only setting retrieves answers (dataset mentions) with high quality. However, the number of retrieved answers is notably small. For example, the result from *153.txt* publication was empty as in Figure 5. In fact, our model using this setting can retrieve only 260 answers (predictions) from 100 publications of phase 1 dev set.

![Results from Document QA only[]{label="fig:docqaonly"}](combined_images/phase1.png)*Figure 5: Results from Document QA only*

These results with fewer answers were expected, due to the difficulty of defining general queries as explained in section [*Question Generation Module*](#query-generation-module). Without a query generation module, our query was not representative enough to retrieve various forms and types of the dataset mentions.

### Document QA + query generation module

Figure 6 shows the results from 3 publications of phase 1 dev set with Document QA and query generation module. Because of the latter, our dataset retrieval model could retrieve a large number of answers. For example, the result from *153.txt* publication contains a large number of answers with correct answers such as *financial services FDI data* or *Micro Database Direct investment*. Therefore, we believe that the query generation module improves recall of the entire dataset retrieval model. Actually, our model using this setting can retrieve more than 2,000 answers (predictions) from 100 publications of phase 1 dev set.

However, compared to the Document QA only setting, there is a considerable number of noise. For example, in Figure 6, *empirical, Table 1, Section 4* and etc., are not dataset mentions.

![Results from Document QA + query generation module[]{label="fig:docqaquery"}](combined_images/phase1+querygen.png)*Figure 6: Results from Document QA + query generation module*

We believed that the reason of these noises is the several query terms potentially retrieve wrong answers. For example, we have a query term *\"study\"* to retrieve dataset mentions such as *\"ANES 1952 Time Series Study\"*. However, this term can also retrieve noises such as *\"empirical study\"*. These kinds of query terms are still needed to retrieve various forms and types of dataset mentions but clearly generate some noises.

### Document QA + query generation module + entity typing module

Figure 7 shows the results from 3 publications of phase 1 dev set with Document QA, query generation module, and entity typing module. Thanks to the entity typing module, we can see that most of the noises from the query generation module have disappeared. Although a few right answers such as *\"FDI data\"* was filtered out and a few wrong answers such as *\"4.2.1 Micro Data\"* was not, overall precision is adequately improved by entity typing module. In addition, our model in this setting could retrieve 526 answers (predictions) from 100 publications of phase 1 dev set.

![Results from Document QA + query generation module + entity typing module[]{label="fig:docqaqueryentity"}](combined_images/phase1+querygen+entitytyping.png)*Figure 7: Results from Document QA + query generation module + entity typing module*

Research Fields Retrieval
-------------------------

We randomly selected 20 publications from the training set of phase 1, since our model does not require any training. The model was able to correctly predict 11. The strongest point is that the model is able to predict research fields which are significantly specific such as *Home health nursing management*. Among the weak points of the model, it has problems when two research fields are similar or share subtopics. Moreover, sometimes it fails due to the fact that it tries to retrieve excessively specific fields while more general ones would be suitable.

Research Methods Retrieval
--------------------------

20 random publications were selected from the training set of phase 2 and labeled and our results are not as expected. The model is able to find proper research methods for 12 publications out of 20. For example, the model detects one of the research methods appeared in publication with id 15359 which is *Factor analysis*. However, the results contain a notable amount of noise. For example, the document with id 10751, the model retrieves several wrong answers like *Reviews describe*, *Composite materials*, *Detailed databases*, etc.

Lessons learned and what would you do differently
=================================================
After the completion of this project, we realized that some steps could have been in a different way and led to better results. For example, we focused a lot on the model creation, however, we think that we should have spent more time on the analysis of the dataset to extract all its potential and search for additional datasets since some of the provided datasets contain noise.

In addition, since Document QA is good for prototyping, it was a good idea to use it at the beginning to check that our hypothesis of modeling dataset retrieval as a QA task was right. However, at some point during the project, we should have changed it to another model with a state of the art performance.

Also, in the QA model, we are currently using symbolic queries. But since we are generating our own queries, we could define and generate queries with a distributed representation. It would be more generic and model-matching queries. Furthermore, for research fields, we should have tried other ranking methods like BM25, a ranking function used by search engines whose performance is better than TF-IDF.

Finally, for research methods, we should have analyzed more the dataset to use more suitable techniques like unsupervised NER instead of supervised NER.

What comes next
===============

This work is the very first step of the Coleridge Initiative to build an "Amazon.com" for data users and data producers. The next step is to construct a system that recommends datasets to researchers. We have a hypothesis that datasets depend on research fields and vice versa. For example, in the research field *Question Answering*, a subfield of *Natural Language Processing* and *Computer Science*, the most commonly used dataset is SQuAD [@rajpurkar2016squad]. Therefore, according to our hypothesis, two publications using SQuAD are presumably to be in the same field, *Question Answering*. Based on this hypothesis, we intend to build hierarchical clusters of publications with the same research field. This way, a cluster will have publications with the same research field and similar datasets. As an example, the QA cluster will have papers about QA and those papers will use similar datasets like SQuAD and TriviaQA [@joshi2017triviaqa]. With these clusters, the system will be able to recommend datasets to data users. For example, if a publication is in the *Question Answering* field, the proposed system would be able to recommend the authors SQuAD and TriviaQA. Moreover, it would be able to recommend to data producers fields with a lack of datasets.

In addition, we also need to improve the performance of the models we built. For example, since we used a pre-trained model in Document QA we think we could not exploit the whole potential of this system, so we would like to train our own model using a training set of publications.


Acknowledgements
================
This work was supported by the Institute of Information & Communications Technology Planning & Evaluation (IITP) grant funded by the Korean Government (MSIT) (No. 2013-0-00179, Development of Core Technology for Context-aware Deep-Symbolic Hybrid Learning and Construction of Language Resources) and Next-Generation Information Computing Development Program through the National Research Foundation of Korea (NRF) funded by the Ministry of Science, ICT (2017M3C4A7065962).


Appendix: Description of the code and documentation
====================================================
The technical documentation of the code is provided in the GitHub repository of the project https://github.com/HaritzPuerto/RCC/tree/master/project

---

# Chapter 8 - Finding datasets in publications: The GESIS approach

The contribution of GESIS to the Rich Context Competition
=========================================================

**Authors:** *Wolfgang Otto, Andrea Zielinski, Behnam Ghavimi, Dimitar Dimitrov, Narges Tavakolpoursaleh, Karam Abdulahhad, Katarina Boland, Stefan Dietze*
**Affiliation:** *GESIS – Leibniz Institute for the Social Sciences, Cologne, Germany*
**Corresponding author:** *wolfgang.otto@gesis.org*

Introduction
------------

GESIS - the Leibniz Institute for the Social Sciences (GESIS)[1] is the largest European research and infrastructure provider for the social sciences and offers research, data, services and infrastructures supporting all stages of the scientific process. The GESIS department *Knowledge Technologies for the Social Sciences (WTS)*[2] is responsible for developing all digital services and research data infrastructures at GESIS and aims at providing integrated access to social sciences data and services. Next to traditional social sciences research data, such as surveys and census data, an emerging focus is to build data infrastructures able to exploit novel forms of social sciences research data, such as large Web crawls and archives.

Research at WTS[3] addresses areas such as information retrieval, information extraction <span>&</span> Natural Language Processing (NLP), semantic technologies and human computer interaction and aims at ensuring access and use of social sciences research data along the FAIR principles, for instance, through interlinking of research data, established vocabularies and knowledge graphs and by facilitating semantic search across distinct platforms and datasets. Due to the increasing importance of Web- and W3C standards as well as Web-based research data platforms, in addition to traditional research data portals, findability and interoperability of research data across the Web constitutes one current challenge. In the context of Web-scale reuse of social sciences resources, the extraction of structured data about scholarly entities such as datasets and methods from unstructured and semi-structured text, as found in scientific publications or resource metadata, is crucial in order to be able to uniquely identify social sciences resources and to understand their inherent relations.

Prior works at WTS/GESIS addressing such challenges apply NLP and machine learning techniques to, for instance, extract and disambiguate mentions of datasets[4] (Boland et al., 2012; Ghavimi et al., 2016)), authors (Backes, 2018a, 2018b) or software tools (Boland and Krüger, 2019) from scientific publications or to extract and fuse scholarly data from large-scale Web crawls (Sahoo et al., 2017; Yu et al., 2019). Resulting pipelines and data are used to empower scholarly search engines such as the *GESIS-wide search*[5] (Hienert et al., 2019) which provides federated search for scholarly resources (datasets, publications etc.) across a range of GESIS information systems or the *GESIS DataSearch* platform[6] (Krämer et al., 2018), which enables search across a vast number of social sciences research datasets mined from the Web. Given the strong overlap of our research and development profile with the recent initiatives of the Coleridge Initiative to evolve this research field through the Rich Context Competition (RCC)[7], we are enthusiastic about having participated in the RCC2018 and are looking forward to continue this collaboration towards providing sound frameworks and tools which automate the process of interlinking and retrieving scientific resources.

The central tasks in the RCC are the extraction and disambiguation of mentions of datasets and research methods as well as the classification of scholarly articles into a discrete set of research fields. After the first phase, each team received feedback from the organizers of the RCC consisting of a quantitative and qualitative evaluation. Whereas quantitative results of our inital contribution throughout phase one have shown significant room for improvement, the qualitative assessement, conducted by four judges on a sample of ten documents, underlined the potential of our approach.

Since we have been shortlisted for the second phase of the RCC, this chapter describes our approaches, techniques, and additional data used to address all three tasks. As described in the following subsections, we decided to follow a module-based approach where each module or the entire pipeline can be reused. The remaining chapter is organised as follows. The following Section \[sec:overview\] provides an overview of our approach, used background data and preprocessing steps, whereas Sections  \[sec:dataset-extraction\],  \[sec:research\_method\_extraction\] and  \[sec:field\_classification\] describe our approaches in more detail, including results towards each of the tasks. Finally, we discuss our results in Section \[sec:discussion\] and provide an overview of future work in Section \[sec:conclusion\].

Approach, data and pre-processing
---------------------------------

This section describes the external data sources we used as well as our pre-processing steps.

### Approach overview and initial evaluation feedback

The central tasks in the RCC are the extraction of dataset mentions from text. Even so, we considered the discovery of research methods and research fields important. To this end, we decided to follow a module-based approach. Users could choose to use each specific module solely or as parts of a data processing pipeline. Figure \[figure:pipeline\] shows an overview of modules developed and their dependencies. Here, the upper three modules (which are in gray) describe the pre-processing steps (cf. Section \[sec:prepro\]). The lower four modules (blue) are used to generate the output in a predefined format as specified by the competition.

<img src="figures/information-flow.png" alt="An overview of the individual software modules described in this document and their dependencies. 1- Gray: Our pre-processing pipeline. 2- Blue: three main tasks of the RCC." style="width:47.0%" />

The pre-processing step consists of extracting metadata and raw text from PDF documents. The output of this step is then used by the software modules responsible for tackling the individual sub-tasks. These sub-tasks are to discover research datasets (cf. Section \[sec:dataset-extraction\]), methods (cf. Section \[sec:research\_method\_extraction\]) and fields (cf. Section \[sec:field\_classification\]). First, a Named Enity Recognition module is used to find dataset mentions. This module used a supervised approach trained on a weakly labled corpus. In the next step, we combine all recognized mentions for each publication and compare these mentions to the metadata from the list of datasets given by the competition. For this linking step the mentions and year information located in the same sentence are used. The corresponding sentence and extracted information are saved for debugging and potential usage in future pipeline components. The task of identifying research methods is done by an adjusted NER module trained on a corpus of scientific publications. For identifying research fields, we trained a classifier on openly available abstracts and metadata from the domain of social sciences crawled from the Social Science Open Access Repository[8] (SSOAR). We tried different classifiers and selected the best performing one, a classifier based on fasttext[9], i.e. a neural net based approach with a high performance(Joulin et al., 2017).

After the first phase, each team received feedback from the organizers of the RCC. The feedback is two folds, a quantitative and qualitative evaluation. Unfortunately, the quantitative assessment showed our algorithm for dataset mention retrieval did not perform well regarding precision and recall metrics. In contrast to this, our approach has been found convincing regarding the quality of results. The qualitative feedback is based on random sample of ten documents given to four judges. The judges were asked to manually extract dataset mentions. After this the overlap between their dataset extractions and the output of our algorithm was calculated. Other factors that judges took into consideration are specificity, uniqueness, and multiple occurrences of dataset mentions. As for the extraction of research methods and fields, no ground truth has been provided; these tasks were evaluated against the judges’ expert knowledge. Similarly to the extraction of dataset mentions, specificity and uniqueness have been considered for these two tasks. The feedback our team received acknowledged the fact that no ground truth has been provided and our efforts regarding the extraction of research methods and fields.

### External data sources

For developing our algorithms, we utilized two external data sources. For the discovery of research methods and fields, we resort to data from the Social Science Open Access Repository[10] (SSOAR). GESIS – Leibniz Institute for the Social Sciences maintains SSOAR by collecting and archiving literature of relevance to the social sciences.

In SSOAR, full texts are indexed using controlled social science vocabulary (Thesaurus[11], Classification[12]) and are assigned rich metadata. SSOAR offers documents in various languages. The corpus of English language publications that can be used for purposes of the competition consists of a total of 13,175 documents. All SSOAR documents can be accessed through the OAI-PMH[13] interface.

Another external source we have used to discover research methods is the ACL Anthology Reference Corpus (Bird et al., 2008). ACL ARC is a corpus of scholarly publications about computational linguistics. The corpus consists of a total of 22,878 articles.

### Pre-processing

Although the organizers of the RCC offered plain texts for the publication, we decided to build our own pre-processing pipeline. The extraction of text from PDF files is still an error prone process. To handle de-hyphenation and paragraph segmentation during extraction time and benefit from automatic metadata extraction (i.e. title, author, abstracts and references) we decided to use a third party extraction tool. The Cermine Extraction Tool[14](Tkaczyk et al., 2015) transforms the files into XML documents using the Journal Article Tag Suite[15](Jats). For the competition we identified two interesting elements of the Jats XML format, i.e., &lt;front&gt; and &lt;body&gt;. The &lt;front&gt; element contains the metadata of the publication, whereas the &lt;body&gt; contains the main textual and graphic content of the publication. As a last step of the pre-processing, we removed all linebreaks from the publication. The output of this step is a list of metadata fields and values, as shown in Table \[tab:example-paragraph\] for each publication paragraph.

|                   | Example Text Field Data         |
|:------------------|:--------------------------------|
| publication\_id   | 12744                           |
| label             | paragraph\_text                 |
| text              | A careful reading of text, word |
|                   | for word, was ...               |
| section\_title    | Data Analysis                   |
| annotations       | \[{’start’: 270, ’end’: 295,    |
|                   | ’type’: ’bibref’, ...           |
| section\_nr       | \[3, 2\]                        |
| text\_field\_nr   | 31                              |
| para\_in\_section | 1                               |

\[tab:example-paragraph\]

Dataset extraction
------------------

### Task description

In the scientific literature, datasets are cited to reference, for example, the data on which an analysis is performed or on which a particular result or claim is based. In this competition, we focus on (i) extracting and (ii) disambiguating dataset mentions from social science publications to a list of given dataset references. Identifying dataset mention in literature is a challenging problem due to the huge number of styles of citing datasets. Although there are proposed standards for dataset citation in full-texts, researchers still ignore or neglect such standards (see, e.g., (Altman and King, 2007)). Furthermore, in many research publication, a correct citation of datasets is often missing (Boland et al., 2012). The following two sentences exemplify the problem of the usage of an abbreviation to make a reference to an existing dataset. The first example illustrates the use of abbreviations that are known mainly in the author’s research domain. The latter illustrates the ambiguity of abbreviations. In this case, *WHO* identifies a dataset published by the World Health Organization and does not refer to the institution itself.
**Example 1**: *P-values are reported for the one-tail paired t-test on *Allbus* (dataset mention) and *ISSP* (dataset mention).*
**Example 2**: *We used *WHO data from 2001* (dataset mention) to estimate the spreading degree of AIDS in Uganda.*
We treat the problem of detecting dataset mentions in full-text as a Named Entity Recognition (NER) task.

#### Formal problem definition

Let *D* denote a set of existing datasets *d* and the knowledge base *K* as a set of known dataset references *k*. Furthermore, each element of *K* is referencing an existing dataset *d*. The Named Entity Recognition and Linking task is defined as (i) the identification of dataset mentions *m* in a sentence, where *m* references a dataset *d* and (ii) linking them, when possible, to one element in *K* (i.e., the reference dataset list given by the RCC).

### Challenges

We focus on the extraction of dataset mentions in the body of the full-text of scientific publications. There are three types if dataset mentions: (i) The full name of a dataset (”National Health and Nutrition Examination Survey“), (ii) an abbreviation (”NHaNES“) or (iii) a vague reference, e.g., ”the monthly statistic“. With all these these types, the NER task faces special challenges. In the first case, the used dataset name can vary in different publications. For instance one publication cites the dataset with ”National Health and Nutrition Examination Survey“ the other could use the words ”Health and Nutrition Survey“. In the case where abbreviations are used, a disambiguation problem occurs, e.g., in ”WHO data“. WHO may describe the World Health Organization or the White House Office. The biggest challenge is again the lack of annotted training data. In the following we describe how we have dealt with this lack of ground truth data.

### Phase one approach

Missing ground truth data is the main problem to handle during this competition. To this end, supervised learning methods for dataset mentions extraction from texts are not applicable without the identification of external training data or the creation of usefull labeled training data from information given by the competition. Because of the lack of existing training data for the task of dataset mention extraction we resort to the provided list of dataset mentions and publication pairs and re-annotate the particular sentences in the publication text. A list of identifying words is provided for some of the known links between publications and a datasets by the competition. These words represent the evidence of the linkage between publication and datasets and are extracted from the publication text. In the course of re-annotation, we search for each of the identifying words in the corresponding publication texts. For each match, we annotate the occurance in our raw text and use these annotations as ground truth. As described in the pre-processing section, our unit for processing the publication text are paragraphs. The re-annotated corpus consists of a list of paragraphs for each publication with stand-off annotations identifying the mentions of datasets (i.e. position of the start and end characters and the entity type for each mention: *dataset*). This re-annotation is then used to train Spacy’s neural network-based NER model[16]. We created a holdout set of 1,000 publications and a training set of size 4,000. Afterwards, we train our model with the paragraphs as a sampling unit. In the training set, 0.45 percent of the paragraphs contained mentions. For each positive training example, we have added one negative sample that contains no known dataset mentions and is randomly selected. We used a batch size of 25 and a dropout rate of 0.4. The model was trained for 300 iterations.

#### Evaluation

We evaluated our model with respect to four metrics: precision and recall, each for strict and for partial match. While the strict match metrics are standard evaluation metrics, the partial match metrics are their relaxed variants in which the degree to which dataset mentions have to match can vary. Consider the following partial match example: “National Health and Nutrition Examination Survey” is the extracted dataset mention, while “National Health and Nutrition Examination Survey (NHANES)” is the true dataset mention. In contrast to the strict version of the metrics, this overlapping match is considered a match for the partial version. The scores describe whether a model is able to find the correct positions of dataset mentions in the texts, even if the start and end positions of the characters are not the same, but the ranges overlap.

| Metric                    | Value |
|:--------------------------|:-----:|
| Precision (partial match) |  0.93 |
| Recall (strict match)     |  0.95 |
| Precision (strict match)  |  0.80 |
| Recall (strict match)     |  0.81 |

\[table:dataset-mention-eval\]

Table \[table:dataset-mention-eval\] show the results of the dataset mention extraction on the holdout set. The model can achieve high strict precision and recall values. As expected, the results are even better for the partial version of the metrics. It means that even if we couldn’t match the dataset mention in a text exactly, we can find the right context with very high precision.

### Phase two approach

In the second phase of the competition, additional 5,000 publications were provided by RCC. We extended our approach to consider the list with dataset names supplied by the organizers and re-annotated the complete corpus of 15,000 publications in the same manner as in phase one to obtain training data. This time we split the data in 80% for training and 20% for test.

#### Evaluation

We resort to the same evaluation metrics as in phase one. However, we calculate precision and recall on the full-text of the publication and not on the paragraphs as in the first phase. Table \[table:dataset-mention-eval-phase-two\] shows the results achieved by our model. We observe lower precision and recall values. Compared to phase one, there is also a smaller difference between the precision and recall values for the strict and partial version of the metrics.

| Metric                    | Value |
|:--------------------------|:-----:|
| Precision (partial match) |  0.51 |
| Recall (partial match)    |  0.90 |
| Precision (strict match)  |  0.49 |
| Recall (strict match)     |  0.87 |

\[table:dataset-mention-eval-phase-two\]

Research method extraction
--------------------------

### Task description

Inspired by a recent work of Nasar et al. (Nasar et al., 2018), we define a list of basic entity types that give key-insights into scholarly publications. We adapted the list of semantic entity types to the domain of the social sciences with a focus on *research methods*, but also including related entity types such as *Theory, Model, Measurement, Tool, Performance*. We suspect that the division into semantic types might be helpful to find *research methods*. The reason is that the related semantic entities types might provide clues or might be directly related to the research method itself.

For example, in order to achieve a certain research goal, an experiment is used in which a certain combination of *methods* is applied to a *dataset*. The methods can be specified as concepts or indirectly through the use of certain *software*. The result is then quantified with a *performance* using a specific measure. **Example**: *P-values* (measurement) are reported for the *one-tail paired t-test* (method) on *Allbus* (dataset) and *ISSP* (dataset).
We selected the entity types *Research Method*, *Research Theory*, *Research Tool* and *Research Measurement* as the target research method related entity types (see Table \[tab:entityTypes\]). This decision is based on an ecxamination of the SAGE ontology given by the RCC as a sample of how research method terms might look like.

|                                     |                   |                     |                                                 |
|:------------------------------------|:------------------|:-------------------:|:------------------------------------------------|
| \[tab:entityTypes\] **Entity type** | **Corresponding** | **Incl. statistic** | **Examples**                                    |
|                                     | **SAGE type**     |     **glossary**    |                                                 |
| Research Method                     | SAGE-METHOD       |                     | Bootstrapping, Active Interviews                |
| Research Measurement                | SAGE-MEASURE      |                     | Latent Variables, Phi coefficient, Z-score      |
| Research Theory                     | SAGE-THEORY       |                     | Frankfurt shool, Feminism, Actor network theory |
| Research Tool                       | SAGE-TOOL         |                     | SPSS, R statistical package                     |

#### Formal problem definition

The task of Named Entity Recognition and Linking is to (i) identify the mentions *m* of research-related entities in a sentence and (ii) link them, if possible, to a reference knowledge base *K* (i.e. the SAGE Thesaurus[17]) or (iii) assign a type to each entity, e.g. a *research method*, selected from a set of predefined types.

### Challenges

There are some major challenges that any named entity recognition, classification and linking system needs to handle. First, regarding NER, identifying the entities boundary is important, thus detecting the exact sequence span. Second, ambiguity errors might arise in classification. For instance,‘range’ might be a domain-specific term from the knowledge base or belong to the general domain vocabulary. This is a challenging task for which context information is required. In the literature, this relates to the problem of **domain adaptation** which includes fine-tuning to specific named entity classes[18]. With respect to entity linking, another challenge is detecting name variations, since entities can be referred to in many different ways. Semantically similar words, synonyms or related words, which might be lexically or syntactically different, are often not listed in the knowledge base (e.g., the lack of certain terms like ‘questioning’ but not ‘questionnaire’). This problem of automatically detecting these relationships is generally known as **linking problem**. Note that part of this problem also results from PDF-to-text conversion which is error-prone. Dealing with incomplete knowledge bases, i.e. **handling of out of vocabulary (OOV) items**, is also a major issue, since knowledge bases are often not exhaustive enough and do not cover specific terms or novel concepts from recent research. Last but not least, the combination of different semantic types gives a more coherent picture of a research article. We hypothesize that such information would be helpful and results in an insightful co-occurrence statistics, and provides additional detail directly related to entity resolution, and finally helps to assess the **relevance of terms** by means of a score.

### Our approach

Our research method extraction tool builds on Stanford’s CoreNLP and Named Entity Recognition System[19]. The information extraction process follows the workflow depicted in Figure \[fig:pipeline\], using separate modules for pre-processing, classification, linking and term filtering.

We envision the task of finding entities in scientific publications as a sequence labeling problem, where each input word is classified as being of a dedicated semantic type or not. In order to handle entities related to our domain, we train a CRF based machine learning classifier with major semantic classes, (see Table \[tab:entityTypes\]), using training material from the ACL RD-TEC 2.0 dataset (QasemiZadeh and Schumann, 2016). Apart from this, we follow a domain adaptation approach inspired by (Agerri and Rigau, 2016) and ingest semantic background knowledge extracted from external scientific corpora, in particular the ACL Anthology (Bird et al., 2008; Gildea et al., 2018). We perform entity linking by means of a new gazetteer based on a SAGE dictionary of Social Research Methods (Lewis-Beck et al., 2003), thus putting a special emphasis on the social sciences. The linking component addresses the synonymy problem and matches an entity despite name variations such as spelling variations. Finally, term filtering is carried out based on termhood and unithood, while scoring is achieved by calculating a relevance score based on TF-IDF (cf. Section \[para:relscore\]).

Our research experiments are based on publications from the Social Science Open Access Repository (SSOAR)[20] as well as the train and test data of the Rich Context Competition corpus[21]. Our work extends previous work on this topic (cf. (Eckle-Kohler et al., 2013)) in various ways: First, we do not limit our study to abstracts, but use the entire fulltext. Second, we focus on a broader range of semantic classes, i.e. *Research Method*, *Research Theory*, *Research Tool* and *Research Measurement*, tackling also the problem of identifying novel entities.

<img src="combined_images/pipeline.png" alt="Overview of the entity extraction pipeline" style="width:47.0%" />

#### Distributed semantic models

For domain adaptation, we integrate further background knowledge. We use topical information from word embeddings trained on an scientific corpus as an additional feature to our NER model. For this, we use agglomerative clustering of the word embeddings to identify topical groups of words. The cluster number of each word is used as additional sequential input feature for our CRF model. Semantic representations of words are a successful extension of common features, resulting in higher NER performance (Turian et al., 2010) and can be trained offline. In this work, the word vectors were learned based on 22,878 documents of the scientific ACL Anthology Reference Corpus[22] using Gensim[23] with the skip gram model (cf. (Mikolov et al., 2013)) and a pre-clustering algorithm[24].

#### Features

The features incorporated into the linear chain CRF are shown in the Table \[tab:features\]. The features depend mainly on the observations and on pairs of adjacent labels, using a log-linear combination. However, since simple token level training of CRFs leads to poor performance, more effective text features such as word shape, orthographic, gazetteer, Part-Of-Speech (POS) tags, along with word clustering (see Section \[subsec:dist-model\]) have been used.

| **Type**                 |                                                    **Features**                                                    |
|:-------------------------|:------------------------------------------------------------------------------------------------------------------:|
| **Token unigrams**       | *w*<sub>*i* − 2</sub>, *w*<sub>*i* − 1</sub>, *w*<sub>*i*</sub>, *w*<sub>*i* + 1</sub>, *w*<sub>*i* + 2</sub>, ... |
| **POS unigrams**         |                           *p*<sub>*i*</sub>, *p*<sub>*i* − 1</sub>, *p*<sub>*i* − 2</sub>                          |
| **Shapes**               |                                              shape and capitalization                                              |
| **NE-Tag**               |                                    *t*<sub>*i* − 1</sub>, *t*<sub>*i* − 2</sub>                                    |
| **WordPair**             |                              (*p*<sub>*i*</sub>, *w*<sub>*i*</sub>, *c*<sub>*i*</sub>)                             |
| **WordTag**              |                                       (*w*<sub>*i*</sub>, *c*<sub>*i*</sub>)                                       |
| **Gazetteer**            |                                                   SAGE Gazetteer                                                   |
| **Distributional Model** |                                                 ACL Anthology model                                                |

#### Knowledge resources

We use the SAGE thesaurus which includes well-defined concepts, an explicit taxonomic hierarchy between concepts as well as labels that specify synonyms of the same concept. A portion of terms is unique to the social science domain (e.g., ‘dependent interviewing’), while others are drawn from related disciplines such as statistics (e.g., ‘conditional likelihood ratio test’)[25]. However, since the thesaurus is not exhaustive and covers only the top-level concepts related to social science methods, our aim was to extend it by automatically extracting further terms from domain-specific texts, in particular from the Social Science Open Access Repository. More concretely, we carried out the following steps to extend SAGE as an off-line step. For step 2 and 3, candidate terms have been extracted by our pipeline for the entire SSOAR corpus.

1.  Assignment of semantic types to concepts (manual)

2.  Extracting terms variants such as abbreviations, synonyms, related terms from SSOAR (semi-automatic)

3.  Computation of term and document frequency scores for SSOAR (automatic)

#### Extracting term variants such as abbreviations, synonyms, and related terms

26,082 candidate terms have been recognized and classified by our pipeline and manually inspected to a) find synonyms and related words that could be linked to SAGE, and b) build a post-filter for incorrectly classified terms. Moreover, abbreviations have been extracted using the algorithm of Schwartz and Hearst (Schwartz and Hearst, 2003). This way, a Named Entity gazetteer could be built and is used at run-time. It comprises 1,111 terms from SAGE and 447 terms from the used glossary of statistical terms[26] as well as 54 previously unseen terms detected by the model-based classifier.

#### Computation of term and document frequency scores

Term frequency statistics have been calculated off-line for the entire SSOAR corpus. The term frequency at corpus level will be used at run time to determine the term relevance at the document level by calculating the TF-IDF scores. The most relevant terms from SAGE are listed in Table \[tab:SAGET\].

| \[tab:SAGET\] **SAGE Term** | **TF-IDF Score** | **Semantic Class** |
|:----------------------------|:-----------------|:-------------------|
| Fuzzy logic                 | 591,29           | Research Method    |
| arts-based research         | 547,21           | Research Method    |
| cognitive interviewing      | 521,13           | Research Method    |
| QCA                         | 463,13           | Research Method    |
| oral history                | 399,68           | Research Method    |
| market research             | 345,37           | Research Field     |
| life events                 | 186,61           | Research Field     |
| Realism                     | 314,34           | Research Theory    |
| Marxism                     | 206,77           | Research Theory    |
| ATLAS.ti                    | 544,51           | Research Tool      |
| GIS                         | 486,01           | Research Tool      |
| SPSS                        | 136,52           | Research Tool      |

#### Definition of a relevance score

Relevance of terminology is often assessed using the notion of *unithood*, i.e. ‘the degree of strength or stability of syntagmatic combinations of collections’, and *termhood*, i.e. ‘the degree that a linguistic unit is related to domain-specific concepts’ (Kageura and Umino, 1996). Regarding *unithood*, the NER model implicitly contains heuristics about legal POS tag sequences for candidate terms, consisting of at least one noun (NN), preceeded or followed by modifiers such as adjectives (JJ), participles (VB\*) or cardinal numbers (CD), complemented by wordshape features.

In order to find out if the candidate term also fulfills the *termhood* requirement, domain-specific term frequency statistics have been computed on the SSOAR repository, and set in contrast to general domain vocabulary terms. It has to be noted that only a small portion of the social science terms is actually unique to the domain (e.g., ‘dependent interviewing’), while others might be drawn from related disciplines such as statistics (e.g., ‘conditional likelihood ratio test’).

#### Preliminary results

Our method has been tested on 100 fulltext papers from SSOAR and ten documents from the Rich Context Competition (RCC), all randomly selected from a hold out corpus. In our experiments on SSOAR Social Science publications, we compared results to the given metadata information. The main finding was that while most entities from the SAGE thesaurus could be extracted and linked reliably (e.g., ’Paired t-test’), they could not be easily mapped to the SSOAR metadata terms, which consist of only a few abstract classes (e.g., ’quantitative analysis’). Furthermore, our tool was tested by the RCC organizer, were the judges reviewed ten random publications and generated qualitative scores for each document. In this evaluation, the research method extraction tool received the overall best results of all competitors for this task.[27]

Research field classification
-----------------------------

### Task description

The goal of this task is to identify the research fields covered in the social science publications. In general, two approaches could be applied to this task. One is the extraction of relevant terms of the publications. It means that this task could be seen as a keyword extraction task and the detected terms considered as descriptive terms regarding the research field. The second approach is to learn to classify publications research fields with the use of annotated data in a superviesed manner. The benifit of the second approach is that the classification scheme to describe the research field can be defined by experts of the domain. The disadvantage of supervised trained classifiers for this task is the lack of applicable training data. Furthermore, it must be ensured that the training data is comparable to the texts the research field classifier should be applied on.

#### Formal problem definition

Let *P* denote a set of publications of size *n*, *A* a set of corresponding abstracts of the same size and *L* a set of *k* defined class labels describing research fields. The task of research field classification is to select for each publication *p*<sub>*i*</sub> ∈ *P* based on the information contained in the corresponding abstract *a*<sub>*i*</sub> ∈ *A* a set of labels *C*<sub>*i*</sub> = ⌀ ∩ {*c*<sub>1</sub>…*c*<sub>*n*</sub>|*c*<sub>*n*</sub> ∈ *L*} of *n* labels. The number of *n* denotes the number of labels from *L* describing the research field of *a*<sub>*i*</sub> and can vary for each publication *p*<sub>*i*</sub>. If there is no label *l*<sub>*k*</sub> representing the information given by the abstract *a*<sub>*i*</sub> the set of class labels is the empty set ⌀.

### Our approach

Since we didn’t receive any gold standard for this task during the competition we decided to make use of external resources. We decided to use an external labeled dataset to train a text classifier which is able to predict one or moreresearch label for a given abstract of a publication.

The publications given througout the competition belongs to the domain of social sciences we considered metadata from a open access repository for the social sciences called SSOAR. The advantages are twofold. On the one hand, we could rely on professional annotations in a given classification scheme covering the social sciences and related areas. On the other hand the source is openly available.[28]

The annotated data of SSOAR contains four different annotation schemes for research field related information. By reviewing these schemes, we decided to use the Classification Social Science (classoz) annotation scheme. The number of classes in each schema, coverage of each classification, and the distribution of data in each schema affected our decision. An exhausitve description of the used data can be found in \[sec:external\_data\_sources\].

#### Pre-processing and model architecture

SSOAR is a multilingual repository. Therefore, the available abstracts may vary in language and the language of the abstract may differ from the language of the article itself. We selected all English abstract with valid classification as our dataset. Mainly because of the language of the RCC corpus. However, it should be noted that the multilingual SSOAR abstract corpus has a skewed distribution of languages with English and German as the main languages. We count 22,453 English abstracts with valid classification after filtering. Due to the unequal distribution of labels in the dataset, we need to guaranty enough training data for each label. We selected only labels with frequency over 300 for training the model, which results in a total of 44 out of 154 classification labels representing research fields. For creating train and test set, 22,453 SSOAR publications with their assigned labels were split randomly. We used a train/validation/test split of 70/10/20. We decided to train a text classifier based on a fasttext (Joulin et al., 2017) model in the author’s implementation. The arguments to use this model was the speed in comparison to a more complex neural net architecture and the still comparable to state of the art performance (e.g.(Wang et al., 2018)). The model is trained with learning rate 1.0 for 150 epochs. Also, the negative sampling parameter is set to 25.

### Evaluation

Figure \[fig:fields\_precision\_recall\] shows the performance of the model regarding various evaluation metrics for different thresholds. A label is assigned to a publication if the model outputs a probability for the label above the defined threshold. In multi-label classification, this allows us to evaluate our model from different perspectives. As illustrated in figure \[fig:fields\_precision\_recall\], the intersection of the micro precision and the micro recall curves is at the threshold of 0.1, where the highest micro f1 score is achieved. By increasing the threshold from this point, the micro-precision score is increasing, but the micro recall is falling. By decreasing threshold, these trends are inverted. Also, the default threshold of 0.5 doesn’t look promising. In spite of micro-precision about 0.75, we have a problem with the very high number of items without any prediction. In respect to this observation it is advantageous to select a lower threshold in a productive environment. The curve named *without prediction* shows for a given threshold the share of publications in the test set without any prediction. If the selected threshold value is high, the number of publications for which the model cannot predict a research field increases. For example, a selected threshold value of 0.55 leads to 40% unclassified publications in the test set. The *one correct* named curve indicates the quality of the publication wise prediction. It shows the share of all publications in the test set where at least one of the predicted research field labels can be found in the ground truth data. For instance, if a threshold of 0.1 is selected for 75% of the publications in the test set, at least one of the model predictions are correct. This value decreases with increasing threshold simmilar to the recall metric. The final micro f1 value on the test set for our model and a selected threshold of 0.1 is 0.56 (precison 0.55, recall 0.56).

<img src="combined_images/fields-precision-recall.png" alt="Performance for different selected probability thresholds (validation set)" />

Discussions and Limitations
---------------------------

#### Dataset Extraction.

For the dataset extraction task, the proposed methods are only tested on social science related data. The performance measures we have introduced are based on a hold out data set of our automatically created dataset. Especially the recall may be biased given that our training as well as testing data is biased towards known datasets, where datasets not yet part of our reference set are not considered.

The results of the second phase presented during the RCC workshop[29] are showing good performance of our approach in comparison to the other finalist teams with the highest precision 52.2% (second: 47.0%) and second in recall (ours: 20.5, best: 34.8%). With respect to F1, our approach provides the second best performing system for this task (29.5%, 40.0% for first place). The results on the manually created hold out set underline, that our system performs better in respect to precision in comparison to the other finalist teams. Given that our models are supervised through a corpus of social sciences publications, we anticipate limited generalisability across other discipline and plan to investigate this aspect as part of future work. In this context, the focus of our training data towards survey data, also reflected in dataset titles such as *Current Population Survey*, could have biased the model to detect the survey as a specific type of research datasets better than other subtypes like e.g. text corpora in the NLP community. In general, however, our apporach to use a weakly labled corpus created using a list of datast names could be applied in other research domains.

#### Research method extraction.

We consider the extraction of research methods from full text as the most challenging task. This is because the sample vocabulary given by the RCC covers a large thematic areai. The task itself was defined as the identification of research methods associated with a specific publication, which in turn are drawn from a specific research field. Since no training data has been provided, we combined models from another research domain with a manually currated extension of known research method terms. The qualitative reviews during the two phases of the competiton attested that this approach works.

#### Research field classification.

Our supervised machine learning approach to handle the research field classification task performs well on the dataset created from social science publication metadata. A micro F1 measure of above 55% seems to indicate reasonable performance considering the small dataset with 44 labels and a mean number of keywords of three terms per publication. As one example of multilabel classification with a comparable size of labels we would like to mention the classification of texts in the domain of medicine presented in (Wang et al., 2018). The models tested by the authors on the task of multilabel prediction from 50 different labels leads to micro F1 values between 53% and 62%.
Considering the evaulation approach, focused on publications from the social sciences, the generalisability across other disciplines remains unclear and requires further research. Even though the used classification scheme may cover neighbouring disciplines, for instance, medicine, the numbers of samples of the training data covering other research fields than the social science is limited. Our pragmatic approach approach of basing our classifications on the abstract of the publications makes it applicable even in scenarios where the full-text of publications is not accessible.

Conclusion
----------

This chapter has provided an overview on our solutions submitted to the Rich Context Competition 2018. Aimed at improving search, discovery and interpretability of scholarly resources, we are addressing three distinct tasks all aimed at extracting structured information about research resources from scientitifc publications, namely the extraction of dataset mentions, the extraction of mentions of research methods and the classification of research fields.

In order to address all aforementioned challenges, our pipelines make use of a range of preprocessing technniques together with state-of-the-art NLP methods as well as supervised machine learning approaches tailored towards the specific nature of scholarly publications as well as the dedicated tasks. In addition, background datasets have been used to facilitate supervision of methods at larger scale.

Our results indicate both significant opportunities for automating the aforementioned three tasks but also their challenging nature, in particular given the lack of publicly available gold standards for training and testing. Aggregating and publishing such data has been identified as important activity for future work, and is a prerquisite for significantly advancing state-of-the-art methods.

Acknowledgments
---------------

This work has been partially funded by Deutsche Forschungsgemeinschaft (DFG) under grant number MA 3964/7-1.

References
----------

Agerri R and Rigau G (2016) Robust multilingual named entity recognition with shallow semi-supervised features. *Artificial Intelligence* 238. Elsevier: 63–82.

Altman M and King G (2007) A proposed standard for the scholarly citation of quantitative data. *D-lib Magazine* 13(3/4).

Backes T (2018a) Effective unsupervised author disambiguation with relative frequencies. In: *JCDL* (eds J Chen, MA Gonçalves, JM Allen, et al.), 2018, pp. 203–212. ACM. Available at: <http://dblp.uni-trier.de/db/conf/jcdl/jcdl2018.html#Backes18>.

Backes T (2018b) The impact of name-matching and blocking on author disambiguation. In: *CIKM* (eds A Cuzzocrea, J Allan, NW Paton, et al.), 2018, pp. 803–812. ACM. Available at: <http://dblp.uni-trier.de/db/conf/cikm/cikm2018.html#Backes18>.

Bird S, Dale R, Dorr BJ, et al. (2008) The acl anthology reference corpus: A reference dataset for bibliographic research in computational linguistics. In: *Proceedings of the sixth international conference on language resources and evaluation (lrec 2008)*, 2008. European Language Resources Association (ELRA).

Boland K and Krüger F (2019) Distant supervision for silver label generation of software mentions in social scientific publications. In: *Proceedings of the 4th joint workshop on bibliometric-enhanced information retrieval and natural language processing for digital libraries*, 2019, pp. 15–27.

Boland K, Ritze D, Eckert K, et al. (2012) Identifying references to datasets in publications. In: *International conference on theory and practice of digital libraries*, 2012, pp. 150–161. Springer.

Eckle-Kohler J, Nghiem T-D and Gurevych I (2013) Automatically assigning research methods to journal articles in the domain of social sciences. In: *Proceedings of the 76th asis&T annual meeting: Beyond the cloud: Rethinking information boundaries*, 2013, p. 44. American Society for Information Science.

Finkel JR, Grenager T and Manning C (2005) Incorporating non-local information into information extraction systems by gibbs sampling. In: *Proceedings of the 43rd annual meeting on association for computational linguistics*, 2005, pp. 363–370. Association for Computational Linguistics.

Ghavimi B, Mayr P, Lange C, et al. (2016) A semi-automatic approach for detecting dataset references in social science texts. *Information Services & Use* 36(3-4). IOS Press: 171–187.

Gildea D, Kan M-Y, Madnani N, et al. (2018) The acl anthology: Current state and future directions. In: *Proceedings of workshop for nlp open source software (nlp-oss)*, 2018, pp. 23–28.

Hienert D, Kern D, Boland K, et al. (2019) A digital library for research data and related information in the social sciences. In: *JCDL* (eds M Bonn, D Wu, JS Downie, et al.), 2019, pp. 148–157. IEEE. Available at: <http://dblp.uni-trier.de/db/conf/jcdl/jcdl2019.html#HienertKBZM19>.

Joulin A, Grave E, Bojanowski P, et al. (2017) Bag of tricks for efficient text classification. In: *Proceedings of the 15th conference of the european chapter of the association for computational linguistics: Volume 2, short papers*, April 2017, pp. 427–431. Association for Computational Linguistics.

Kageura K and Umino B (1996) Methods of automatic term recognition: A review. *Terminology. International Journal of Theoretical and Applied Issues in Specialized Communication* 3(2). John Benjamins Publishing Company: 259–289.

Krämer T, Klas C-P and Hausstein B (2018) A data discovery index for the social sciences. In: *Scientific data*, 2018.

Lewis-Beck M, Bryman AE and Liao TF (2003) *The Sage Encyclopedia of Social Science Research Methods*. Sage Publications.

Mikolov T, Sutskever I, Chen K, et al. (2013) Distributed representations of words and phrases and their compositionality. In: *Advances in neural information processing systems*, 2013, pp. 3111–3119.

Nasar Z, Jaffry SW and Malik MK (2018) Information extraction from scientific articles: A survey. *Scientometrics* 117(3). Springer: 1931–1990.

QasemiZadeh B and Schumann A-K (2016) The acl rd-tec 2.0: A language resource for evaluating term extraction and entity recognition methods. In: *LREC*, 2016.

Sahoo P, Gadiraju U, Yu R, et al. (2017) Analysing structured scholarly data embedded in web pages. *Lecture Notes in Computer Science* 9792. Springer.

Schwartz AS and Hearst MA (2003) A simple algorithm for identifying abbreviation definitions in biomedical text. In: *Pacific symposium on biocomputing*, 2003, pp. 451–462.

Tkaczyk D, Szostek P, Fedoryszak M, et al. (2015) CERMINE: Automatic extraction of structured metadata from scientific literature. *International Journal on Document Analysis and Recognition (IJDAR)* 18(4). Springer: 317–335.

Turian J, Ratinov L and Bengio Y (2010) Word representations: A simple and general method for semi-supervised learning. In: *Proceedings of the 48th annual meeting of the association for computational linguistics*, Stroudsburg, PA, USA, 2010, pp. 384–394. ACL ’10. Association for Computational Linguistics. Available at: <http://dl.acm.org/citation.cfm?id=1858681.1858721>.

Wang G, Li C, Wang W, et al. (2018) Joint embedding of words and labels for text classification. *arXiv preprint arXiv:1805.04174*.

Yu R, Gadiraju U, Fetahu B, et al. (2019) KnowMore - knowledge base augmentation with structured web markup. *Semantic Web* 10(1): 159–180. Available at: <http://dblp.uni-trier.de/db/journals/semweb/semweb10.html#YuGFLRD19>.

[1] <https://www.gesis.org/en/institute>

[2] [ https://www.gesis.org/en/institute/departments/knowledge-technologies-for-the-social-sciences/]( https://www.gesis.org/en/institute/departments/knowledge-technologies-for-the-social-sciences/)

[3] <https://www.gesis.org/en/research/applied-computer-science/labs/wts-research-labs>

[4] <https://www.gesis.org/en/research/external-funding-projects/archive/infolis-i-and-ii>

[5] [search.gesis.org](search.gesis.org)

[6] <https://datasearch.gesis.org/>

[7] <https://coleridgeinitiative.org/richcontextcompetition>

[8] <https://www.ssoar.info>

[9] <https://fasttext.cc/>

[10] <https://www.gesis.org/ssoar/home>

[11] <https://www.gesis.org/en/services/research/tools/thesaurus-for-the-social-sciences>

[12] <https://www.gesis.org/angebot/recherchieren/tools-zur-recherche/klassifikation-sozialwissenschaften> (in German)

[13] <span><http://www.openarchives.org></span>

[14] <https://github.com/CeON/CERMINE>

[15] <https://jats.nlm.nih.gov>

[16] [spacy.io](spacy.io)

[17] http://methods.sagepub.com

[18] apart from those used in traditional NER systems like *Person*, *Location*, or *Organization* with abundant training data, as covered in the Stanford NER system(Finkel et al., 2005)

[19] <https://nlp.stanford.edu/projects/project-ner.shtml>

[20] <https://www.ssoar.info>

[21] <https://coleridgeinitiative.org/richcontextcompetition> with a total of 5,000 English documents

[22] <https://acl-arc.comp.nus.edu.sg/>

[23] <https://radimrehurek.com/gensim/>

[24] Word embeddings are trained with a skip gram model using embedding size equal to 100, word window equal to 5, minimal occurrences of a word to be considered 10. Word embeddings are clustered using agglomerative clustering with a number of clusters set to <span>500, 600, 700</span>. Ward linkage with Euclidean distance is used to minimize the variance within the clusters.

[25] A glossary of statistical terms as provided in <https://www.statistics.com/resources/glossary/> has been added as well.

[26] Based on <https://www.statistics.com/resources/glossary>

[27] Rank: 1,2,2,1,1 for judges 1-5.

[28] A script to download the metadata of SSOAR can be found in github/research-field-classifier

[29] Agenda of the Workshop: <https://coleridgeinitiative.org/richcontextcompetition/workshopagenda>. The results of the finalists are presented here: <https://youtu.be/PE3nFrEkwoU?t=9865>.

---

# Chapter 9 - Finding datasets in publications: The University of Paderborn approach

---
abstract: |
    The steadily increasing number of publications available to researchers
    makes it difficult to keep track of the state of the art. In particular,
    tracking the datasets used, topics addressed, experiments performed and
    results achieved by peers becomes increasingly tedious. Current academic
    search engines render a limited number of entries pertaining to this
    information. However, having this knowledge would be beneficial for
    researchers to become acquainted with all results and baselines relevant
    to the problems they aim to address. With our participation in the NYU
    Coleridge Initiative’s Rich Context Competition, we aimed to provide
    approaches to automate the discovery of datasets, research fields and
    methods used in publications in the domain of Social Sciences. We
    trained an Entity Extraction model based on Conditional Random Fields
    and combined it with the results from a Simple Dataset Mention Search to
    detect datasets in an article. For the identification of Fields and
    Methods, we used word embeddings. In this paper, we present how our
    approaches performed, their limitations, some of the encountered
    challenges and our future agenda.
author:
- Rricha Jalota
- Nikit Srivastava
- Daniel Vollmers
- René Speck
- Michael Röder
- Ricardo Usbeck
- 'Axel-Cyrille [Ngonga Ngomo]{}'
bibliography:
- 'references.bib'
title: |
    DICE @ Rich Context Competition 2018 – Combining Embeddings and
    Conditional Random Fields for Research Dataset, Field and Method
    Recognition and Linking
---

Literature Review
=================

Previous works on information retrieval from scientific articles are
mainly seen in the field of Bio-medical Sciences and Computer Science,
with systems [@DBLP:journals/ploscb/WestergaardSTJB18] built using the
MEDLINE[^1] abstracts, full-text articles from PubMed Central[^2] or ACL
Anthology dataset[^3]. The documents belonging to the above-mentioned
datasets follow a similar format, and thus, several metadata and
bibliographical extraction frameworks like CERMINE [@tkaczyk2014cermine]
have been built on them. However, since articles belonging to the domain
of Social Sciences do not follow a standard format, extracting key
sections and metadata using already existing frameworks like
GROBID [@lopez2009grobid], ScienceParse[^4] or
ParsCit [@councill2008parscit] did not seem as viable options, majorly
because these systems were still under development and lacked certain
desired features. Hence, building upon the approach of Westergaard et.
al [@DBLP:journals/ploscb/WestergaardSTJB18], we built our own
sections-extraction framework for dataset detection and research fields
and methods identification.

Apart from content and metadata extraction, keyphrase or topic
extraction from scientific articles has been another emerging research
problem in the domain of information retrieval from scientific articles.
Gupta et al. [@gupta2011analyzing] devised a method, based on applying
semantic extraction patterns to the dependency trees of sentences in an
article’s abstract, for characterizing a research work in terms of its
focus, application domain and techniques used. Mahata et
al. [@mahata2018key2vec] proposed an approach to process text documents
for training phrase embeddings in order to thematically represent
scientific articles and for ranking the extracted keyphrases. Jansen et
al. [@jansen2016extracting] extracted core claims from scientific
articles by first detecting keywords and keyphrases using rule-based,
statistical, machine learning and domain-specific approaches and then
applying document summarization techniques.

The problem of dataset detection and methods and fields identification
is not only somewhat different from the ones mentioned above, but also
our approach for tackling it is radically disparate. The following
sections describe our approach in detail.

Project Architecture
====================

![Data Flow Pipeline: Red lines depict the flow of given and generated
files between components whereas black lines represent the generation of
final output
files[]{data-label="fig:flowchart"}](combined_images/flowchart_paper.pdf){width="\textwidth"}

Our pipeline (shown in Figure \[fig:flowchart\]) consisted of three main
components: 1) Preprocessing, 2) Fields and Methods Identification and
3) Dataset Extraction. The Preprocessing module read the text from
publications and generated some additional files (see
Section \[preprocess\] for details). These files along with the given
Fields and Methods vocabularies were used to infer Research Fields and
Methods from the publications. Then, the information regarding fields
was passed onto the Dataset Detection module and using the Dataset
Vocabulary, it identified Dataset Citations and Mentions. The following
sections provide a detailed overview of each of these components.

Preprocessing
=============

The publications were provided in two formats: PDF and text. For
Phase-1, we used the given text files, however during Phase-2, we came
across many articles in the training files that had not been properly
converted to text and contained mostly non-ASCII characters. To work
with such articles, we relied on the open source tool `pdf2text` from
`poppler suite`[^5] to extract text from PDFs. The `pdf2text` command
served as the first preprocessing step and was called as a subprocess
from within a python script. It was used with `-nopgbrk` argument to
generate the text files.

Once we had the text files, we followed the rule-based approach as
proposed by Westergaard et al. [@DBLP:journals/ploscb/WestergaardSTJB18]
for pre-processing. The following series of operations based mostly on
regular expressions were performed:

-   Words split by hyphens were de-hyphenated

-   Irrelevant data was removed (i.e., equations, tables,
    acknowledgment, references);

-   Main sections (i.e., abstract, keywords, JEL-Classification,
    methodology/data, summary, conclusion) were identified and
    extracted;

-   Noun phrases from these sections were extracted (using the python
    library, spaCy[^6]).

We came up with the heuristics for identifying the main sections after
going through the articles from different domains in the training data.
We collected the surface forms for the headings of all major sections
(abstract, keywords, introduction, data, approach, summary, discussion)
and applied regular expressions to search for them and separate them
from one another. The headings and their corresponding content were
stored as key-value pairs in a file. For generating noun-phrases, this
file was parsed and for all the values (content) in key-value
(heading-content) pairs, a spaCy object `doc` was created sentence-wise.
Using the built-in function for extracting noun chunks
[`doc.noun_chunks`]{}, we generated key-value pairs of heading and
noun-phrases found in the content and stored them in another file, which
we later used for fields and methods identification.

If a section was not found in the article (because of no explicit
mention), then only the sections that could be detected were extracted.
The remaining content was saved as `reduced_content` after cleaning and
noun-phrases were extracted from them to prevent loss of any meaningful
data. Table \[tab:sections\] shows the number of identified sections in
validation data. For brevity, we have evaluated only four main sections:
title, abstract, keywords and methodology/data, since these are the ones
getting preferential treatment in methods and fields identification.

[C[4cm]{} C[3.5cm]{} C[4cm]{}]{} **Sections** & **No explicit mention**
& **Mentioned but not found**  
Title & 0 & 0  
Keywords & 13 & 2  
Abstract & 0 & 1  
Methodology/Data & 18 & 4  

We used `pdfinfo` from zhe `poppler suite` to extract PDF metadata that
very often contained the keywords and subject of an article. This tool
was helpful in those cases where the keywords were not found by the
regular expression.  
In the end, the preprocessing module generated four text files for a
publication: PDF-converted text, PDF-metadata, processed articles
containing relevant data, and noun phrases from the relevant sections,
respectively. These files were then passed on to the other two
components of the pipeline, which have been discussed below.

Approach
========

Research Fields and Methods Identification
------------------------------------------

### Vocabulary Generation and Model Preperation

1.  **Research Methods Vocabulary**: In Phase-1 of the challenge, we
    used the given methods vocabulary. However, the feedback that we
    received from Phase-1 evaluation gave more emphasis to statistical
    methods used by the authors, references to the time scope, unit of
    observation, and regression equations rather than the means used to
    compile the data, i.e., surveys. Since the given methods vocabulary
    was not a complete representation of statistical methods and also
    consisted terms depicting surveys, in Phase-2, we decided to create
    our own Research Methods Vocabulary using Wikipedia and DBpedia.[^7]
    We manually curated a list of all the relevant statistical methods
    from Wikipedia[^8] and fetched their descriptions from the
    corresponding DBpedia resources. For each label in the vocabulary,
    we extracted noun phrases from its description and added them to the
    vocabulary. For examples, please refer Table \[tab:vocab\].

    [C[1.5cm]{} C[5cm]{} C[5cm]{}]{} **Label** & **Description** &
    **Noun Phrases from Description**  
    Political forecasting & Political forecasting aims at predicting the
    outcome of elections. & Political forecasting, the outcome,
    elections  
    Nested sampling algorithm & The nested sampling algorithm is a
    computational approach to the problem of comparing models in
    Bayesian statistics, developed in 2004 by physicist John Skilling. &
    algorithm, a computational approach, the problem, comparing models,
    Bayesian statistics, physicist John Skilling  

2.  **Research Fields Vocabulary**: For both the phases, we used the
    given research fields vocabulary and, just like the methods
    vocabulary, added noun phrases from the description of the labels to
    it. However, since our phase-1 model seemed to confuse fields with
    methods, for Phase-2, we additionally created a blacklist of terms
    that didn’t contain any domain-specific information, such as; Mixed
    Methods, Meta Analysis, Narrative Analysis and the like.

3.  **Word2Vec Model generation**: In this pre-processing step, we used
    the above-mentioned vocabulary files containing noun phrases to
    generate a vector model for both research fields and methods. The
    vector model was generated by using the labels and noun phrases from
    the description of the available research fields and methods to form
    a sum vector. The sum vector was basically the sum of all the
    vectors of the words present in a particular noun phrase. 3em [The
    pre-trained Word2Vec model
    `GoogleNews-vectors-negative300.bin` [@DBLP:journals/corr/abs-1301-3781]
    was used to extract the vectors of the individual words.]{}

4.  **Research Method training results creation**: For research methods,
    we generated an intermediate result file for the publications
    present in the training data. It was generated using a
    `naïve finder algorithm` which, for each publication, selected the
    research method with the highest cosine similarity to any of its
    noun phrase’s vectors. This file was later used to assign weights to
    research methods using Inverse Document Frequency.

### Processing with Trained Models

-   **Finding Research Fields and Methods:** To find the research fields
    and methods for a given list of publications, we performed the
    following steps: (At first, Step 1 was executed for all the
    publications, thereafter Step 2 and 3 were executed iteratively for
    each publication).

    1.  **Naïve Research Method Finder run** - In this step, we executed
        the `naïve research method finding algorithm` (i.e. selected a
        research method based on the highest cosine similarity between
        vectors) against all the current publications and then merged
        the results with the existing result from the
        `research methods’ preprocessing step`. The combined result was
        then used to generate IDF weight values for each
        `research method`, to compute the significance of recurring
        terms.

    2.  **IDF-based Research Method Selection** - We re-ran the
        algorithm to find the closest research method to each noun
        phrase and then sorted the pairs based on their weighted cosine
        similarity. The weights were taken from the IDF values generated
        in the first step and the manual weights assigned (section-wise
        weighting). Here, the noun phrases that came from the
        methodology section and from the methods listed in
        JEL-classification (if present) were given a higher preference.
        The pair with the highest weighted cosine similarity was then
        chosen as the Research Method of the article.

    3.  **Research Field Finder run** - In this step, we first found the
        closest research field from each noun phrase in the publication.
        Then we selected the Top N (= 10) pairs that had the highest
        weighted cosine similarity. Afterwards, the noun phrases that
        had a similarity score less than a given threshold (= 0.9) were
        filtered out. The end-result was then passed on to a
        post-processing algorithm.  
        For weighted cosine similarity, the weights were assigned
        manually based on the section of publication from which the noun
        phrases came. In general, noun phrases from title and keywords
        (if present) were given a higher preference than other sections,
        since usually these two sections hold the crux of an article.
        Note, if sections could not be discerned from an article, then
        noun phrases from the section, reduced\_content (see section
        \[preprocess\]), were used to find both fields and methods.

    4.  **Research Field Selection** - The top-ranked term from the
        result of step 3, which was not present in the blacklist of
        irrelevant terms, was marked as the research field of the
        article.

Dataset Extraction
------------------

For identifying the datasets in a publication, we followed two
approaches and later combined results from both. Both the approaches
have been described below.

1.  **Simple Dataset Mention Search:** We chose the dataset citations
    from the given Dataset Vocabulary that occurred for one dataset only
    and used these unique mentions to search for the corresponding
    datasets using regular expressions in the text documents. Then, we
    computed a frequency distribution of the datasets. As can be seen
    from Figure \[fig:graph\], certain dataset citations occurred more
    often than others. This is because while searching for dataset
    citations, apart from the dataset title, the corresponding
    mention\_list from Dataset Vocabulary was also considered, which
    contained many commonly occurring terms like ‘time’, ‘series’, ‘time
    series’, ‘population’ etc. Therefore, we filtered out those dataset
    citations that occurred more than a certain threshold value (=1.20)
    multiplied by the median of the frequency distribution and had less
    than 3 distinct mentions in a publication. The remaining citations
    were written to an interim result file. Table \[tab:simple\] depicts
    the improvement in performance of Simple Dataset Mention Search with
    the inclusion of filtering. The filtering process improved the
    F1-measure by 42.86%. Note, as the validation data consisted of only
    100 articles, changing the threshold value to 1.10 or 1.30 didn’t
    result in any significant change, hence we have maintained a
    constant threshold value of 1.20 in our comparison table.

    [C[1.5cm]{} C[3.5cm]{} C[3.5cm]{} C[3.5cm]{}]{} **Metrics** &
    **without filtering** & **Threshold=1.20, mentions $<$ 3** &
    **Threshold=1.20, mentions $<$ 4**  
    Precision & 0.09 & 0.71 & 0.09  
    Recall & 0.28 & 0.12 & 0.28  
    F1-score & 0.14 & **0.20** & 0.14  

    ![Frequency Distribution of Dataset
    Citations[]{data-label="fig:graph"}](combined_images/freq.pdf)

2.  **Rasa-based Dataset Detection:** In our second approach, we trained
    an entity extraction model based on conditional random fields using
    Rasa NLU [@DBLP:journals/corr/abs-1712-05181]. For training the
    model we used the Spacy Tokenizer[^9] for the preprocessing step.
    For Entity Recognition we used BILOU tagging and used 50 iterations
    to train the CRF. We used the Part of Speech tags, the case of the
    input tokens and the suffixes of the tokens as input features for
    the CRF model. We particularly tested two configurations for
    training the CRF-based NER model. In Phase-1, the 2500 labeled
    publications from the training dataset were used for training the
    Rasa NLU[^10] model. Later in Phase-2, when the Phase-1 holdout
    corpus was released, we combined its 5000 labeled publications with
    the previously given 2500 labeled publications and then retrained
    the model again with these 7500 labeled publications.  
    **Running the CRF-Model:** The trained model was run against the
    preprocessed data to detect dataset citations and mentions. Only the
    entities that had a confidence score greater than a certain
    threshold value (= 0.72) were considered as dataset mentions. A
    dataset mention was considered as a citation only if it was found in
    the given Dataset Vocabulary (via string matching either with a
    dataset title or any of the terms in a dataset ‘mention\_list’) and
    if it belonged to the research field of the article. To check if a
    dataset belonged to the field of research, we found the cosine
    similarity of the terms in the ‘subjects’ field of the Dataset
    Vocabulary with the keywords and the identified Research Field of
    the article.

3.  **Combining the two approaches:** The output generated by the
    Rasa-based approach was first checked for irrelevant citations
    before a union was performed to combine the results. This was done
    by checking if a given dataset\_id occured more than a threshold
    value (= 1.20) multiplied by the median of the frequency
    distribution (same as the filtering process of the Simple Dataset
    Mention Search).

Note that, the threshold values mentioned above were set after some
experiments of trial and testing. For dataset extraction, the goal was
to keep the number of false positives low while not compromising the
true positives. For research methods and fields, a manual evaluation
(see the next section for details) was done to test if the results made
sense with the articles.

Evaluation
==========

We performed a quantitative evaluation for Dataset Extraction using the
evaluation script provided by the competition organizers. This
evaluation (see Table \[tab:dataset\]) was carried out against the
validation data, wherein we compared four different configurations. As
can be inferred from the table, there was only a slight increase in
performance for the Rasa-based model, when the training samples were
increased. However, combining it with the Simple Dataset Mention Search,
increased the performance by *19.42%*. Interestingly, there was no
improvement in performance in the combined approach even when the
training samples for the Rasa-based model were increased. This might be
because of the removal of frequently-occuring terms from the
Rasa-generated output, based on the frequency distribution of dataset
mentions as computed in the Simple Dataset Mention Search.  

[ M[2.2cm]{} | M[2.3cm]{} | M[2.2cm]{} M[2.2cm]{} M[2.2cm]{} ]{} & &  
**Metrics**& **Rasa-based Approach** (2500) & **Rasa-based Approach**
(7500) & **Combined Approach** (2500) & **Combined Approach** (7500)  
**Precision** & 0.382 & 0.388 & **0.456** & **0.456**  
**Recall** & 0.26 & 0.26 & **0.31** & **0.31**  
**F1** & 0.309 & 0.311 & **0.369** & **0.369**  

For Research Fields and Methods, we carried out a qualitative evaluation
against 10 randomly selected articles from Phase-1 holdout corpus.
Tables \[tab:field\] and \[tab:method\] depict a comparison between the
predicted fields and methods in Phase-1 and Phase-2. In general, our
models returned a more granular output in the second phase, solely
because of the modifications we made in the vocabularies.

[C[1cm]{} C[4.5cm]{} C[3cm]{} C[3.5cm]{}]{} **pubid** & **Keywords** &
**Phase-1** & **Phase-2**  
10328 & Cycling for transport, leisure and sport cyclists & Health
evaluation & **Public health and health promotion**  
7270 & Older adult drug users, harm reduction & Health Education &
**Correctional health care**  
6053 & Economic conditions - crime relationship, homicide & Homicide &
**Gangs and crime**  

[C[1cm]{} C[4.5cm]{} C[3cm]{} C[3.5cm]{}]{} **pubid** & **Keywords** &
**Phase-1** & **Phase-2**  
10328 & Thematic content analysis & Thematic analysis & **Sidak
correction**  
7270 & Interviews conducted face to face, finding systematic patterns or
relationships among categories identified by reading the interview
transcript & Qualitative interviewing & **Sampling design**  
6053 & Autoregressive integrated moving average (ARIMA) time-series
model & Methodological pluralism & **Multivariate statistics**  

Discussion
==========

Throughout the course of this competition, we encountered several
challenges and limitations in all the three stages of the pipeline. In
the preprocessing step, the appropriate extraction of text from PDFs
turned out to be rather challenging. This was especially due to the
varied formats of the publications, which made the extraction of
specific sections—that contained all data relevant to our
work—demanding. As mentioned before, if there was no explicit mention of
the key-terms like
`Abstract, Keywords, Introduction, Methodology/Data, Summary, Conclusion`
in the text, then the content was saved as ‘reduced\_content’ after
applying all other preprocessing steps and filtering out any irrelevant
data.  
Our experiments suggest that the labeled publications we received for
dataset detection were not uniform in the dataset mentions provided,
which made it difficult to train an entity extraction model even with an
increased number of training samples. Hence, there was only a slight
improvement in performance when the Rasa-model was trained with 7500
publications instead of 2500. This was also why we combined the
Rasa-based approach with the Simple Dataset Mention Search, so that at
least the datasets that were present in the vocabulary didn’t get
missed.

Regarding the fields and methods, vocabularies played an immense role in
their identification. The vocabularies that were provided by the SAGE
publications contained some terms that were either polysemous or very
high-level and therefore, were picked up by our model very often. Hence,
for research methods, we created our own vocabulary containing all the
relevant statistical methods, and for fields, we introduced a blacklist
of irrelevant terms and looked it up each time, before writing the
result to the output file. The goal of blacklist generation was to
filter the terms that did not carry domain-specific information and
sounded more like research methods than fields. Since the focus was on
more granulated results, we tried to look for open ontologies for Social
Science Fields and Methods and unfortunately, could not find any. It is
worth mentioning that since our approach for Fields and Methods
identification relied heavily upon vocabularies, it could not find any
new methods or fields from the publications.

Based on the final evaluation feedback, since our Phase-2 models did not
perform as good as we expected, following are a few things that we could
have done differently.

1.  For research methods, merging the given SAGE methods vocabulary with
    our manually curated vocabulary, could have resulted in methods that
    would have been both granular and statistical while still being
    relevant to the publications. Introducing a blacklist just as we did
    for research field identification, could also have been another
    workaround.

2.  For both fields and methods identification, we could have also tried
    pre-trained embeddings from glove[^11] and fastText[^12].

3.  As our entity-extraction approach for Dataset Detection suffered
    from a limitation of inconsistent labels (i.e. datasets mentioned in
    the form of abbreviation, full-name, collection procedure, and
    keywords) in training data, we could have extended the Simple
    Dataset Mention Search to a pattern-oriented search based on
    handcrafted rules derived from sentence structure and other
    heuristics.

Future Agenda
=============

The data provided to us in the competition displayed a cornucopia of
inconsistencies even after human processing. We hence propose that
machine-aided methods for computing correct and complete structured
representation of publications are of central importance for scientific
research such as an Open Research Knowledge
Graph [@DBLP:journals/corr/abs-1901-10816][@DBLP:conf/esws/BuscaldiDMOR19].
Previous works on never-ending learning have shown how humans and
extraction algorithms can work together to achieve high-precision and
high-recall knowledge extraction from unstructured sources. In our
future work, we hence aim to populate a **scientific knowledge graphs**
based on never-ending learning. The methodology we plan to develop will
be domain-independent and rely on active learning to classify, extract,
link and publish scientific research artifacts extracted from
open-access papers. Inconsistency will be remedied by ontology-based
checks learned from other publications such as SHACL constraints which
can be manually or automatically added.[^13] The resulting graphs will

-   rely on advanced distributed storage for RDF to scale to the large
    number of publications available;

-   be self-feeding, i.e., crawl the web for potentially relevant
    content and make this content available for processing;

-   be self-repairing, i.e., be able to update previous extraction
    results based on insights gathered from new content;

-   be weakly supervised by humans, who would assist in correcting wrong
    hypotheses;

-   provide standardized access via W3C Standards such as SPARQL.

Having such knowledge graphs would make it easier for the researchers
(both young and veteran) to easily follow along with their domain of
fast-paced research and eliminate the need to manually update the
domain-specific ontologies for fields, methods and other metadata as new
research innovations come up.

Appendix
========

The code and documentation for all our submissions can be found here:
<https://github.com/dice-group/rich-context-competition>.

[^1]: <https://www.nlm.nih.gov/bsd/medline.html>

[^2]: <https://www.ncbi.nlm.nih.gov/pmc/>

[^3]: <https://www.aclweb.org/anthology/>

[^4]: <https://github.com/allenai/science-parse>

[^5]: \[poppler\]<https://manpages.debian.org/testing/poppler-utils>

[^6]: <https://github.com/explosion/spaCy>

[^7]: <https://wiki.dbpedia.org/services-resources/ontology>

[^8]: <https://en.wikipedia.org/wiki/Category:Statistical_methods>

[^9]: https://spacy.io/api/tokenizer

[^10]: <https://rasa.com/docs/nlu>

[^11]: <https://nlp.stanford.edu/projects/glove>

[^12]: <https://fasttext.cc/docs/en/crawl-vectors.html>

[^13]: <https://www.w3.org/TR/shacl/>

---

# Chapter 10 - Finding datasets in publications: The Singapore Management University approach

<!--
---
author:
- |
    Philips Kokoh Prasetyo, Amila Silva, Ee-Peng Lim, Palakorn Achananuparp  
    Living Analytics Research Centre  
    Singapore Management University  
    [{pprasetyo,amilasilva,eplim,palakorna}@smu.edu.sg]{}
bibliography:
- 'rcc-02.bib'
title: Simple Extraction for Social Science Publications
---
-->

## Chapter: Simple Extraction for Social Science Publications

Philips Kokoh Prasetyo, Amila Silva, Ee-Peng Lim, Palakorn Achananuparp  
Living Analytics Research Centre, Singapore Management University  
{pprasetyo,amilasilva,eplim,palakorna}@smu.edu.sg

First draft: 11 February 2019; Second draft: 12 June 2019


### Abstract

With the vast number of datasets and literature collections available for research today, it is very difficult to keep track on the use of datasets and literature articles for scientific research and discovery. Many datasets and research work using them are left undiscovered and under-utilized due to the lack of available search tools to automatically find out who worked with the data, on what research topics, using what research methods and generating what results. The Coleridge Rich Context Competition (RCC) therefore aims to build automated dataset discovery tools for analyzing and searching social science research publications. In this chapter, we describe our approach to solving the first phase of Coleridge Rich Context Competition.

### Table of contents

1. [Introduction](#1-introduction)
2. [Related Work](#2-related-work)
3. [Data Analysis](#3-data-analysis)
4. [Methods](#4-methods)
5. [Experiment Results](#5-experiment-results)
6. [Lesson Learned](#6-conclusion)
7. [Acknowledgement](#7-acknowledgements)
8. [Appendix: Technical Documentation](#appendix-technical-documentation)


### 1. Introduction


Automated discovery from scientific research publications is an important task for analysts, researchers, and learners as they develop the scientific knowledge and use them to gain new insights. More specifically, on the tasks of discovering datasets and methods mentioned in a research publication, we have seen a lack of available tools to easily find who else worked on a particular dataset, what research methods people apply on the dataset, and what results they have found using the dataset. Furthermore, new datasets are not easy to discover, and as a result, good datasets and methods are often neglected.

The Coleridge Rich Context Competition (RCC) aims to build automated datasets discovery from social science research publications, filling the gap of this problem. In this competition, given a corpus of social science research publications, we have to automatically identify datasets used, and then infer the research methods and research fields in the publications. Note that no labeled data are given for research methods and fields identification.

We describes our submission to the first phase of RCC. We perform dataset detection followed by implicit entity linking approach to tackle dataset extraction task. We adopt weakly supervised classification for research methods and fields identification tasks utilizing external resource SAGE Knowledge as proxy for weak labels.

<!-- This manuscript describes summary of our submission for the first phase
of RCC. We begin with related work in section \[sec:relatedwork\]. We
present our analysis on RCC dataset in section \[sec:data\], describe
our approach in section \[sec:methods\], and discuss our experiment
results in section \[sec:experiments\]. Finally, we wrap up with
conclusion and future work in section \[sec:conclusion\].
 -->

### 2. Related Work

Extracting information from scientific text has been explored in the past [[PM04](#PM04); [NCKL15](#NCKL15); [SBP<sup>+</sup>16](#SBP+16)]. One type of information extraction from scientific articles is extracting keyphrases and relation between them [[ADR<sup>+</sup>17](#ADR+17)]. Luan et al. (2017) propose semi-supervised sequence tagging approach to extract keyphrases [[LOH17](#LOH17)]. Augenstein and Søgaard (2017) explore multi-task deep recurrent neural network approach with several auxiliary tasks to extract keyphrases [[AS17](#AS17)].

Another type of extraction is citation extraction. Two citation extraction settings have been explored before: reference mining inside the full text [[ACK18](#ACK18)], and citation metadata extraction [[Het08](#Het08); [APBM14](#APBM14); [AGJ<sup>+</sup>17](#AGJ+17)]. Nasar er al. (2018) write a survey on information extraction from scientific articles [[NJM18](#NJM18)].

Recently, there are some work to explore dataset extraction from
scientific text [[BREM12](#BREM12); [GML<sup>+</sup>16](#GML+16); [GMVL16](#GMVL16)]. Boland et al. (2012) propose weakly supervised pattern induction to identify references in social science publications [[BREM12](#BREM12)]. Ghavimi et al. (2016) propose a semi automatic approach for detecting dataset references for social science texts [[GML<sup>+</sup>16](#GML+16); [GMVL16](#GMVL16)]. Dataset extraction is a challenging task because of the inconsistency and wide range of dataset mention styles in research publications [[GMVL16](#GMVL16)].

### 3. Data Analysis

The first phase of RCC dataset consists of a labeled corpus of 5,000 publications for training set, and additional 100 publications for development set. The RCC organizer keeps a separate corpus of 5,000 publications for evaluation. Each article in the dataset contains full text article and dataset citation labels. The metadata of cited datasets in the corpus are also provided. For research methods and fields, no label information is provided, only SAGE social science research method graph and research fields vocabulary are provided.

**Preprocessing.** In order to reliably access important structures of paper publications, we parse all papers using AllenAI Science Parse[<sup>1</sup>](https://github.com/allenai/science-parse) [[AGB<sup>+</sup>18](#AGB+18)]. AllenAI Science Parse reads PDF file, and returns title, authors, abstract, sections, and bibliography (references). Since this parser utilizes machine learning models to parse PDF file, the parsing results may not be 100% accurate. Furthermore, this parser is unable to parse scan copy of old publication. In the situation where we are unable to access parsed fields, we fall back to the given text files.

**Mention Analysis.** There are 5,499 and 123 dataset citations in training and development set respectively. Among these citations, 320 citations in training set and 6 citations in development set do not have mentions information. We analyze the paper sections where the dataset mentions commonly occur. Table [1](#user-content-tab_train_top_sections) and [2](#user-content-tab_dev_top_sections) show top 12 most common sections mentioning dataset in training and development set. The tables suggest that abstract, reference titles, discussion, results, and methods are the most common sections where the dataset mentions occur. We exploit reference titles for dataset extraction.

<a name="tab_train_top_sections">Table 1</a>: Top 12 Sections Mentioning Datasets in Training Set

Section Header | Mention Frequency
-------------- | -----------------:
Abstract | 2,548
Reference Titles | 1,997
Discussion | 1,390
Results | 836
Methods | 804
Introduction | 530
Statistical Analysis | 285
Comment | 279
Acknowledgements | 261
Materials and Methods | 254
Study Population | 227
Data | 214


<a name="tab_dev_top_sections">Table 2</a>: Top 12 Sections Mentioning Datasets in Development Set

Section Header | Mention Frequency
-------------- | -----------------:
Abstract | 78
Reference Titles | 37
Discussion | 19
Introduction | 14
Results | 12
Statistical Analyses | 9
Methods | 8
Ethics | 7
Population | 7
Population Impact | 7
Price | 7
2.1 Data | 5


**Citation Analysis.** We build citation network from training set. Each node in the network is a paper publication, and an edge between two node <img src="https://latex.codecogs.com/svg.latex?A" title="A" /> and <img src="https://latex.codecogs.com/svg.latex?B" title="B" /> is generated if a paper <img src="https://latex.codecogs.com/svg.latex?A" title="A" /> cites paper <img src="https://latex.codecogs.com/svg.latex?B" title="B" />. Table [3](#user-content-tab_network_stats) shows the statistics of the citation network.


<a name="tab_network_stats">Table 3</a>: Statistics of Citation Network

| | |
--------------- | -------:
Number of nodes | 5,000
Number of edges | 998
Network density | 0.008%


Initially, we propose an approach utilizing citation network based on an intuition that datasets, research methods, and research fields are shared by: 1) same or similar issues, 2) same or similar context, 3) same or similar authors and communities, 4) same or similar metrics used in the publication. However, based on table [3](#user-content-tab_network_stats), we learn that exploring rich context using paper-paper citation network is not viable at this stage because most papers listed in publications’ bibliography are not available in the training set, and therefore, paper-paper citation network becomes very sparse with many unknown information. Due to this reason, we drop our idea on utilizing paper-paper citation graph at this stage. Nevertheless, we believe that bibliography contains important signals and information about datasets, and research fields.


### 4. Methods

In this section, we describe our approach for RCC tasks: dataset extraction, research methods identification, and research fields identification.

#### Dataset Extraction

We employ a pipeline of two subtasks for dataset extraction: dataset detection, followed by dataset recognition. The goal of dataset detection is to detect whether a publication cites a dataset or not. This first subtask helps us to quickly filter out non-dataset publications. After the first subtask, we mine dataset mentions for the remaining publications in dataset recognition subtask.

For dataset detection, we utilize paper title in bibliography (reference list) combined with explicit research methods mentions to detect whether a publication citing a dataset or not. Explicit research methods mentions are determined based on exact match between paper title and SAGE research methods vocabulary. We train an SVM classifier using explicit research method mentions and n-gram features from paper titles in bibliography. We use the SVM classifier to classify each publication, if the classifier gives positive label, then we proceed to dataset recognition subtask, otherwise we ignore the publication.

For dataset recognition, we use an implicit entity linking approach. We start with the Naive Bayes model, which can be regarded as a standard information retrieval baseline, and entity indicative weighting strategy is used to improve the model. In order to calculate the word distribution of each dataset, we represent each dataset using its title, dataset mentions (provided in the training set), and dataset relevant sentences, filtered from the relevant publications using the rule based approach proposed in [[GMVL16](#GMVL16)]. All these text sections related to a particular dataset are considered as a single text chunk, and we calculate the word distribution as follows. Let <img src="https://latex.codecogs.com/svg.latex?$\textbf{w}$" title="$\textbf{w}$" /> be the set of words in a dataset. In our problem setting, we assume the dataset prior probability <img src="https://latex.codecogs.com/svg.latex?p(d)" title="p(d)" /> to be uniform. The probability of dataset <img src="https://latex.codecogs.com/svg.latex?d" title="d" /> given <img src="https://latex.codecogs.com/svg.latex?$$w$&space;\in&space;\textbf{w}$" title="$$w$ \in \textbf{w}$" /> is:

<!-- $$\begin{split}
    p(d|\textbf{w}) & \propto \prod _{w \in \textbf{w}} p(w|d) \\
    & = \prod _{w \in \textbf{w}} \frac{f(d,w) + \gamma }{ \sum_{w'} f(d,w') + |W| \gamma}
\end{split}$$ -->
<a href="https://www.codecogs.com/eqnedit.php?latex=\begin{align*}&space;p(d|\textbf{w})&space;&&space;\propto&space;\prod&space;_{w&space;\in&space;\textbf{w}}&space;p(w|d)&space;\\&space;&&space;=&space;\prod&space;_{w&space;\in&space;\textbf{w}}&space;\frac{f(d,w)&space;&plus;&space;\gamma&space;}{&space;\sum_{w'}&space;f(d,w')&space;&plus;&space;|W|&space;\gamma}&space;\end{align*}" target="_blank"><img src="https://latex.codecogs.com/svg.latex?\begin{align*}&space;p(d|\textbf{w})&space;&&space;\propto&space;\prod&space;_{w&space;\in&space;\textbf{w}}&space;p(w|d)&space;\\&space;&&space;=&space;\prod&space;_{w&space;\in&space;\textbf{w}}&space;\frac{f(d,w)&space;&plus;&space;\gamma&space;}{&space;\sum_{w'}&space;f(d,w')&space;&plus;&space;|W|&space;\gamma}&space;\end{align*}" title="\begin{align*} p(d|\textbf{w}) & \propto \prod _{w \in \textbf{w}} p(w|d) \\ & = \prod _{w \in \textbf{w}} \frac{f(d,w) + \gamma }{ \sum_{w'} f(d,w') + |W| \gamma} \end{align*}" /></a>

where <img src="https://latex.codecogs.com/svg.latex?f(d,&space;w)" title="f(d, w)" /> is the number of co-occurrences of word <img src="https://latex.codecogs.com/svg.latex?w" title="w" /> with entity <img src="https://latex.codecogs.com/svg.latex?d" title="d" />, <img src="https://latex.codecogs.com/svg.latex?\gamma" title="\gamma" /> is the smoothing parameter, and <img src="https://latex.codecogs.com/svg.latex?|W|" title="|W|" /> is the vocabulary size. For each dataset <img src="https://latex.codecogs.com/svg.latex?d" title="d" />, we derive <img src="https://latex.codecogs.com/svg.latex?f(d,&space;w)" title="f(d, w)" /> by the count of <img src="https://latex.codecogs.com/svg.latex?w" title="w" /> occurrences in the text extracted for each dataset. In order to stress more priority for dataset indicative words, we improved the final objective function of our model as follows:

<!-- $$ln(p(d|\textbf{w})) \propto \sum _{w \in \textbf{w}} \beta(w) * ln(p(w|d))$$ -->
<a href="https://www.codecogs.com/eqnedit.php?latex=$$ln(p(d|\textbf{w}))&space;\propto&space;\sum&space;_{w&space;\in&space;\textbf{w}}&space;\beta(w)&space;*&space;ln(p(w|d))$$" target="_blank"><img src="https://latex.codecogs.com/svg.latex?$$ln(p(d|\textbf{w}))&space;\propto&space;\sum&space;_{w&space;\in&space;\textbf{w}}&space;\beta(w)&space;*&space;ln(p(w|d))$$" title="$$ln(p(d|\textbf{w})) \propto \sum _{w \in \textbf{w}} \beta(w) * ln(p(w|d))$$" /></a>

where <img src="https://latex.codecogs.com/svg.latex?\beta(w)" title="\beta(w)" /> is the entity-indicative weight for word <img src="https://latex.codecogs.com/svg.latex?w" title="w" />. This weight <img src="https://latex.codecogs.com/svg.latex?\beta(w)" title="\beta(w)" /> is added as an exponent to the term <img src="https://latex.codecogs.com/svg.latex?p(w|d)" title="p(w|d)" />. <img src="https://latex.codecogs.com/svg.latex?\beta(w)" title="\beta(w)" /> is calculated as:

<!-- $$\beta(w) = log(1 + E / df(w))$$ -->
<a href="https://www.codecogs.com/eqnedit.php?latex=$$\beta(w)&space;=&space;log(1&space;&plus;&space;E&space;/&space;df(w))$$" target="_blank"><img src="https://latex.codecogs.com/svg.latex?$$\beta(w)&space;=&space;log(1&space;&plus;&space;E&space;/&space;df(w))$$" title="$$\beta(w) = log(1 + E / df(w))$$" /></a>

where <img src="https://latex.codecogs.com/svg.latex?E" title="E" /> is the number of distinct datasets considered and <img src="https://latex.codecogs.com/svg.latex?df(w)" title="df(w)" /> counts the number of datasets with at least one occurrence of <img src="https://latex.codecogs.com/svg.latex?w" title="w" />.

Then for a given unseen publication, we use same rule based approach [[GMVL16](#GMVL16)] to filter a few relevant sentences, and datasets are ranked by <img src="https://latex.codecogs.com/svg.latex?ln(p(d|w))" title="ln(p(d|w))" /> to select the most suitable datasets. In order to select exact datasets related to particular publication, we select top 10 datasets ranked using above approach. And then the confidence probability related to the top 10 datasets are normalized and select the datasets with the normalized probability higher than a predefined threshold value. We return the entity indicative words as relevant dataset mentions.

#### Research Methods Identification

Since we do not have labeled training data for this task, we use explicit research method mentions (based on exact match with SAGE research methods vocabulary) in a publication as weak signals on research methods used in the publication. When these mentions frequently appear in a publication, there is a high chance that this publication is using these particular research methods.

Based on this intuition, we generate training set for research method classification utilizing sentences that explicitly mention research method in a publication. Publication title and the sentences mentioning research method serve as context information of a specific research method. In order to reduce noisy weak signals, we apply minimum support of three sentences in a publication. We exclude research methods which only being mentioned one or two times in a publication. We also exclude research methods that only being mentioned in less than 10 different publications from the training set. Finally, we have 133 research methods having sufficient context information for training data. This number is 20.18% of 659 research methods in SAGE research method graph.

We use the training data to train logistic regression classifier to classify research methods from publication title and sentences. We utilize n-gram features from publication title and sentences for the classifier. We apply the logistic regression classifier to recommend top 3 research methods based on logistic regression probability score.

This approach can be extended by utilizing research method graph to expand the context. Context information does not only comes from sentences in publication, but also comes from related research methods as well as broader concept information. By using this information, we can potentially expand to more than 133 research methods and perform more accurate prediction.

#### Research Fields Identification

Similar to research methods identification, this task does not have labeled training data. We only have access to list of SAGE research fields. SAGE research fields are organized hierarchically into three levels, namely L1, L2, and L3, for example: Soc-2-4 (*kinship*) is under Soc (*sociology*) in L1, and under Soc-2 (*anthropology*) in L2.

To gain more understanding about the characteristic of each field, we crawl top search results from SAGE Knowledge[<sup>2</sup>](http://sk.sagepub.com/browse/). From the search result snippets, we collect information such as title and abstract on various publications including case, major work, books, handbooks, and dictionary. We exclude video and encyclopedia. Due to sparseness of the SAGE Knowledge, we exclude all research fields with less than 10 search results. In the end, we have samples of 414 L3 research fields under 101 L2 research fields and 10 L1 research fields. This numbers cover 20.87% of 1,984 L3 research fields, and 67.79% of 149 L2 research fields in the list of SAGE research fields. We use this data to train research fields classifiers.

We build three SVM classifiers for L1, L2, and L3 to classify a publication using paper title and abstract. Instead of taking the highest score, we take top-k research fields and perform re-ranking considering agreement among L1, L2, L3. We return a research field if its upper level are also in top ranks. Since level L1 is too general, we only output research fields from L2, and L3. We outline our heuristic to reorder the ranking below:

1.  Get top-5 L3 research fields, top-4 L2 research fields, and top-3 L1 research fields.

2.  Assign initial score <img src="https://latex.codecogs.com/svg.latex?v" title="v" /> for each research field based on its
    ranking.

    <a href="https://www.codecogs.com/eqnedit.php?latex=v(f_i)&space;=&space;(K&space;-&space;i)&space;/&space;K" target="_blank"><img src="https://latex.codecogs.com/svg.latex?v(f_i)&space;=&space;(K&space;-&space;i)&space;/&space;K" title="v(f_i) = (K - i) / K" /></a>

    where <img src="https://latex.codecogs.com/svg.latex?K" title="K" /> is the length of top-k, and <img src="https://latex.codecogs.com/svg.latex?i" title="i" /> is the ranking of a research field <img src="https://latex.codecogs.com/svg.latex?f" title="f" />. For example, research fields in top-5 L3 have initial score of `[1, 0.8, 0.6, 0.4, 0.2]`, top-4 L2 have initial score of `[1, 0.75, 0.5, 0.25]`, and top-3 L1 have `[1, 0.666, 0.333]`

3.  Update the score by multiplying each score with the score of
    matching research fields at upper level, and <img src="https://latex.codecogs.com/svg.latex?0" title="0" /> otherwise.

    <!-- $$score(f_i^l) =
            \begin{cases}
            \prod _{l \in L} v(f^l) & \text{if field matched} \\
            0 & \text{otherwise}
            \end{cases}$$  -->
    <a href="https://www.codecogs.com/eqnedit.php?latex=score(f_i^l)&space;=&space;\begin{cases}&space;\prod&space;_{l&space;\in&space;L}&space;v(f^l)&space;&&space;\text{if&space;field&space;matched}&space;\\&space;0&space;&&space;\text{otherwise}&space;\end{cases}" target="_blank"><img src="https://latex.codecogs.com/svg.latex?score(f_i^l)&space;=&space;\begin{cases}&space;\prod&space;_{l&space;\in&space;L}&space;v(f^l)&space;&&space;\text{if&space;field&space;matched}&space;\\&space;0&space;&&space;\text{otherwise}&space;\end{cases}" title="score(f_i^l) = \begin{cases} \prod _{l \in L} v(f^l) & \text{if field matched} \\ 0 & \text{otherwise} \end{cases}" /></a>

    where <img src="https://latex.codecogs.com/svg.latex?L" title="L" /> is the level of research field <img src="https://latex.codecogs.com/svg.latex?f" title="f" /> and
    its upper levels. Here are examples of score update:
    -   Soc-2-4 at rank-2 in L3, Soc-2 at rank-3 in L2, and Soc at
        rank-1 in L1. In this case, the score of Soc-2-4 is
        `0.8 * 0.5 * 1 = 0.4`.
    -   Soc-2-4 at rank-1 in L3, Soc-2 at rank-2 in L2, but Soc is not found in top rank in L1. In this case, the score of Soc-2-4 is `0`.
4.  Collect score from L2 and L3, and exclude L2 if we see more specific of L2 in top-5 L3.

5.  Re-rank L2 and L3 research fields based on the score.

6.  Return research fields having score <img src="https://latex.codecogs.com/svg.latex?>=&space;0.4" title=">= 0.4" />.

To expand to more context from paper list in bibliography section, we also build other three Naive Bayes classifiers for L1, L2, and L3 using paper title feature only. We believe that a publication from a certain field also cites other publications from same or similar fields. For each publication in the bibliography, we apply the same procedure as mentioned above, then we average the score to get top research fields from bibliography. Finally, we combine top research fields from paper titles and abstract with results from bibliography.


### 5. Experiment Results


We discuss our experiment results for each task in this section. We use standard precision, recall, and F1 as evaluation metrics.

**Dataset Extraction.** First, we analyze our experiment for dataset detection subtask comparing Naive Bayes and SVM classifier. Using only paper titles in bibliography and explicit research method mentions, Naive Bayes and SVM classifiers are able to reach 0.88 & 0.92 F1 score respectively. Since SVM outperforms Naive Bayes, we use SVM for our dataset detection module. Table [4](#user-content-tab_dd_dev_result) shows detail dataset detection results on development set.

<a name="tab_dd_dev_result">Table 4</a>: Dataset Detection Results on Development Set

Classifier | Prec. | Rec. | F1
---------- | ----: | ---: | ---:
Naive Bayes | 0.85 | 0.92 | 0.88
SVM | 0.96 | 0.88 | 0.92

To see the impact of performing dataset detection, we test the performance of dataset extraction with and without dataset detection on development set. Table [5](#user-content-tab_de_dev_result) summarizes the results. As shown in the table, performing dataset detection before extraction significantly improves the dataset extraction on development set.

<a name="tab_de_dev_result">Table 5</a>: Dataset Extraction Results on Development Set

Method | Prec. | Rec. | F1
------ | ----: | ---: | ---:
No Dataset Detection | 0.18 | 0.33 | 0.24
With Dataset Detection | 0.34 | 0.30 | 0.32

<a name="tab_de_test_result">Table 6</a>: Dataset Extraction Result on Test Set

Dataset | Prec. | Rec. | F1
------- | ----: | ---: | ---:
Test Set (phase1) | 0.17 | 0.10 | 0.13

Table [6](#user-content-tab_de_test_result) shows dataset extraction performance on test set (phase 1). The significant drop from development set result suggests that the test set might have different distribution compare to the training and development set. It might also contain dataset citations that are never been seen in training set.

**Research Methods Identification.** We only consider Naive Bayes and Logistic Regression classifiers for research method identification because they naturally outputs probability score. We perform 5-fold cross validation to evaluate classification performance, and the result can be seen in table [7](#user-content-tab_rmethods_5cv). Logistic regression classifier outperforms Naive Bayes with 0.86 F1 score in classifying 133 research methods.

<a name="tab_rmethods_5cv">Table 7</a>: F1 Score for Research Method Classification

Classifier | F1
---------- | ---:
Naive Bayes | 0.55
Logistic Regression | 0.86

**Research Fields Identification.** We perform 5-fold cross validation to evaluate our classifiers to classify L1, L2, and L3 research fields. Table [8](#user-content-tab_rfields_pub_5cv) shows the results using n-gram features from paper title and abstract, whereas table [9](#user-content-tab_rfields_rt_5cv) shows the results using n-gram features from title only. Naive Bayes tends to perform slightly better on L3 research fields where we have large number of research field labels. We decide to use SVM for research field identification on publication level because SVM is generally better than Naive Bayes. On the other hand, we decide to use Naive Bayes for research field identification on bibliography level because Naive Bayes prefer to have more accurate L2 and L3 research fields.

<a name="tab_rfields_pub_5cv">Table 8</a>: F1 Score for Research Field Classification on Publication Level using Paper Title and Abstract

Classifier | L1 | L2 | L3
---------- | ----: | ---: | ---:
Naive Bayes | 0.78 | 0.37 | 0.13
SVM | 0.82 | 0.38 | 0.12

<a name="tab_rfields_rt_5cv">Table 9</a>: F1 Score for Research Field Classification on Bibliography Level using Paper Title Only

Classifier | L1 | L2 | L3
---------- | ----: | ---: | ---:
Naive Bayes | 0.80 | 0.35 | 0.12
SVM | 0.81 | 0.35 | 0.11


### 6. Lesson Learned

Extraction of research datasets, associated research methods and fields from social science publication is challenging, yet an important problem to organize social science publications. We have described our approach for the RCC challenge, and table [10](#user-content-tab_summary) summarizes our approach. Beside publication content such as paper titles, abstract, full text, our approach also leverages on the information from bibliography. Furthermore, we also collect external information from SAGE Knowledge to get more information about research fields.

<a name="tab_summary">Table 10</a>: Summary of Our Approach

Method | Features (n-gram)
------ | -----------------
**Dataset extraction** ||
SVM for dataset detection | paper titles in bibliography and explicit research method mentions
Implicit entity linking | paper title and full text
**Research method identification** ||
Logistic regression | paper title, abstract, and full text
**Research field identification** ||
SVM (on paper) | paper title and abstract
Naive Bayes (on bibliography) | paper titles in bibliography

Apart from F1 score on 5-fold cross validation, we have no good way to evaluate research method and research field identification without ground truth label. Our methods are unable to automatically extract and recognize new datasets, research methods, and fields. An extension to automatically handle such cases using advance Natural Language Processing (NLP) approach is a promising direction.

Our model did not perform well in test set, and unable to advance to the second phase. From this competition, we have learned that lacks of labelled training data is a huge challenge, and it directs us to other external resources (i.e., SAGE Knowledge) as proxy for our label. We are also interested in exploring more advanced information extraction approaches on the RCC datasets. Another challenge is data sparsity. Although we see many paper listed in bibliography, lacks of access to these publication make us difficult to exploit citation network.

### 7. Acknowledgments

We thank the RCC organizers for organizing a competition and workshop on this important, interesting, and challenging problem.


### References

- [<a name="PM04">PM04</a>] Fuchun Peng and Andrew McCallum (2004): Accurate information extraction from research papers using conditional random fields. In HLT-NAACL.
- [<a name="Het08">Het08</a>] Erik Hetzner (2008): A simple method for citation metadata extraction using hidden markov models. In JCDL.
- [<a name="BREM12">BREM12</a>] Katarina Boland, Dominique Ritze, Kai Eckert, and Brigitte Mathiak (2012): Identifying references to datasets in publications. In TPDL.
- [<a name="APBM14">APBM14</a>] Sam Anzaroot, Alexandre Passos, David Belanger, and Andrew McCallum (2014): Learning soft linear constraints with application to citation field extraction. In ACL.
- [<a name="NCKL15">NCKL15</a>] Viet Cuong Nguyen, Muthu Kumar Chandrasekaran, Min-Yen Kan, and Wee Sun Lee (2015): Scholarly document information extraction using extensible features for efficient higher order semi-crfs. In JCDL.
- [<a name="GML+16">GML<sup>+</sup>16</a>] Behnam Ghavimi, Philipp Mayr, Christoph Lange, Sahar Vahdati, and Sören Auer (2016a): A semi-automatic approach for detecting dataset references in social science texts. Inf. Services and Use, 36:171–187.
- [<a name="GMVL16">GMVL16</a>] Behnam Ghavimi, Philipp Mayr, Sahar Vahdati, and Christoph Lange (2016b): Identifying and improving dataset references in social sciences full texts. In ELPUB.
- [<a name="SBP+16">SBP<sup>+</sup>16</a>] Mayank Singh, Barnopriyo Barua, Priyank Palod, Manvi Garg, Sidhartha Satapathy, Samuel Bushi, Kumar Ayush, Krishna Sai Rohith, Tulasi Gamidi, Pawan Goyal, and Animesh Mukherjee (2016): Ocr++: A robust framework for information extraction from scholarly articles. In COLING.
- [<a name="ADR+17">ADR<sup>+</sup>17</a>] Isabelle Augenstein, Mrinal Das, Sebastian Riedel, Lakshmi Vikraman, and Andrew McCallum (2017): Semeval 2017 task 10: Scienceie - extracting keyphrases and relations from scientific publications. In SemEval@ACL.
- [<a name="AGJ+17">AGJ<sup>+</sup>17</a>] Dong An, Liangcai Gao, Zhuoren Jiang, Runtao Liu, and Zhi Tang (2017): Citation metadata extraction via deep neural network-based segment sequence labeling. In CIKM.
- [<a name="AS17">AS17</a>] Isabelle Augenstein and Anders Søgaard (2017): Multi-task learning of keyphrase boundary classification. In ACL.
- [<a name="LOH17">LOH17</a>] Yi Luan, Mari Ostendorf, and Hannaneh Hajishirzi (2017): Scientific information extraction with semi-supervised neural tagging. In EMNLP.
- [<a name="ACK18">ACK18</a>] Danny Rodrigues Alves, Giovanni Colavizza, and Frédéric Kaplan (2018): Deep reference mining from scholarly literature in the arts and humanities. In Front. Res. Metr. Anal.
- [<a name="AGB+18">AGB<sup>+</sup>18</a>] Waleed Ammar, Dirk Groeneveld, Chandra Bhagavatula, Iz Beltagy, Miles Crawford, Doug Downey, Jason Dunkelberger, Ahmed Elgohary, Sergey Feldman, Vu Ha, Rodney Kinney, Sebastian Kohlmeier, Kyle Lo, Tyler Murray, Hsu-Han Ooi, Matthew E. Peters, Joanna Power, Sam Skjonsberg, Lucy Lu Wang, Chris Wilhelm, Zheng Yuan, Madeleine van Zuylen, and Oren Etzioni (2018): Construction of the literature graph in semantic scholar. In NAACL-HTL.
- [<a name="NJM18">NJM18</a>] Zara Nasar, S. W. Jaffry, and Muhammad Kamran Malik (2018): Information extraction from scientific articles: a survey. Scientometrics, 117:1931–1990.


### Appendix: Technical Documentation

Source codes to run and replicate our experiments are available at [https://github.com/LARC-CMU-SMU/coleridge-rich-context-larc](https://github.com/LARC-CMU-SMU/coleridge-rich-context-larc).

---

# Chapter 11 - Finding datasets in publications: The University of Syracuse approach

---
abstract: |
    Datasets are critical for scientific research, playing a role in
    replication, reproducibility, and efficiency. Researchers have recently
    shown that datasets are becoming more important for science to function
    properly, even serving as artifacts of study themselves. However, citing
    datasets is not a common or standard practice in spite of recent efforts
    by data repositories and funding agencies. This greatly affects our
    ability to track their usage and importance. A potential solution to
    this problem is to automatically extract dataset mentions from
    scientific articles. In this work, we propose to achieve such extraction
    by using a neural network based on a BiLSTM-CRF architecture. Our method
    achieves $F_{1}=0.885$ in social science articles released as part of
    the Rich Context Dataset. We discuss future improvements to the model
    and applications beyond social sciences.
author:
- 'Tong Zeng$^{1,2}$ and Daniel Acuna$^{1}$[^1]'
bibliography:
- 'rcc-06.bib'
title: |
    Dataset mention extraction in scientific articles using a BiLSTM-CRF
    model
---

Introduction
============

Science is fundamentally an incremental discipline that depends on
previous scientist’s work. Datasets form an integral part of this
process and therefore should be shared and cited as any other scientific
output. This ideal is far from reality: the credit that datasets
currently receive does not correspond to their actual usage. One of the
issues is that there is no standard for citing datasets, and even if
they are cited, they are not properly tracked by major scientific
indices. Interestingly, while datasets are still used and mentioned in
articles, we lack methods to extract such mentions and properly
reconstruct dataset citations. The Rich Context Competition challenge
aims at closing this gap by inviting scientists to produce automated
dataset mention and linkage detection algorithms. In this article, we
detail our proposal to solve the dataset mention step. Our approach
attempts to provide a first approximation to better give credit and keep
track of datasets and their usage.

The problem of dataset extraction has been explored before.
@ghavimiIdentifyingImprovingDataset2016 and
@ghavimiSemiautomaticApproachDetecting2017 use a relatively simple
tf-idf representation with cosine similarity for matching dataset
identification in social science articles. Their method consists of four
major steps: preparing a curated dictionary of typical mention phrases,
detecting dataset references, and ranking matching datasets based on
cosine similarity of tf-idf representations. This approach achieved a
relatively high performance, with $F_{1}=0.84$ for mention detection and
$F_{1}=0.83$, for matching. @singhalDataExtractMining2013 proposed a
method using normalized Google distance to screen whether a term is in a
dataset. However, this method relies on external services and is not
computational efficient. They achieve a good $F_{1}=0.85$ using Google
search and $F_{1}=0.75$ using Bing. A somewhat similar project was
proposed by @luDatasetSearchEngine2012. They built a dataset search
engine by solving the two challenges: identification of the dataset and
association to a URL. They build a dataset of 1000 documents with their
URLs, containing 8922 words or abbreviations representing datasets. They
also build a web-based interface. This shows the importance of dataset
mention extraction and how several groups have tried to tackle the
problem.

In this article, we describe a method for extracting dataset mentions
based on a deep recurrent neural network. In particular, we used a
Bidirectional Long short-term Memory (BiLSTM) sequence to sequence model
paired with a Conditional Random Field (CRF) inference mechanism. We
tested our model on a novel dataset produced for the Rich Context
Competition challenge. We achieve a relatively good performance of
$F_{1}=0.885$. We discuss the limitations of our model.

The dataset
===========

The Rich Context Dataset challenge was proposed by the New York
University’s Coleridge Initiative [@richtextcompetition]. The challenge
comprised several phases, and participants moved through the phases
depending on their performance. We only analyze data of the first phase.
This phase contained a list of datasets and a labeled corpus of around
5K publications. Each publication was labeled indicating whether a
dataset was mentioned within it and which part of the text mentioned it.
The challenge used the accuracy for measuring the performance of the
competitors and also the quality of the code, documentation, and
efficiency.

We adopt the CoNLL 2003 format [@tjong2003introduction] to annotate
whether a token is a part of dataset mention. Concretely, B-DS denotes a
token that is the first token of a dataset mention, I-DS denotes a token
that is inside of dataset mention, and O denotes a token that is not a
part of dataset mention. We then put each token and its corresponding
labels in one line and use a empty line as a separator between
sentences. Sentences were randomly split by 70%, 15%, 15% for training
set, validation set and testing set, respectively.

The Proposed Method
===================

Overall view of the architecture
--------------------------------

In this section, we propose a model for detecting mentions based on a
BiLSTM-CRF architecture. At a high level, the model uses a
sequence-to-sequence recurrent neural network that produces the
probability of whether a token belongs to a dataset mention. The CRF
layer takes those probabilities and estimates the most likely sequence
based on constrains between label transitions (e.g.,
mention–to–no-mention–to-mention has low probability). While this is a
standard architecture for modeling sequence labeling, the application to
our particular dataset and problem is new.

We now describe in more detail the choices of word representation,
hyper-parameters, and training parameters. A schematic view of the model
is in Fig \[fig:NetworkArchitecture\] and the components are as follows:

1.  Character embedding layer: treat a token as a sequence of characters
    and encode the characters by using a bidirectional LSTM to get a
    vector representation.

2.  Word embedding layer: mapping each token into fixed sized vector
    representation by using a pre-trained word vector.

3.  One BiLSTM layer: make use of Bidirectional LSTM network to capture
    the high level representation of the whole token sequence input.

4.  Dense layer: project the output of the previous layer to a low
    dimensional vector representation of the the distribution of labels.

5.  CRF layer: find the most likely sequence of labels.

![\[fig:NetworkArchitecture\]Network Architecture of BiLSTM-CRF
network](combined_images/bilistm_crf_network_structure_pic){width="80.00000%"}

Character Embedding
-------------------

Similar to the bag of words assumption, we can consider a token is
composed by a bag of characters. In this layer, we convert each token to
a sequence of characters, then feed the sequence into a bidirectional
LSTM network to get a fixed length representation of the token. After
learning the bidirectional LSTM network, we can solve the
out-of-vocabulary problem for pre-trained word embeddings.

Word Embedding
--------------

The embedding is the first layer of our network and it is responsible
for mapping the word from string into vectors of numbers as the input
for other layers on top. For a given sentence $S$, we first convert it
into a sequence consisting of $n$ tokens,
$S=\{c_{1},c_{2},\cdots,c_{n},\}$ . For each token $c_{i}$we lookup the
embedding vector $x_{i}$ from a word embedding matrix
$M^{tkn}\in\mathbb{R}^{d|V|}$, where the $d$ is the dimension of the
embedding vector and the $V$ is the Vocabulary of the tokens. In this
paper, the matrix $M^{tkn}$ is initialized by pre-trained GloVe vectors
[@pennington2014glove], but will be updated by learning from our corpus.

LSTM
----

Recurrent neural network (RNN) is a powerful tool to capture features
from sequential data, such as temporal series, and text. RNN could
capture long-distance dependency in theory but it suffers from the
gradient exploding/vanishing problems [@pascanu2013difficulty]. The Long
short-term memory (LSTM) architecture was proposed by
@hochreiter1997long and it is a variant of RNN which copes with the
gradient problem. LSTM introduces several gates to control the
proportion of information to forget from previous time steps and to pass
to the next time step. Formally, LSTM could be described by the
following equations:

$$i_{t}=\sigma(W_{i}x_{t}+W_{i}h_{t-1}+b_{i})$$

$$f_{t}=\sigma(W_{f}x_{t}+W_{f}h_{t-1}+b_{f})$$

$$g_{t}=tanh(W_{g}x_{t}+W_{g}h_{t-1}+b_{g})$$

$$o_{t}=\sigma(W_{o}x_{t}+W_{o}h_{t-1}+b_{o})$$

$$c_{t}=f_{t}\bigotimes c_{t-1}+i_{t}\bigotimes g_{t}$$

$$h_{t}=o_{t}\bigotimes tanh(c_{t})$$

where the $\sigma$ is the sigmoid function, $\bigotimes$ denotes the dot
product, $b$ is the bias, $W$ is the parameters, $x_{t}$ is the input at
time $t$, $c_{t}$ is the LSTM cell state at time $t$ and $h_{t}$ is
hidden state at time $t$. The $i_{t}$, $f_{t}$, $o_{t}$ and $g_{t}$ are
named as input, forget, output and cell gates respectively, they control
the information to keep in its state and pass to next step.

LSTM gets information from the previous steps, which is left context in
our task. However, it is important to consider the information in the
right context. A solution of this information need is bidirectional LSTM
[@graves2013speech]. The idea of Bi-LSTM is to use LSTM layers and feed
the forward and backward flows separately, and then concatenate the
hidden states of the two LSTM to modeling both the left and right
contexts

$$h_{t}=[\overrightarrow{h_{t}}\varoplus\overleftarrow{h_{t}}]$$

Finally, the outcomes of the states are taken by a Conditional Random
Field (CRF) layer that takes into account the transition nature of the
beginning, intermediate, and ends of mentions. For a reference of CRF,
refer to [@lafferty2001conditional]

Results
=======

In this work, we wanted to propose a model for the Rich Context
Competition challenge. We propose a relatively standard architecture
based on a BiLSTM-CRF recurrent neural network. We now describe the
results of this network on the dataset provided by the competition.

For all of our results, we use $F_{1}$ as the measure of choice. This
measure is the harmonic average of the precision and recall and it is
the standard measure used in sequence labeling tasks. This metric varies
from 0 to 1, and the unit is the highest possible value. Our method
achieved a relatively high $F_{1}$ of 0.885 for detecting mentions, in
line with previous studies.

   Models   GloVe size   Dropout rate   Precision   Recall    $F_{1}$
  -------- ------------ -------------- ----------- -------- -----------
     m1         50           0.0          0.884     0.873      0.878
     m2         50           0.5          0.877     0.888      0.882
     m3        100           0.0          0.882     0.871      0.876
     m4        100           0.5          0.885     0.885    **0.885**
     m5        200           0.0          0.882     0.884      0.883
     m6        200           0.5          0.885     0.880      0.882
     m7        300           0.0          0.868     0.886      0.877
     m8        300           0.5          0.876     0.878      0.877

  : \[tab:Performance-of-proposed\]Performance of proposed network

We train models using the training data, monitor the performance using
the validation data (we stop training if the performance doesn’t improve
for the last 10 epochs). We are using the Adam optimizer with learning
rate of 0.001 and batch size equal to 64. The hidden size of LSTM for
character and word embedding is 80 and 300, respectively. For the
regularization methods to avoid over-fitting, we use L2 regularization
with alpha set to 0.01, we also use dropout rate equal to 0.5. We
trained 8 models with a combination of different GloVe vector size (50,
100, 300 and 300) and dropout rate (0.0, 0.5). The performances are
reported on the test dataset in Table \[tab:Performance-of-proposed\].
The best model is trained by word vector size 100 and dropout rate 0.5
with $F_{1}$ score 0.885.

We also found some limitations to the dataset. Firstly, we found that
mentions are nested (e.g. HRS, RAND HRS, RAND HRS DATA are linked to the
same dataset). The second issue most of the mentions have ambiguous
relationships to datasets. In particular, only 17,267 (16.99%) mentions
are linked to one dataset, 15,292 (15.04%) mentions are listed to two
datasets, and 12,624 (12.42%) are linked to three datasets. If these
difficulties are not overcome, then the predictions from the linkage
process will be noisy and therefore impossible to tell apart.

Conclusion
==========

In this work, we report a high accuracy model for the problem of
detecting dataset mentions. Because our method is based on a standard
BiLSTM-CRF architecture, we expect that updating our model with recent
developments in neural networks would only benefit our results. We also
provide some evidence of how difficult we believe the linkage step of
the challenge could be if the dataset noise are not lowered.

One of the shortcomings of our approach is that the architecture is
lacking some modern features of RNN networks. In particular, recent work
has shown that attention mechanisms are important especially when the
task requires spatially distant information, such as this one. These
benefits could also translate to better linkage. We are exploring new
architectures using self-attention and multiple-head attention. We hope
to explore these approaches in the near future.

Our proposal, however, is surprisingly effective. Because we have barely
modified a general RNN architecture, we expect that our results will
generalize relatively well either to the second phase of the challenge
or even to other disciplines. We would emphasize, however, that the
quality of the dataset has a great deal of room for improvement. Given
how important this task is for the whole of science, we should try to
strive to improve the quality of these datasets so that techniques like
this one can be more broadly applied. The importance of dataset mention
and linkage therefore could be fully appreciated by the community.

Acknowledgements {#acknowledgements .unnumbered}
================

Tong Zeng was funded by the China Scholarship Council \#201706190067.
Daniel E. Acuna was funded by the National Science Foundation awards
\#1646763 and \#1800956.

[^1]: Corresponding author: deacuna@syr.edu

---

# Chapter 12 - Standard Test Corpora

Rich Context Book Chapter - Standardized Metadata, Full Text and
Training/Evaluation for Extraction Models

\

[**Standardized Metadata & Full Text \[Sebastian\]**]{.s1}

\

Key challenges when working on an NLP task like dataset mention
extraction that requires access to scholarly literature include the
proliferation of metadata sources and sourcing of full text content. For
example, each metadata source has their own approach for disambiguation
(e.g. recognizing that A. Smith and Anna Smith are the same author) or
de-duplication of content (clustering pre-prints and final versions into
a single record). As a result competition organizers and NLP researchers
currently use ad-hoc processes to identify metadata and full text
sources for their specific tasks which results in inconsistencies and a
lack of versioning of input data across competitions and projects.

\

One way these challenges can be addressed is by using a trustworthy
metadata source like [[Semantic Scholar’s open
corpus]{.s2}](http://api.semanticscholar.org/corpus/) developed by the
Allen Institute for Artificial Intelligence (AI2) or [[Microsoft’s
Academic
Graph]{.s2}](https://docs.microsoft.com/en-us/academic-services/graph/reference-data-schema)
that make it easy to access standardized metadata from an openly
accessible source. In addition, both Semantic Scholar and the Microsoft
Academic Graph provide topics associated with papers which makes it easy
to narrow down papers by domain. If full text is needed we recommend
tying the metadata to a source of open access full text content like
[[Unpaywall]{.s2}](https://unpaywall.org/data-format) to ensure that the
full text can be freely redistributed and leveraged for model
development.

\

To gather the data we recommend collecting a sufficiently large set of
full text papers (3,000-5,000 minimum) with their associated metadata
and providing participants with a standardized format of the full text.
More data might be required if data is split across many scientific
domains. For example for a task like dataset extraction, reference
formatting is often inconsistent across domains and dataset mentions can
potentially be found in different sections (e.g. background, methods,
discussion, conclusion or the reference list) throughout the text. Once
a decision has been made on the full text to include, the PDF content
can be easily converted into text in a standardized format using a PDF
to text parser like [[AI2’s
ScienceParse]{.s2}](https://github.com/allenai/spv2) (which handles key
tasks like metadata, section heading and references
extraction).

\

Once the metadata and full text dataset has been created it can be
easily versioned and used again in future competitions. For example, if
updated metadata is needed it’s easy to go back to the original metadata
source (for example by using Semantic Scholar’s
[[API]{.s2}](http://api.semanticscholar.org/)) to get the latest
metadata.

\

[**Annotation Protocols to Produce Training & Evaluation Data
\[Alex\]**]{.s1}

A common approach to machine learning known as **supervised learning**
uses labelled, or annotated, data to train a model what to look for. If
labelled data is not readily available, human annotators are frequently
used to label, or code, a corpus of representative document samples as
input into such a model. Different labelling tasks may require different
levels of subject domain knowledge or expertise. For example, coding a
document for different parts of speech (POS) will require a different
level of knowledge than coding a document for mentions of upregulation
of genes. The simpler the labelling task, the easier it will be for the
coders to complete the task, and the more likely the annotations will be
consistent across multiple coders.For
example, a task to identify a *mention of a dataset* in a document might
be far easier than the task of identifying only the*mentions of*
*datasets that were used in the analysis phase of
research*.

\

In order to scale the work of labelling, it is usually desirable to
distribute the work amongst many people. Generic crowdsourcing platforms
such as Amazon’s Mechanical Turk can be used in some labelling
exercises, as can more tailored services from companies such as TagWorks
and Figure-Eight. Whether the labelling is done by one person or
thousands, the consistency and quality of the annotations needs to be
considered. We would like to build up a sufficiently large collection of
these annotations and we want to ensure that they are of a high quality.
How much data needs to be annotated depends on the task, but in general,
the more labelled data that can be generated the more robust the model
will be.

\

As mentioned above, we recommend 3000-5000 papers, but this begs the
question of how diverse the subject domains are within this corpus.
If the papers are all within from the finance
sector, then a resulting model might do well in identifying datasets in
finance, but less well in the biomedical domain since the model was not
trained on biomedical papers. Conversely, if our 3000-5000 papers are
evenly distributed across all domains, our model might be more
generically applicable, but might do less well over all since it did not
contain enough individual domain-specific examples.  
\
As a result, we recommend labelling 3000-5000 papers within a domain,
but we plan to do so in a consistent manner across domains so that the
annotations can be aggregated together. In this manner, as papers in new
domains are annotated, our models can be re-trained to expand into new
domains. In order to achieve this, we intend to publish an open
annotation protocol and output format that can be used by the community
to create additional labelled datasets.



Another factor in deciding the quantity is the fact that the annotations
will be used for two discrete purposes. The first is to *train* a
machine learning model. This data will inform the model what dataset
mentions look like, from which it will extract a set of features that
the model will use and attempt to replicate. The second use of the
annotations is to *evaluate* the model.How
well a model performs against some content that it has never seen
before. In order to achieve this, labelled data are typically split
randomly into training and evaluation subsets.




One way to evaluate how well your model performs is to measure the
**recall** and **precision** of the model’s output, and in order to do
this we can compare the output to the labelled evaluation subset. In
other words, how well does our model perform against the human
annotations that it was not trained on and has never seen. Recall is the
percentage of right answers the model returned. For example, if the
evaluation dataset contained 1000 mentions of a dataset, and the trained
model returned 800 of them, then the recall value would be .80.
But what if the model returned everything as a
dataset, then it would get all 1000, plus a whole bunch of wrong
answers. Obviously, the precision of the model is important too.
Precision is the percentage of answers returned that were right. So,
continuing the example above, if the model returned 888 answers, and 800
of those were right, then the precision of the model would be \~.90.
But again, if the model returned only one right
answer and no wrong ones, the precision would be perfect. So, it is
important to measure both precision and recall.
In summary, the model in this example, got 80%
of the right answers, and 90% of the answers it returned were right. The
two measures of recall and precision can be combined into an F1 score of
  ~.847.  
\
If we then make modifications to our model, we can re-run it against the
evaluation dataset and see how our F1 score changes. If the score goes
up, then our new model performed better against this evaluation data. If
we want to compare several different models to see which one performed
best, we can calculate an F1 score for each of them. The one with the
highest F1 score has performed the best. Consequently, the quality of
the annotations are critical for two reasons: first, the accuracy of a
*model* will only be as good as the data upon which it was trained. And
secondly, the accuracy of the *evaluation* (in this case the F1 score)
can be affected by the quality of the data it is evaluated against.
 

\

\

---

# Chapter 13 - The future of context

# The Future of AI in Rich Context

**Paco Nathan**

The setting for Rich Context originated in needs to analyze confidential micro-data for [evidence-based policymaking](https://en.wikipedia.org/wiki/Foundations_for_Evidence-Based_Policymaking_Act).
The nature of that work involves collaboration using [_linked data_](http://linkeddata.org/), with strict requirements for data privacy and security, plus provisions for data stewardship and dataset curation.
Due to the highly regulated environments, that data cannot be examined outside of its specific use cases.
In a world where public search engines crawl and index millions of terabytes, making search results available within milliseconds to anyone with a browser and an Internet connection, the setting for Rich Context may appear utterly alien.
Seemingly, a reasonable compromise would be to run queries of sensistive data within their secure environments, and otherwise leave the process unexamined.

However, there’s a broader scope to consider, far beyond the process of managing research projects or curating particular datasets.
The great challenges of our time are human in nature – climate change, terrorism, overuse of natural resources, the nature of work, and so on – and these require robust social science to understand their causes and consequences.
Effective use of data for social science research depends on understanding how datasets have been produced and how they’ve been used in previous works.
That understanding of data provenance is complicated by the fact that research often must link datasets from different data producers, different agencies, different organizations.

Other factors confound this situation.
On the one hand, the availability of inexpensive computing resources, ubiquitous connected mobile devices, social networks with global reach, etc., implies that researchers can acquire large, rich datasets.
Researchers can also fit statistical models that might have seemed intractably complex merely a decade ago.
On the other hand, accumulating important information about datasets, their provenance, and their usage has historically been a manual process.
Sharing this kind of information across organizations is difficult in general, and when datasets include confidential data about human subjects it becomes impossible to provide open access to the original data.
These issues combine to contribute to a lack of reproducibility and replicability in the study of human behavior, and threaten the legitimacy and utility of social science research.

The problems enumerated above make it difficult for people to understand about data usage, although at the same time they present opportunities for leveraging automation.
Consider how one of the major challenges in social science research is search and discovery: the vast majority of data and research results cannot be easily discovered by other researchers.
From one perspective, researchers are the users of micro data and its related [_metadata_](https://en.wikipedia.org/wiki/Metadata) – in other words, information about the structure of datasets, their provenance, etc. – and those researchers produce outcomes, often in the form of publications.
Publications accumulate expertise and nuances about datasets, including the data preparation required, research topics and methodology, what kinds of analyses were attempted and ultimately used, which information within the datasets was most valuable for the results obtained, and so on.
These details produced through publications represent _metadata about datasets_.
While the metadata within publications may be relatively unstructured – i.e., not explicitly articulated, nor shared outside of the current project – advances in machine learning provide means to extract metadata from unstructured sources.

The exchange of metadata plays another important role.
From the perspective of a data publisher (i.e., an agency) the many concerns about security and data privacy indicate use of _tiered access_ for sensitive data.
Datasets which do not contain sensitive data may be made freely available to the public as [_open data_](https://www.data.gov/).
Other datasets may require DUAs before researchers can access them.
So the data sharing may need to be organized in tiers.
Nonetheless, metadata for the private tiers in many cases may still be shared even though the data cannot be linked directly without explicit authorizations and stewardship.
So metadata provides a role of exchanging information about sensitive data, in ways that can be accumulated across a broader scope than individual research projects.

The opportunity at hand is to leverage machine learning advances to create feedback loops among the entities involved: researchers, datasets, data publishers, publications, and so on.
A new generation of tooling for search and discovery could leverage that to augment researchers: informing them about what datasets are being used, in which research fields, the tools involved, as well as the methods used and findings from the research.


## The Case for Rich Context

Consider the two most fundamental workflows within Rich Context, where analysts and other researchers interact among data providers, data stewards, training programs, security audits, etc.:

 -  **Collaboration and Workspace:** where researchers collaborate within a secured environment, having obtained authorizations via NDAs (non-disclosure agreements), DUAs (data use authorizations), etc.
 -  **Data Stewardship:** where data stewards can review and determine whether to approve requests for using the datasets that they curate, and then monitor and report on subsequent usage.

These components represent _explicitly_ linked feedback loops among the researchers, projects, datasets, and data stewards.
Researchers also use other _implicitly_ linked feedback loops externally to draw from published social science research.
Overall, the general category of linked data describes these interactions.

A large body of AI applications leverages linked data.
Related R&D efforts have focused mostly on public search engines, e-commerce platforms, and research in life sciences – while in social science research the use of this technology is relatively uncharted territory.
Also, given the security and compliance requirements involved with sensitive data, the process of leveraging linked data in social science research takes on nuanced considerations and compels novel solutions.

This area of focus represents the core of Rich Context: the interconnection of point solutions that facilitate research, as explicit feedback loops, along with means to leverage the implicit feedback loops that draw from published research.
Making use of AI applications to augment social science research is the goal of Rich Context work, and that interconnection of feedback loops, through a graph, creates a kind of _virtuous cycle_ for metadata – analogous to the famous [virtuous cycle of data](https://youtu.be/21EiKfQYZXc) required for AI applications in industry, as described Andrew Ng.

In general, guidance for Rich Context can be drawn from the FAIR[^1] data principles for data management and data stewardship in science.
The FAIR acronym stands for _Findable_, _Accessible_, _Interoperable_, and _Reusable_ data, addressing the issue of reproducibility in scientific research.
One observation from the original FAIR paper describes core tenets of Rich Context:

> Humans, however, are not the only critical stakeholders in the milieu of scientific data. Similar problems are encountered by the applications and computational agents that we task to undertake data retrieval and analysis on our behalf. These ‘computational stakeholders’ are increasingly relevant, and demand as much, or more, attention as their importance grows. One of the grand challenges of data-intensive science, therefore, is to improve knowledge discovery through assisting both humans, and their computational agents, in the discovery of, access to, and integration and analysis of, task-appropriate scientific data and other scholarly digital objects.

In other words, throughout the use cases for scientific data there are substantial opportunities for human-in-the-loop AI approaches, where the people involved increasingly have their work augmented by automated means, while the automation involved increasingly gets improved by incorporating human expertise.
One can use the metaphor of a _graph_ to represent the linkages: those that span across distinct research projects, those that require cross-agency collaboration with sensitive data, and those that integrate workflows beyond the scope of specific tools.
Specifically, this work entails the development of a [_knowledge graph_](https://en.wikipedia.org/wiki/Knowledge_base) to represent metadata about datasets, researchers, projects, agencies, etc., – including the computational agents involved – as distinct entities connected through relations that model their linkage.

![example graph relations](combined_images/illo.2.png "example graph relations")

Much of the intelligence in this kind of system is based on leveraging inference across the graph, insights which could not be inferred within the scope of a single research project or through the use of one particular tool.
Over time, the process accumulates a richer context of relations into that graph while clarifying and leveraging the feedback loops among the entities within the graph.
Rich Context establishes foundations for that work in social science research.

The [Rich Context Competition](https://coleridgeinitiative.org/richcontextcompetition#problemdescription) held during September 2018 through February 2019 invited AI research teams to compete in one aspect of Rich Context requirements.
Several teams submitted solutions to automate the discovery of research datasets along with associated research methods and fields, as identified in social science research publications.
Methods for machine learning and text analytics used by the four finalist teams provided complementary approaches, all focused on the problem of [_entity linking_](https://en.wikipedia.org/wiki/Entity_linking), with a corpus of social science research papers used as their training data.

The results of the competition provided metadata to describe links among datasets used in social science research. In other words, the outcome of the competition generated the basis for a moderately-sized knowledge graph.
There are many publication sources to analyze, and the project will pursue that work as an ongoing process to extract the implied metadata.
Meanwhile the increasing adoption and usage of the ADRF framework continues to accumulate metadata directly.


## Use Cases for Rich Context

Looking at potential use cases for Rich Context more formally, we can identify needs for leveraging a knowledge graph about research datasets and related entities.
For each of these needs, we can associate solutions based on open source software which have well-known use cases in industry.

As an example, consider a dataset _A001_ published by a data provider _XYZ Agency_ where _Jane Smith_ works as the data steward responsible for curating that dataset.
Over time, multiple research projects describe the use of _A001_ in their published results.
Some researchers note, on the one hand, that particular columns in data tables within _A001_ have some troubling data quality issues – inconsistent names and acronyms, identifiers that require transformations before they can be used to join with other datasets, and so on.
On the other hand, the body of research related to _A001_ illustrates how it gets joined frequently with another dataset _B023_ to support analysis using a particular research method.
The two datasets provide more benefits when used together.

While access to the _A001_ dataset gets managed through the _XYZ Agency_ and its use of the ADRF framework, other datasets such as _B023_ get used outside of that context.
A knowledge graph is used to accumulate information about the datasets, research projects, the resulting published papers, etc., and applications for augmenting research derive quite directly from that graph.
For example, feedback from researchers about how _A001_ gets combined with other datasets outside of the _XYZ Agency_ domain help guide _Jane Smith_ to resolve some of the data quality issues.
New columns get added with cleaner data for identifiers, which allows more effective linking.
Other feedback based on machine learning models that have classified published papers then helps recommend research methods and candidate datasets to new analysts – and also to agencies that have adjacent needs, but did not previously have visibility into the datasets published by _XYZ Agency_.

These are the kinds of applications that become enabled through Rich Context.
Search and discovery is clearly a need, although other use cases can help improve the discovery process and enhance social science research.
The following sections discuss specific use cases and their high-level requirements for the associated technologies.


### Search and Discovery

As described above, the vast majority of social science data and research results cannot be easily discovered by other researchers.
While public search engines based on keyword search have been popularized by e-commerce platforms such as Google and Bing, the more general problem of search and discovery can be understood best as a graph problem, and the needs in social science research are more formally understood as recommendations across a graph.

For example, starting with a given dataset, who else has worked with that data?
Which topics did they research?
Which methods did they use?
What were their results?
In other words, starting from one entity in a knowledge graph, what other neighboring entities are linked?

These kinds of capabilities may be implemented simply by users traversing directly through the links of the graph.
However, at scale, that volume of information can become tedious and overwhelming.
It’s generally more effective for user experience (UX) to have machine learning models summarize, then predict a set of the most likely paths through the graph from a particular starting point.

One good approach for this is the general case of _link prediction_[^2]: given a researcher starting with a particular dataset and goals for topics or methods, represent that as a local, smaller graph.
Then use link prediction to fill-in missing entities and relations, extending the local graph for that researcher.
In other words, what other datasets should be joined, how can particular fields be used, what research topics or methods are related, which published papers might become foundations for this work?
The most likely links inferred become top recommendations.
Also, this kind of recommendation is not limited to the start of projects, it can be leveraged at almost any stage of research.

### Entity Linking

The Rich Context Competition demonstrated how entities and relations used to construct a knowledge graph can be mined from a corpus of scientific papers.
Machine learning methods for _entity linking_[^3] used in the competition need to be generalized and extended, then used to analyze the ongoing stream of published social science research.
This work provides potential benefits for the publishers, for example helping them analyze and annotate newly published papers, developing dashboards about data impact metrics for journals or authors, and so on.

An additional benefit of entity linking is to help correct abbreviations, localized acronyms, or mistakes in linked data references.
This is an iterative process which will need integration and feedback with data stewardship workflows.


### Classifiers

As any researcher or librarian knows well, curating a large set of research papers by hand is labor-intensive and prone to errors.
Machine learning models based on _supervised learning_ or _semi-supervised learning_ (human-in-the-loop) can produce classifiers that annotate research papers automatically.

At some point, the ADRF framework may run classifiers on the workflows (e.g., Jupyter notebooks) for projects in progress.
By extension, classifiers may infer across the knowledge graph to add annotations for datasets as well.
This work can be considered a subset of link prediction, also related to entity linking.

### Transitive Inference

The metadata collected through the use of the ADRF framework or extracted from research publications includes relations that link entities in the graph.
Once a graph is constructed, additional relations may be inferred.
This is a case of [_transitive inference_](https://en.wikipedia.org/wiki/Transitive_relation), which can help add useful annotations to the graph, as shown in the following diagram:

![transitive relations](combined_images/illo.3.png "transitive relations")

In an example from Norse mythology, Torunn is the daughter of Thor, and Thor is the son of Gaea, therefore Torun is the _granddaughter_ of Gaea.
The same process can apply, for example, to relations that describe links between datasets and researchers.

Note that embeddings have proven to be a powerful approach for inference about patterns, based on deep learning.
On the current forefront of AI research, methods that leverage _reinforcement learning_[^4] are positioned to outperform embeddings soon, since they explore/exploit the graph structure instead of relying on a history of observed patterns.
This is especially useful for _knowledge graph completion_, where there are cases of incomplete metadata in the knowledge graph, which is essential for Rich Context work.

### Iterative Improvement of the Knowledge Graph

Most of the finalist teams in the Rich Context Competition made use of other existing graphs to bootstrap their machine learning development work, such as the [Microsoft Academic Graph](https://docs.microsoft.com/en-us/academic-services/graph/reference-data-schema), [Semantic Scholar](http://api.semanticscholar.org/corpus/), and others purpose-built for the competition.
Those teams cited how some graph would need to be extended in the future, to improve recognition accuracy.

Rich Context now subsumes that effort, making the iterative improvement of the knowledge graph an ongoing priority.
In lieu of those other graphs used for bootstrap purposes during the competition, the Rich Context knowledge graph provides the foundation for machine learning.

This process of accreting more entities into the graph and refining their relations leads to better training data and improved machine learning models.
Over time, as our models improve, the previously analyzed research papers can be re-evaluated to extract richer results.
That work in turn enhances social science research within the ADRF framework, along with data curation.
That overall dynamic represents the virtuous cycle of metadata, which continually improves Rich Context.

### Axioms for Dataset Curation

Another immediate use of Rich Context is to assist the data stewards to understand the broader scope of usage for the datasets that they curate.
For example, ontology _axioms_ used on the metadata in the graph can help analyze:

 - consistency checks for the incoming metadata
 - which data stewardship rules apply in a given case

In a way, that helps codify what would otherwise be “institutional lore” – instead that's now captured for others to study, use for training new staff, etc.

Note that the ADRF framework must provide means for customizing and configuring these kinds of axioms, so that data stewardship rules rules are not tightly coupled with the security audits and release cycle.
Those rules can change rapidly, depending on new legislation or other policy updates, or even due to different agency environments.


## Leveraging Open Standards and Open Source

Overall, the Rich Context portion of the ARDF framework represents a _data catalog_ along with associated _data governance_ practices.
As a first step in knowledge graph work, we can make use of existing open standards for metadata about data catalogs and datasets.
For example, the [W3C Data Activity](https://www.w3.org/2013/data/) coordinates a wide range of metadata standards, including:

- [DCAT](https://www.w3.org/TR/vocab-dcat/) – metadata about data catalogs
- [VoID](https://www.w3.org/TR/void/#dataset) – metadata about datasets
- [DCMI](http://dublincore.org/specifications/dublin-core/dcmi-terms/) – Dublin Core metadata terms
- [SKOS](https://www.w3.org/TR/swbp-skos-core-guide/) – “simple knowledge organization system”

These represent [controlled vocabularies](https://en.wikipedia.org/wiki/Controlled_vocabulary) described in [OWL](https://www.w3.org/OWL/) and based atop [RDF](https://www.w3.org/RDF/).
These standards can be combined and extended to suit the needs of specific use cases, such as within the ADRF framework.
In particular, the Rich Context knowledge graph is a superset of a [_DCAT-compliant data catalog_](https://www.w3.org/TR/vocab-dcat/#conformance).
Taken together, localized extensions of these open standards represent an [ontology](https://en.wikipedia.org/wiki/Ontology_(information_science)) – essentially as a specification for defining metadata that can be added into the knowledge graph and how that graph should be structured.
Development of that ontology along with example metadata plus Python code to validate the graph is managed in the public repository [adrf-onto](https://github.com/Coleridge-Initiative/adrf-onto/wiki) on GitHub.

The workflows within the ADRF framework represent use cases of data governance, and there is substantial overlap between Rich Context and emerging trends for data governance in industry.
There are open source projects which leverage knowledge graphs to collect metadata about datasets and their usage, where machine learning helps address the complexities[^5] of data governance in industry data science work.
For instance:

- [Amundsen](https://eng.lyft.com/amundsen-lyfts-data-discovery-metadata-engine-62d27254fbb9) from Lyft
- [Marquez](https://marquezproject.github.io/marquez/) from WeWork
- [WhereHows](https://github.com/linkedin/WhereHows) from LinkedIn
- [Databook](https://eng.uber.com/databook/) from Uber (pending release as open source)

Of course the Rich Context work addresses special considerations for sensitive data and compliance requirements.
Even so, much can be learned from these related open source projects in industry, which are pursuing similar kinds of use cases.
[TopQuadrant](https://www.topquadrant.com/) and [AstraZeneca](https://www.astrazeneca.com/) are examples of commercial vendors which construct knowledge graphs about datasets, also for data governance purposes – respectively in the Finance and Pharma business verticals.
These commercial solutions similarly make use of DCAT, VoID, DMCI, SKOS, and also the FAIR data principles.

In general, the subject of metadata exchange for data governance use cases is addressed by the [ODPi](https://www.odpi.org/) open standard [Egeria](https://www.odpi.org/projects/egeria) and related work by Mandy Chessell[^6], et al., including the [Apache Atlas](https://atlas.apache.org/) open source project.
Much of that work focuses on standards used to validate the exchange of metadata reliably across different frameworks.
This implies potential opportunities for Rich Context to interoperate with other data governance solutions or related metadata services.

To help establish open standards and open source implementations related to Rich Context, the ADRF team has collaborated with [Project Jupyter](https://jupyter.org/).
A new Rich Context feature set is being added to [JupyterLab](https://jupyterlab.readthedocs.io/en/stable/), which is one of the key open source projects used in the architecture of the ADRF framework, and these new features will be integrated into its future releases.
The new Rich Context features support projects as top-level entities, real-time collaboration and commenting, data registry, metadata handling, annotations, and usage tracking – as described in the Project Jupyter “press release” requests for comments: [data explorer](https://github.com/jupyterlab/jupyterlab-data-explorer/blob/master/press_release.md), [metadata explorer](https://github.com/jupyterlab/jupyterlab-metadata-service/blob/master/press_release.md), and [commenting](https://github.com/jupyterlab/jupyterlab-commenting/blob/master/press_release.md).
For example, a team of social science researchers working on a project could use the commenting feature in Jupyter to make an annotation about data quality issues encountered in a particular dataset.
That comment, as metadata about the dataset, would get imported into the knowledge graph, and could later be used for recommendations to a data steward or other researchers.

Note that most of the machine learning approaches referenced above are specific cases of [_deep learning_](https://en.wikipedia.org/wiki/Deep_learning), based on layered structures of artificial neural networks. In particular, _graph embedding_[^7] is an approach that vectorizes portions of graphs to use as training data for deep learning models.
Graph embedding can be used to perform entity linking, link prediction, etc.
In many of these cases, the resulting machine learning models become proxies for the graph data, such that the entire knowledge graph data is not required in production use cases.
That practice contrasts earlier and generally less effective approaches which relied on graph queries applied to the full data.
Note that the [winning team](https://ocean.sagepub.com/blog/an-interview-with-the-allen-institute-for-artificial-intelligence) in the Rich Context Competition was from [Allen AI](https://allenai.org/) which is a leader in the field of using embedded models for natural language.
Typical open source frameworks which are popular for deep learning research include [PyTorch](https://pytorch.org/) (from Facebook) and the more recent [Ray](https://ray.readthedocs.io/en/latest/distributed_training.html) (from UC Berkeley RISElab).


## System Architecture Overview

The following diagram illustrates a proposed system architecture for Rich Context as an additional module in the ADRF framework:

![Rich Context module](combined_images/illo.4.png "Rich Context module")

Building on the DFCore features plus the Data Stewardship module, Rich Context provides both a destination for metadata (logging events from components, or extracted metadata from analysis of publications) and a source for metadata ontology used in the ADRF framework.
Machine learning models get trained and updated based on the knowledge graph, then used for services (recommender system, classifiers, etc.) provided back into the ADRF framework, and additionally to support training initiatives – or for general purpose search and discovery by researchers.

The additional system components for implementing Rich Context are based primarily on open source software (e.g., PyTorch) and extensions of open standards (e.g., W3C), all within the security context of AWS GovCloud implementation of the ADRF framework.


## Trends, from origins to near-term future projections

Meanwhile, the development of Rich Context has followed a familiar progression, echoing how the history of IT and data analytics practices matured over decades -- albeit at a much faster pace.
That progression indicates likely directions for how AI applications will come into use for Rich Context.
Initial steps for Rich Context allowed researchers to analyze and report about sensistive data, while maintaining security and privacy compliance.
That's roughly analogous to data analytics during the heyday of _enterprise data warehouses_ and _business intelligence_ during the 1990s.
Subsequent work improved online workflows for data stewards, adding reports about usage along with some metadata derived as "exhaust" from logs.
That's roughly analogous to "data driven" organizations that emerged during the late 2000s after initial adoption of _data science_ practices.
Next steps, such as the Rich Context Competition, began to use _machine learning models_ to extract metadata that was embedded in unstructured data (i.e., research publication) to augment research efforts.
That's roughly analogous to the trends of machine learning adoption in industry during the mid 2010s.
In the immediate future, Rich Context applications begin to leverage  inference based on _knowledge graph_ representations about researchers, datasets, publications, data stewards, and so on.
Contemporary work in _deep learning_ promises AI-based applications that can leverage embeddings in the graph, to give social science researchers better recommendations for their work.
While that depends on historical patterns, current research on _reinforcement learning_ to explore/exploit the structure of graphs can move beyond history and patterns, effectively considering "what if" scenarios that suggest unexplored research opportunities.
That echoes the contemporary AI landscape, leading into the 2020s.

## Summary

Rich Context recognizes that social science research depends on _linked data_ usage of micro data and its metadata.
Effective management of that metadata is based on a graph that exists outside the context of component point solutions and specific workflows.
While there is substantial use of linked data for ecommerce platforms and research in life sciences, social science research presents nuances and new challenges that haven’t been addressed previously.

The Rich Context portions of the ADRF framework interconnect workflows that facilitate research – as explicit feedback loops in the graph – along with means to extract metadata from published research – as implicit feedback loops in the graph.
That process creates a kind of virtuous cycle for metadata, making use of AI applications to augment social science research, with continual improvement of the entities and relations represented within the graph.

A prerequisite was to create a corpus of research publications, used for training data during the Rich Context Competition, which demonstrated how to extract metadata from research publications.

The next step will be a formal implementation of the knowledge graph, based primarily on extensions of open standards and use of open source software.
That graph is represented as an extension of a DCAT-compliant data catalog. It will eventually incorporate the new Rich Context features going into Project Jupyter.
Immediate goals are to augment search and discovery in social science research, plus additional use cases that help improve the knowledge graph and augment research through the ADRF framework.

In the longer term, the process introduces human-in-the-loop AI into data curation, ultimately to reward researchers and data stewards whose work contributes additional information into the system.
With this latter step, in the broader sense Rich Context helps establish a community focused on contributing code plus knowledge into the research process.


## Notes

[^1]:
     Wilkinson, M. D. et al. [The FAIR Guiding Principles for scientific data management and stewardship](https://www.nature.com/articles/sdata201618). Sci. Data 3:160018 doi: 10.1038/sdata.2016.18 (2016)

[^2]:
     For a sample of recent research papers regarding link prediction through graph embedding, see [these Arxiv results](https://arxiv.org/search/?query=%22link+prediction%22+%22graph+embedding%22&searchtype=all&abstracts=show&order=&size=50).

[^3]:
     One of the better resources online for entity linking is [NLP-progress](http://nlpprogress.com/english/entity_linking.html) which specifically tracks the state-of-the-art (SOTA) papers, along with their scores on recognized benchmarks.

[^4]:
     between approaches based on RL vs. embedding, see  ["Multi-Hop Knowledge Graph Reasoning with Reward Shaping"](https://arxiv.org/abs/1808.10568); Xi Victoria Lin, Richard Socher, Caiming Xiong; _EMNLP 2018 _[arXiv:1808.10568 [cs.AI]](https://arxiv.org/abs/1808.10568)

[^5]:
     A good survey paper about these issues is given [Ground: A Data Context Service](http://cidrdb.org/cidr2017/papers/p111-hellerstein-cidr17.pdf), Hellerstein et al., _CIDR 2017_, based on research by [UC Berkeley RISElab](https://rise.cs.berkeley.edu/blog/publication/ground-data-context-service-2/).

[^6]:
     See [“The Case for Open Metadata”](https://zenodo.org/record/556504#.XSAUAJNKgWo), Mandy Chessell, _Frontiers in Data Science_, 2016-09-15.

[^7]:
     For an overview of graph embedding, see [“Graph Embedding for Deep Learning”](https://towardsdatascience.com/overview-of-deep-learning-on-graph-embeddings-4305c10ad4a4), Flawson Tong (2019-05-06).
