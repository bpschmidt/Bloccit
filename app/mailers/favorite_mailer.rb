class FavoriteMailer < ApplicationMailer
  default from: "musicchick5285@yahoo.com"
  def new_comment(user, post, comment)

    headers["Message-ID"] = "<comments/#{comment.id}@bpschmidt-bloccit.example>"
    headers["In-Reply-To"] = "<post/#{post.id}@bpschmidt-bloccit.example>"
    headers["References"] = "<post/#{post.id}@bpschmidt-bloccit.example"

    @user = user
    @post = post
    @comment = comment

    mail(to: user.email, subject: "New comment on #{post.title}")
  end
end
