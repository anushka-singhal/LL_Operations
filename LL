class Node:
    def __init__(self,data):
        self.data = data
        self.ref = None

class LinkedList:
    def __init__(self):
        self.head = None
    def print_ll(self):
        if self.head is None:
            print("Linked List is empty")
        else:
            n = self.head
            while n is not None:
                print(n.data,"--->",end = " ")
                n = n.ref
    def add_begin(self, data):
        new_node = Node(data)
        new_node.ref = self.head
        self.head = new_node
        
    def add_end(self, data):
        new_node = Node(data)
        if self.head is None:
            self.head = new_node
        else:
            n = self.head
            while n.ref is not None:
                n = n.ref
            n.ref = new_node
            
    def after_node(self,data,x):
        n=self.head
        while n is not None:
            if x==n.data:
                break
            n = n.ref
        if n is None:
            print("Node is not present")
        else:
            new_node = Node(data)
            new_node.ref = n.ref
            n.ref = new_node
    
    def before_node(self,data,x):
        if self.head is None:
            print("Empty")
            return
        if self.head == x:
            new_node = Node(data)
            new_node.ref = self.head
            self.head = new_node
            return
        n = self.head
        while n.ref is not None:
            if n.ref.data == x:
                break
            n = n.ref
        if n.ref is None:
            print("Not found")
        else:
            new_node = Node(data)
            new_node.ref = n.ref
            n.ref = new_node
    def insert_empyt(self,data):
        if self.head is None:
            new_node = Node(data)
            self.head = new_node
        else:
            print("not empty")
                   
    def delete_begin(self):
        if self.head is None:
            print("Empty")
        else:
            self.head = self.head.ref    
            
    def delete_end(self):
        if self.head is None:
            print("Enpty")
        else:
            n = self.head
            while n.ref.ref is not None:
                n = n.ref
            n.ref = None
            
            
    def delete_by_value(self,x):
        if self.head is None:
            print("can't delete")
            return
        if x == self.head.data:
            self.head = self.head.ref
            return
        n = self.head
        while n.ref is not None:
            if x == n.ref.data:
                break
            n = n.ref
        if n.ref is None:
            print("not present")
        else:
            n.ref = n.ref.ref
ll1 = LinkedList()
ll1.add_begin(10)
ll1.add_begin(20)
ll1.add_begin(30)
ll1.after_node(35,30)
ll1.add_end(40)
ll1.before_node(5,10)
ll1.add_begin(50)
ll1.insert_empyt(1)
ll1.delete_begin()
ll1.delete_end()
ll1.delete_by_value(5)
ll1.print_ll()
