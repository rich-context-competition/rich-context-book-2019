#!/usr/bin/env python
# encoding: utf-8

from flask import Flask, render_template, request, safe_join, send_from_directory
import sys

APP = Flask(__name__, static_folder="_build/html/_static", template_folder="_build/html")


@APP.route("/_images/<path>")
def page_images (path):
    return send_from_directory(APP.template_folder, safe_join("_images", path))


@APP.route("/")
@APP.route("/index.html")
def page_home():
    return render_template("index.html")

@APP.route("/chap01.html")
def page_chap01 ():
    return render_template("chap01.html")

@APP.route("/chap02.html")
def page_chap02 ():
    return render_template("chap02.html")

@APP.route("/chap03.html")
def page_chap03 ():
    return render_template("chap03.html")

@APP.route("/chap04.html")
def page_chap04 ():
    return render_template("chap04.html")

@APP.route("/chap05.html")
def page_chap05 ():
    return render_template("chap05.html")

@APP.route("/chap06.html")
def page_chap06 ():
    return render_template("chap06.html")

@APP.route("/chap07.html")
def page_chap07 ():
    return render_template("chap07.html")

@APP.route("/chap08.html")
def page_chap08 ():
    return render_template("chap08.html")

@APP.route("/chap09.html")
def page_chap09 ():
    return render_template("chap09.html")

@APP.route("/chap10.html")
def page_chap10 ():
    return render_template("chap10.html")

@APP.route("/chap11.html")
def page_chap11 ():
    return render_template("chap11.html")

@APP.route("/chap12.html")
def page_chap12 ():
    return render_template("chap12.html")

@APP.route("/chap13.html")
def page_chap13 ():
    return render_template("chap13.html")

@APP.route("/genindex.html")
def page_genindex ():
    return render_template("genindex.html")

@APP.route("/py-modindex.html")
def page_modindex ():
    return render_template("py-modindex.html")

@APP.route("/search.html")
def page_search ():
    return render_template("search.html")
           

if __name__ == "__main__":
    PORT = int(sys.argv[1])
    APP.run(host="0.0.0.0", port=PORT, debug=True)
