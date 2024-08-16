c = get_config()
c.NbConvertApp.notebooks = ["Lecc01.ipynb",
                            "Lecc02.ipynb",
                            "Lecc03.ipynb",
                            "Lecc04.ipynb",
                            "Lecc05.ipynb"]

c.SlidesExporter.reveal_theme = 'solarized'
c.SlidesExporter.reveal_scroll = True
c.SlidesExporter.language_code = 'es'

c.SlidesExporter.mathjax_url = "https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS_HTML"

c.SlidesExporter.jquery_url = "https://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"

c.SlidesExporter.require_js_url = "https://cdnjs.cloudflare.com/ajax/libs/require.js/2.1.10/require.min.js"
