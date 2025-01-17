module Jekyll
  class UniqueCoursesGenerator < Generator
    safe true

    def generate(site)
      puts "UniqueCoursesGenerator->generate"
      unique_courses = Set.new

      site.pages.each do |page|
        puts "#{page.data['name']}, courses=#{page.data['courses']}"
        if page.data['courses']
          page.data['courses'].each do |course|
            unique_courses.add(course)
          end
        end
      end

      site.data['unique_courses'] = unique_courses.to_a
      puts "UniqueCoursesGenerator->generate called successfully"
    end
  end
end
