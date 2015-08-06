module GroupsHelper

  def render_group_updated_at(group)
    group.updated_at.to_s(:short)
  end

end
