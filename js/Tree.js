let Node = require('./Node');
class Tree {
	constructor() {
		this.root = null
	}

	addNode(data, node = this.root) {
		const added_node = new Node(data);
		let return_node;
		if (this.root == null) {
			return this.root = added_node;
		} else if (data < node.data) {
			return_node = node.left == null ? node.left = added_node : this.addNode(data, node.left);
			return return_node;
		} else if (data > node.data) {
			return_node = node.right == null ? node.right = added_node : this.addNode(data, node.right);
      return return_node;
    }
    return null;
      
	}

	// In Order Traversal
	traverse(node = this.root) {
		if (node.left != null ) {
			this.traverse(node.left);
		}
		console.log(node.data);
		if (node.right != null) {
			this.traverse(node.right);
		}
	}
	
	search(value, node = this.root) {
		if (value == node.data) {
			console.log('Value found '+value);
		} else if (value < node.data) {
			if (node.left == null) {
				console.log('Value cannot be found!');
				return null;
			} else {
				this.search(value, node.left);
			}
		} else if (value > node.data) {
			if (node.right == null) {
				console.log('Value cannot be found!');
				return null;
			} else {
				this.search(value, node.right);
			}
		}
		return node;
	}
}

module.exports = Tree;