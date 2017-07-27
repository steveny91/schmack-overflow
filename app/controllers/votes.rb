post '/questions/:id/votes' do
  @question = Question.find(params[:id])
  votes = Vote.create(user: current_user, votable_id: params[:id], votable_type: "Question", vote: params[:vote])
  redirect "/questions/#{ @question.id}"
end

post '/answers/:id/votes' do
  @answer = Answer.find(params[:id])
  votes = Vote.create(user: current_user, votable_id: params[:id], votable_type: "Answer", vote: params[:vote])
  redirect "/answers/#{ @answer.id}"
end

post '/comments/:id/votes' do
  @comment = Comment.find(params[:id])
  votes = Vote.create(user: current_user, votable_id: params[:id], votable_type: "Comment", vote: params[:vote])
  redirect "/comments/#{ @comment.id}"
end