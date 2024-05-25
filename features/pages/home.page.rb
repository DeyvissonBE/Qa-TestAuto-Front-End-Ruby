class HomePage < SitePrism::Page

        element :myIcon, :id, "ember17"
        element :new_post_button, :xpath, '//*[@id="ember301"]'

        def checkLoginSuccessful
            myIcon_element = find('#ember20')
          end




end
