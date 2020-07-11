module UserHelper
  require 'json'
  def validate_create_user(data)
    model = {}
    validate = true
    if !data.has_key?(:email)
      validate = false
    else
      model.merge! :email => data[:email]
    end
    if !data.has_key?(:password)
      validate = false
    else
      model.merge! :password => data[:password]
    end
    return { :validate => validate, :model => model}
  end

  def validate_update_user(data)
    model = {}
    validate = true
    if !data.has_key?(:email)
      validate = false
    else
      model.merge! :email => data[:email]
    end
    if !data.has_key?(:password)
      validate = false
    else
      model.merge! :password => data[:password]
    end
    return { :validate => validate, :model => model}
  end
end
