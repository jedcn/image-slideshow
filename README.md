# Image Slideshow

Create a dynamic reveal.js presentation based on images returned from
a Google search.

## Usage

Setup a functional ruby environment and run a `bundle`.

Next, think of a search term and run `reveal-ck generate`.

You'll see something like this:

    $ reveal-ck generate
    Generating slides for 'slides.rb'..

    Let's build a slideshow..

    Search terms: puppies

    1. fullscreen
    2. regular
    How should images be displayed?  1

This takes about 3-5 seconds to complete.

When finished, a new reveal.js presentation will be available in the
`slides/` directory.

Open `slides/index.html` in your favorite browser.

If you're on MacOS, you can run `open slides/index.html`.
