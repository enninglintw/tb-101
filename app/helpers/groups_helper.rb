module GroupsHelper

  def render_group_updated_at(group)
    group.updated_at.to_s(:short)
  end

  def render_group_description(group)
    simple_format(group.description)
  end

  def render_group_title(group)
    truncate(group.title, length: 20)
  end

end
