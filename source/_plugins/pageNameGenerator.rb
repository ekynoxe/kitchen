module Jekyll

    class PageNameGenerator < Generator
        safe true

        ## See post.dir and post.base for directory information.
        def generate(site)
            site.posts.each do |post|
                post.data['name'] = post.name.gsub!(/\.md$/, "")
            end
        end
    end
end