###### Post Seeds ######
post1 = Post.create(title: "Find Your Current Directory", category: "terminal", command: "pwd", description: "Print Working Directory allows you to see which directory you currently are in.", post_id: 1)
# post2 = Post.create(title: "", category: "", command: "", post_id: )
# post3 = Post.create(title: "", category: "", command: "", post_id: )
# post4 = Post.create(title: "", category: "", command: "", post_id: )
# post5 = Post.create(title: "", category: "", command: "", post_id: )

###### Category Seeds ######
Category.create(category_title: "Beginner", category_id: 1)
Category.create(category_title: "Ruby", category_id: 2)
Category.create(category_title: "Terminal", category_id: 3)

### CategoriesPosts Seeds ######
CategoryiesPosts.create(post_id: 1, category_id: 1)
CategoryiesPosts.create(post_id: 1, category_id: 3)
# CategoryiesPosts.create(post_id: 3, category_id: 1)
