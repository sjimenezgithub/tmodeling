class Predicate(object):
    def __init__(self, name, arguments):
        self.name = name
        self.arguments = arguments

    def __str__(self):
        return "(%s %s)" % (self.name, " ".join(map(str, self.arguments)))

    def __repr__(self):
        return "Predicate(name: %r, arguments: %r)" % (self.name, self.arguments)

    def get_arity(self):
        return len(self.arguments)