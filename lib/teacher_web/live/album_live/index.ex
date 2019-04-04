defmodule TeacherWeb.AlbumLive.Index do
  use Phoenix.LiveView

  alias Teacher.Recordings
  alias TeacherWeb.AlbumView

  def mount(_session, socket) do
    albums = Recordings.list_albums()
    {:ok, assign(socket, albums: albums)}
  end

  def render(assigns) do
    AlbumView.render("index.html", assigns)
  end

end
