module Jekyll
  class UniqueCoursesGenerator < Generator
    safe true

    def generate(site)
      unique_courses = Set.new

      site.pages.each do |page|
        if page['courses']
          page['courses'].each do |course|
            unique_courses.add(course)
          end
        end
      end

      site.data['unique_courses'] = unique_courses.to_a
    end
  end
end
