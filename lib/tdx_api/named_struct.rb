class NamedStruct < Struct
  def initialize(**keyword_args)
    super(*members.map{|key| keyword_args[key] })
  end
end