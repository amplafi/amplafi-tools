# compass configuration for the amplafi-web project
# TODO : move this config.rb file to subdirectory rather than pollute the main directory
# A full description of how to use this configuration file can be found here: http://compass-style.org/help/tutorials/configuration-reference/

# Require any additional compass plugins here.

# Set this to the root of your project when deployed:
http_path = "/"
css_dir = "src/main/resources/css"
sass_dir = "src/main/sass"
# XXX: maybe there should be an separate directory for images
images_dir = "src/main/resources/images"
javascripts_dir = "src/main/resources/js"

# You can select your preferred output style here (can be overridden via the command line):
# output_style = :expanded or :nested or :compact or :compressed
output_style = :nested
# To enable relative paths to assets via compass helper functions. Uncomment:
# relative_assets = true

# To disable debugging comments that display the original location of your selectors. Uncomment:
line_comments = false


# If you prefer the indented syntax, you might want to regenerate this
# project again passing --syntax sass, or you can uncomment this:
# preferred_syntax = :sass
# and then run:
# sass-convert -R --from scss --to sass sass scss && rm -rf sass && mv scss sass