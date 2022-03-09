module MoviesHelper
  def embed_youtube(url)
    tag.iframe(
      src: url,
      frameborder: 0,
      allow: "accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture",
      allowfullscreen: true
    )
  end
end
