c = get_config()
c.NbConvertApp.notebooks = ["Lecc01.ipynb",
                            "Lecc02.ipynb",
                            "Lecc03.ipynb",
                            "Lecc04.ipynb",
                            "Lecc05.ipynb"]

c.SlidesExporter.mathjax_url = "https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS_HTML"

c.SlidesExporter.jquery_url = "https://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"

c.SlidesExporter.require_js_url = "https://cdnjs.cloudflare.com/ajax/libs/require.js/2.1.10/require.min.js"

# jupyter nbconvert --config mycfg.py
# jupyter nbconvert --config mycfg.py  --to slides --reveal-prefix reveal.js
# jupyter nbconvert --config mycfg.py  --to slides --offline embed --reveal-prefix reveal.js
