Feature: Abilty to comment on posts

Create a new comments container @comment = comment.new on the show action

Create a comments form on our show post page
 - author
 - message
( post.comments.creat gives us our post_id) 

Creat a Post action that creates the comment for us 
  - if it succeeds (saves) it should send us back to the post page
    and giv us some kind of success notification
  - if it fails, it should still show us the post page, with our comment feilds 
    still in tact