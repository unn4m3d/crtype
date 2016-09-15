module CrType
  # Abstract type that can be put in variable
  abstract class AbstractType

    # Get origin type
    abstract def inner_type : Class

    # Cast to origin type
    abstract def cast(obj) : Object

    # Box object
    abstract def box(obj) : Void*

    # Unbox object as origin type
    abstract def unbox(obj : Void*) : Object
  end

  # Generic type
  class Type(T) < AbstractType
    def inner_type
      T
    end

    delegate name,to_s,inspect,cast, to: inner_type

    def box(obj)
      Box(T).box obj
    end

    def unbox(obj : Void*)
      Box(T).unbox obj
    end
  end
end
