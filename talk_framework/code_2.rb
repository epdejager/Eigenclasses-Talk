############################
# Ancestors chain
############################

class MySuperClass
  def my_method
    puts :my_method
  end
end

class MyClass < MySuperClass
end

MyClass.ancestors

############################
# Eigenclasses
############################

my_obj = MyClass.new

e = class << my_obj
  self
end

e.instance_methods.first
e.superclass

###

e = my_obj.singleton_class

############################
# Eigenclasses of Classes
############################

class_e = class << MyClass
  self
end

class_e.superclass

superclass_e = class << MySuperClass
  self
end

class_e.ancestors


############################
# Lets mix evals - METHODS
############################
MyClass.instance_eval do
  def hi
    puts :hi
  end
end

MyClass.singleton_methods

###

m = MyClass.new
m.class_eval do
  def fred
    puts :fred_is_that_you?
  end
end

m.singleton_methods

###

m.class_eval do
  def self.bob
    puts :bob?
  end
end

m_e = m.singleton_class
m_e.singleton_methods
