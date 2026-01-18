require 'fileutils'
require 'yaml'

desc "Generate markdown versions of all posts for content negotiation"
task :generate_markdown do
  posts_dir = '_posts'
  output_base = '_site_md'

  # Clean and create output directory
  FileUtils.rm_rf(output_base)
  FileUtils.mkdir_p(output_base)

  Dir.glob("#{posts_dir}/*.markdown").each do |post_file|
    content = File.read(post_file)

    # Parse front matter
    if content =~ /\A---\s*\n(.*?)\n---\s*\n(.*)/m
      front_matter = YAML.safe_load($1, permitted_classes: [Date, Time])
      body = $2

      # Extract date from filename
      filename = File.basename(post_file)
      if filename =~ /^(\d{4})-(\d{2})-(\d{2})-(.+)\.markdown$/
        year, month, day, slug = $1, $2, $3, $4

        # Create output directory structure
        output_dir = File.join(output_base, year, month, day)
        FileUtils.mkdir_p(output_dir)

        # Create markdown output file
        output_file = File.join(output_dir, "#{slug}.md")

        # Build markdown with metadata header
        md_content = <<~MD
          ---
          title: "#{front_matter['title']}"
          date: #{front_matter['date'] || "#{year}-#{month}-#{day}"}
          author: Josh Ferrara
          url: https://joshferrara.com/#{year}/#{month}/#{day}/#{slug}/
          format: markdown
          ---

          #{body}
        MD

        File.write(output_file, md_content)
        puts "Generated: #{output_file}"
      end
    end
  end

  puts "\nMarkdown files generated in #{output_base}/"
  puts "Copy these to your Jekyll output or serve directly."
end

desc "Copy generated markdown to _site after Jekyll build"
task :copy_markdown_to_site do
  source = '_site_md'
  dest = '_site'

  if Dir.exist?(source) && Dir.exist?(dest)
    FileUtils.cp_r("#{source}/.", dest)
    puts "Copied markdown files to _site/"
  else
    puts "Run 'rake generate_markdown' first, then 'jekyll build'"
  end
end

desc "Full build with markdown content negotiation"
task :build => [:generate_markdown] do
  system("bundle exec jekyll build")
  Rake::Task[:copy_markdown_to_site].invoke
end
