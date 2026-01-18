#!/bin/bash

# Generate markdown versions of all posts for content negotiation
# These files will be processed by Jekyll and output as .md files

POSTS_DIR="_posts"
OUTPUT_DIR="_markdown_posts"

# Create output directory
mkdir -p "$OUTPUT_DIR"

# Process each post
for post in "$POSTS_DIR"/*.markdown; do
    filename=$(basename "$post")

    # Extract date and slug from filename (format: YYYY-MM-DD-slug.markdown)
    if [[ $filename =~ ^([0-9]{4})-([0-9]{2})-([0-9]{2})-(.+)\.markdown$ ]]; then
        year="${BASH_REMATCH[1]}"
        month="${BASH_REMATCH[2]}"
        day="${BASH_REMATCH[3]}"
        slug="${BASH_REMATCH[4]}"

        # Extract title from front matter
        title=$(grep -m1 "^title:" "$post" | sed 's/^title: *//' | tr -d '"' | tr -d "'")

        # Extract the body content (everything after the second ---)
        body=$(awk '/^---$/{n++; next} n>=2' "$post")

        # Create output file path matching Jekyll's pretty permalink
        output_file="$OUTPUT_DIR/${year}-${month}-${day}-${slug}.md"

        # Write the markdown file with front matter
        cat > "$output_file" << EOF
---
layout: markdown
title: "${title}"
date: ${year}-${month}-${day}
source_url: /${year}/${month}/${day}/${slug}/
permalink: /${year}/${month}/${day}/${slug}.md
---

${body}
EOF

        echo "Generated: $output_file"
    fi
done

echo ""
echo "Markdown posts generated in $OUTPUT_DIR/"
echo "These will be built by Jekyll and served at /YYYY/MM/DD/slug.md URLs"
