module PostsHelper

  def render_post_updated_at(post)
    post.updated_at.to_s(:short)
  end

  def render_post_content(post)
    simple_format(post.content)
  end

end
