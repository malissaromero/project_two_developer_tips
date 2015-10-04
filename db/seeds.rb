Category.destroy_all
Post.destroy_all

beginner = Category.create(name: "Beginner")
atom = Category.create(name: "Atom")
terminal = Category.create(name: "Terminal")

One = Post.create(title: "Copy Highlighted Text", category_ids: "1", command: "cmd-c", description: "Copy highlighted text with this command.")

Two = Post.create(title: "Copy Highlighted Text", category_ids: "2", command: "cmd-c", description: "Copy highlighted text with this command.")

Three = Post.create(title: "Copy Highlighted Text", category_ids: "3", command: "cmd-c", description: "Copy highlighted text with this command.")

Four = Post.create(title: "Paste Highlighted Text", category_ids: "1", command: "cmd-v", description: "Copy highlighted text with this command.")

Five = Post.create(title: "Paste Highlighted Text", category_ids: "2", command: "cmd-v", description: "Copy highlighted text with this command.")

Six = Post.create(title: "Paste Highlighted Text", category_ids: "3", command: "cmd-v", description: "Copy highlighted text with this command.")

Seven = Post.create(title: "Close Tab Easily", category_ids: "2", command: "cmd-w", description: "Close a tab without trying to find the little X.")

# Six = Post.create(title: "", category_ids: "", command: "", description: "")
#
# Five = Post.create(title: "", category_ids: "", command: "", description: "")
#
# Six = Post.create(title: "", category_ids: "", command: "", description: "")
#
# Seven = Post.create(title: "", category_ids: "", command: "", description: "")
