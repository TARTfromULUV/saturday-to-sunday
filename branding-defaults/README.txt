BRANDING DEFAULTS — THE ARTWORK THAT SHIPS WITH THE APP

This folder belongs to the BUILD, not to you. It is replaced wholesale every
time you install a new version, so do not put anything here you want to keep.

Your own artwork goes in the data folder instead, which lives outside the app
and survives updates. The startup window prints its exact path; it is:

  Windows   %LOCALAPPDATA%\VintageESPNApp\branding\
  Mac       ~/Library/Application Support/VintageESPNApp/branding/
  Linux     ~/.local/share/vintage-espn-app/branding/

HOW THE TWO FIT TOGETHER

For every image the app looks in your data folder first and here second. So:

  you have your own scores.png   -> yours is used
  you do not                     -> the one in sections/ here is used
  neither exists                 -> the section falls back to its desk plate

That means a fresh install already looks finished, you can replace artwork one
file at a time without deleting anything, and a later version can ship better
defaults that actually reach you — which would be impossible if these files had
been copied into your data folder on first run.

To go back to a shipped default, delete your own copy of that file.

WHAT GOES WHERE

  wordmark.png        the masthead logo (wide rather than tall; .svg works too)
  sections/*.png      one image per section, named after the section
  staff/*.png         one photo per writer, named after them

The two WHAT-GOES-HERE.txt notes written into your data folder list every
accepted filename.
