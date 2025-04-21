# Project Info

This repo is for a quarto website published as [www.catbird-analytics.com](https://www.catbird-analytics.com).

## Purpose

**Catbird Analytics** website serves several purposes:

1.  **Catbird Analytics blog**: A blog that provides info on projects/products, insights and analysis on various topics.
2.  **Product access/embedding**: Direct access to data products that have been/are being developed.
3.  **Portfolio showcase**: Links to various products and projects, including those that may not be suitable for incorporating directly into the website.
4.  **Tech blog**: highlighting technical aspects of R, Quarto, Shiny.

## Operations

Website is published by:

1.  In RStudio, running 'Build' \> 'Render Website' will build the website locally.
2.  Push changes to this repo.
3.  Hosted on **Netlify:** [www.catbird-analytics.com](https://www.catbird-analytics.com)
4.  **Continuous deployment via Netlify** setup (see my google docs on 'Web Dev General' and 'CATBIRD BLOGGING' for details. (note, all the setup is in Netlify - nothing set in GitHub)
5.  Domain is managed via Rebel.ca.

## Design Elements

Design elements rely on:

-   [Bootstrap](https://getbootstrap.com/docs/5.3/getting-started/introduction/)
-   [Quarto](https://quarto.org/docs/websites/)
-   \_quarto.yml: the main configuration file
-   CSS: **styles.css** file

### Top Banner

Top banner design is controlled in several areas:

-   \_quarto.yml: theme \> spacelab for baseline formatting (I think)
-   yaml header for each page: title, subtitle text content
-   css: custom styles

CSS:

-   **.quarto-title:** text block area, holding title and subtitle
    -   text color -\> but only for subtitle
-   **.quarto-title-block** **.quarto-title-banner**: defined together
    -   entire title block/banner area
    -   background-color: overrides bootstrap theme

### Navigation Bar
