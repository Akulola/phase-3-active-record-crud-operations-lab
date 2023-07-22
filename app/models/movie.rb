class Movie < ActiveRecord::Base
    def self.create_with_title(movie_title)
        Movie.create(title: movie_title)
      end
    
      def self.first_movie
        Movie.first
      end
    
      def self.last_movie
        Movie.last
      end
    
      def self.movie_count
        Movie.count
      end
    
      def self.find_movie_with_id(id)
        Movie.find(id)
      end
    
      def self.find_movie_with_attributes(attribute_name)
        Movie.find_by(attribute_name)
      end
    
      def self.find_movies_after_2002
        Movie.where("release_date > ?", 2002)
      end
    
      def update_with_attributes(update_attr)
        self.update(update_attr)
      end
    
      def self.update_all_titles(new_title)
        Movie.update(title: new_title)
      end
    
      def self.delete_by_id(id)
        movie = Movie.find_movie_with_id(id)
        movie.destroy
      end
    
      def self.delete_all_movies
        Movie.destroy_all
      end
    end