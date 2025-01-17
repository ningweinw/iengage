module Jekyll
  class UniqueCoursesGenerator < Generator
    safe true

    def generate(site)
      unique_courses = Set.new

      site.posts.docs.each do |post|
        if post.data['courses']
          post.data['courses'].each do |course|
            unique_courses.add(course)
          end
        end
      end

      site.data['unique_courses'] = unique_courses.to_a
    end
  end
end
