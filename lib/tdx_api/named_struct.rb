class NamedStruct < Struct
  def initialize(**kwargs)
    super(*members.map{|k| kwargs[k] })
  end
end