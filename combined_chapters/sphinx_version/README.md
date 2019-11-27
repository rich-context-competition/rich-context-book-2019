# Rich Search and Discovery book

## Known Issues

There are known issues in the generated markdown source for:

#### Chapter 4

Something about the use of comments causes headings to throw exceptions:

```
 {#acknowledgments .ListParagraph}
```

#### Chapter 6

Must remove table references such as:

```
[\[tab:ner\_results\]]{#tab:ner_results label="tab:ner_results"}

[\[tab:e2e\_results\]]{#tab:e2e_results label="tab:e2e_results"}

[\[tab:test\_results\]]{#tab:test_results label="tab:test_results"}

[\[tab:e2e\_results\]](#tab:e2e_results){reference-type="ref" reference="tab:e2e_results"}

[\[tab:e2e\_results\]](#tab:e2e_results){reference-type="ref" reference="tab:e2e_results"} 

[\[tab:test\_results\]](#tab:test_results){reference-type="ref" reference="tab:test_results"}
```

#### Chapter 11

Similarly to the notes above, remove comments:

```
 {#acknowledgements .unnumbered}
```

Overall, these must be edited by hand to identify issues in the
markdown source that will cause Sphinx to throw exceptions.


## Installation

This preview site uses [Sphinx with
Markdown](https://docs.readthedocs.io/en/stable/intro/getting-started-with-sphinx.html),
and the dependencies are listed in `requirements.txt` and set up using `virtualenv` via:

```
source ~/venv/bin/activate
pip install -r requirements.txt
```

So far, this has only been run on Ubuntu 18.04 LTS and Mac OSX 10.13.6
but it's relatively generic HTML + JavaScript from Sphinx and nothing
especially tricky in Flask.


## Running

To regenerate the static HTML from the Markdown chapter sources, first
run:

```
source ~/venv/bin/activate
make html
```

To launch the web server, it'd be a better idea to run Nginx+Gunicorn
or some comparable WSGI-ish framework, but this trivial example simply
runs the Flask app on port `8080` via:

```
nohup ./app.py 8080
```
