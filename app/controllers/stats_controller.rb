class StatsController < ApplicationController
  def index
    @page_title = 'Statystyki'
    conn = OCI8.new(session['login'].to_s, session['pass'].to_s, session['database'].to_s)

    cursor = conn.parse('BEGIN :filmy := ZLICZ_FILMY(); END;')
    cursor.bind_param(':filmy',nil, Fixnum)
    cursor.exec
    @filmy = cursor[':filmy']

    cursor = conn.parse('BEGIN :aktorzy := ZLICZ_AKTOROW(); END;')
    cursor.bind_param(':aktorzy',nil, Fixnum)
    cursor.exec
    @aktorzy = cursor[':aktorzy']

    conn.logoff
  end
end
