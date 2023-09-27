# Minimalist MATLAB Template for Scientific Figures

This repository contains a MATLAB template to create scientific figures. The template carefully follows data visualization best practices and has a minimalist design.

## Documentation

The template is documented at https://pascalmichaillat.org/d4/.

## Features

+ The font on the axes and for the annotations is Helvetica.
+ Font sizes and line thicknesses are set for comfortable reading once the figures are inserted [in pairs in a paper](https://github.com/pmichaillat/latex-paper).
+ A collection of color palettes is provided, both for qualitative displays and sequential displays. The palettes were created by [ColorBrewer](https://github.com/axismaps/colorbrewer).
+ The template produces a collection of basic figures with different plot types and different features:
    * Time series plots: single or multiple series, with or without period areas, with or without above-below areas
    * Scatter plots: transparent or not, connected or not, with or without above-below areas
+ Figure dimensions are set to minimize the white space around the content.
+ The figure aspect ratio is 4:3 so the figure can easily be annotated with a presentation software.
+ On a Mac, the figures can easily be annotated with Keynote. This procedure is more user friendly, and more flexible, than annotating the figures directly in MATLAB. The Keynote file `figures.key` illustrates how to annotate the figures produced by the template.
+ The figures produced by the template are available in PDF format in the `figures` folder.
+ The file `figures.pdf` illustrates the output of the figure template.

## Usage

+ Clone the repository to your local machine.
+ Add the MATLAB script `minimalistFigure.m` to your MATLAB folder.
+ Run `publish('minimalistFigure.m')` in MATLAB to generate an HTML page at `html/minimalistFigure.html` in the MATLAB folder. The page can be opened in any web browser. It displays the MATLAB code and its output. This is the best way to see the figures produced by the script, and to experiment with the script.
+ Use any part of the script defined in `minimalistFigure.m` to produce figures for your project.

## Software

This template was developed on an Apple Silicon Mac with MATLAB R2023B.

## License

The content of this repository is licensed under the terms of the MIT License.
