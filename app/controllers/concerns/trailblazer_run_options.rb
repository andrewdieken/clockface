module TrailblazerRunOptions

  private

  def _run_options(options)
    options.merge(
      "current_user" => current_user
    )
  end

end
