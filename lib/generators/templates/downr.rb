Downr.configure do |config|
  config.options = {
    no_intra_emphasis:              true,   # do not parse emphasis inside of words.
    tables:                         true,   # parse tables,  PHP-Markdown style.
    fenced_code_blocks:             true,   # parse fenced code blocks,  PHP-Markdown style.
    autolink:                       true,   # parse links even when they are not enclosed in <> characters.
    disable_indented_code_blocks:   false,  # do not parse usual markdown code blocks.
    strikethrough:                  true,   # parse strikethrough,  PHP-Markdown style.
    lax_spacing:                    true,   # HTML blocks do not require to be surrounded by an empty line
    space_after_headers:            false,  # A space is always required between the hash at the beginning of a header
    superscript:                    true,   # parse superscripts after the ^ character; 
    underline:                      true,   # parse underscored emphasis as underlines.
    highlight:                      true,   # parse highlights. This is ==highlighted==. It looks like this: <mark>highlighted</mark>
    quote:                          true,   # parse quotes. This is a "quote". It looks like this: <q>quote</q>""
    footnotes:                      true,   # parse footnotes,  PHP-Markdown style.
    filter_html:                    false,  # do not allow any user-inputted HTML in the output.
    no_images:                      false,  # do not generate any <img> tags.
    no_links:                       false,  # do not generate any <a> tags.
    no_styles:                      true,   # do not generate any <style> tags.
    safe_links_only:                false,  # only generate links for protocols which are considered safe.
    with_toc_data:                  true,   # add HTML anchors to each header in the output HTML,  to allow linking to each section.
    hard_wrap:                      false,  # insert HTML <br> tags
    xhtml:                          false,  # output XHTML-conformant tags. This option is always enabled in the Render::XHTML renderer.
    prettify:                       true,   # add prettyprint classes to <code> tags for google-code-prettify.
    link_attributes:                true,   # hash of extra attributes to add to links.
  }
end
