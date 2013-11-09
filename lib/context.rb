class Context
  def get_binding
    binding
  end

  def t(key)
    I18n.t(key)
  end
end
