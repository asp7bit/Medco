module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  # When /^I go to (.+)$/ do |page_name|
  #
  # step definition
  #
  def path_to(page_name)
    case page_name

    when /home page/
      kendaraans_path

    when /Sign In Modal/
      new_user_session_path

    when /registration page/
      new_user_registration_path
      
    when /password reset page/
      '/pick_new_password?reset_password_token=vFQs5HzxqDX6znBgpWAq'

    when /first login page/
      '/users/create_password?token=gr9K8dsqqbFUyXEy2g8e'

    when /sydication page/
      '/users/1/syndication'

    when /reset password/
      '/reset-password'

    when /edit user/
      edit_user_path(1)

    when /the user publishing/
      "/users/1/publishing"
    when /the curate page/
      curates_path

    when /the gather feed/
      user_google_reader_path(2)

    when /the publishing page/
      publishing_user_path(1)

      # Add more mappings here.
      # Here is an example that pulls values out of the Regexp:
      #
      # when /^(.*)'s profile page$/i
      # user_profile_path(User.find_by_login($1))


    end
  end
end

World(NavigationHelpers)
