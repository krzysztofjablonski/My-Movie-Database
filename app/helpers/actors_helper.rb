module ActorsHelper
  def search_actor?
    return false if params['search'].blank?
    !(params['search']['name_like'].blank? and params['search']['movies_title_like'].blank?)
  end
end
