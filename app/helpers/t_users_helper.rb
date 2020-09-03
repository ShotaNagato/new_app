module TUsersHelper
    def gravatar_for(t_user, size:80)
        gravatar_id = Digest::MD5::hexdigest(t_user.email.downcase)
        gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
        image_tag(gravatar_url, alt: t_user.name, class: "gravatar")
    end
end
