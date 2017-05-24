class MessageStore < Hyperloop::Store

  state :user_name, scope: :class, reader: true

  receives Operations::Join do |params|
    puts "receiving Operations::Join(#{params})"
    mutate.user_name params.user_name
  end


end