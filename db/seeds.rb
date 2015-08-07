Category.destroy_all
Post.destroy_all

###### Post Seeds ######
 post1 = Post.create(title: "Find Your Current Directory", command: "pwd", description: "Print Working Directory allows you to see which directory you currently are in.")
# post2 = Post.create(title: "", category: "", command: "", post_id: )
# post3 = Post.create(title: "", category: "", command: "", post_id: )
# post4 = Post.create(title: "", category: "", command: "", post_id: )
# post5 = Post.create(title: "", category: "", command: "", post_id: )

###### Category Seeds ######
beginner = Category.create(name: "Beginner")
ruby = Category.create(name: "Ruby")
terminal = Category.create(name: "Terminal")

### CategoriesPosts Seeds ######
# CategoriesPosts.create(post_id: @post1, category_id: @beginner)
# CategoriesPosts.create(post_id:@post1, category_id: @terminal)
