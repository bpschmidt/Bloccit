module ApplicationHelper

    def posts_list(zebra)
      if zebra.posts.any?
        render zebra.posts
      else
        "No Posts"
      end
    end


    def form_group_tag(errors, &block)
      if errors.any?
        content_tag :div, capture(&block), class: 'form-group has-error'
      else
        content_tag :div, capture(&block), class: 'form-group'
    end
  end
end
