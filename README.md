# Master thesis in Physics

[![DOI](https://zenodo.org/badge/87197132.svg)](https://zenodo.org/badge/latestdoi/87197132)

- **Title:** Cosmological closure of metric and area-metric ideal fluids
- **Author:** [Nils Leif Fischer](https://nilsleiffischer.de)
- **Submission date:** Dec 5, 2017
- **Supervisors:** [Prof. Björn M. Schäfer](http://www.ita.uni-heidelberg.de/~spirou/) (Center for Astronomy Heidelberg) and Dr. Frederic P. Schuller (University Erlangen-Nürnberg)
- **Abstract:** To shed some light on the construction of physically viable gravity theories, I employ the gravitational closure framework to investigate a cosmology that is not a priori based on a metric but assumes an area-metric spacetime geometry that arises from the most general linear theory of electrodynamics. To this end, I develop a symmetry reduction procedure to find, for the first time, an exact non-metric solution of the gravitational closure framework under cosmological symmetries. I investigate cosmological sources of gravity and construct an area-metric description of ideal fluids. I conclude by illustrating that, even though we cannot rely on metric concepts such as a metric line-element or a Levi-Civita connection to begin with, we can recover all required notions, such as light rays and observers, that allow us to conduct cosmological observations.
- **Full text:** [Digital version](dist/msc_digital.pdf)

## Supplementary Mathematica Notebooks

- [Derivation of the cosmological metric and area-metric](nb/1_cosmological_geometry.nb)
- [Derivation of metric and area-metric ideal fluids](nb/2_cosmological_matter.nb)
- [Solution of the gravitational closure equations for metric and area-metric cosmology](nb/3_constructive_cosmology.nb)

---

## Using the LaTeX style for your thesis

- Just drop the `thesis.cls` file into your project folder and begin your document with `\documentclass{thesis}`. See the `msc-thesis.tex` file for an example. Then, you can adjust everything in the `thesis.cls` file to your needs.

- Typeset the document with the [XeLaTeX](http://www.xelatex.org/) typesetting engine and the [Biber](http://biblatex-biber.sourceforge.net) bibliography processor (recommended).

- Adjust the following `documentclass` options to produce appropriate digital and print versions of the document:

	- `digital` / `print` primarily toggles link coloring
	- `oneside` / `twoside` layouts page headers and footers accordingly
	- `openright` / `openleft` / `openany` adjusts positioning of title page and chapter beginnings in twosided layout

- If necessary for binding, adjust the page offset:

	```tex
	\geometry{
		bindingoffset=5mm,
	}
	```

- You may need to change the fonts specified in `thesis.cls` to ones installed on your system.

- When you include plots in your document, use vector file formats instead of pixel graphics. Have a look at my [TexFig](https://github.com/nilsleiffischer/texfig) repository to see how to generate PGF vector plots with Python's Matplotlib that look great in your LaTeX document.
