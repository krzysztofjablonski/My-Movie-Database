module MoviesHelper
  def search_movie?
    return false if params['search'].blank?
    !(params['search']['title_like'].blank? and params['search']['director_like'].blank? and params['search']['actors_name_like'].blank? and params['search']['category_id_equals'].blank?)
  end
end
