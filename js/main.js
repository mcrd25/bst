let Tree = require('./Tree');
function main(){
	let bst = new Tree();
	bst.addNode(5);
	bst.addNode(7);
	bst.addNode(3);
	bst.addNode(4);
	console.log(bst);
	console.log(bst.root.left.right.data);
	console.log('Traversed tree in sorted order.');
	bst.traverse();
	console.log('Is the value 1 in the tree?');
	bst.search(1);
	console.log('Is the value 7 in the tree?');
	bst.search(7);
}
main();