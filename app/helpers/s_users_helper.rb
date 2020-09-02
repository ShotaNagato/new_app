module SUsersHelper
    def gravatar_for(s_user, size:80)
        gravatar_id = Digest::MD5::hexdigest(s_user.email.downcase)
        gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
        image_tag(gravatar_url, alt: s_user.name, class: "gravatar")
    end
end
