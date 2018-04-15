require 'spec_helper'

feature 'Creating Contact Updates' do
    scenario 'can create contact' do
        #check the root route
            visit '/'
            #click the create new contact button
            click_link 'Create Contact'
            #fill in the forms for new
            fill_in 'Name', with: 'name'
            fill_in 'Cell', with: 'cell'
            fill_in 'Email', with: 'myemail'
            fill_in 'Date', with: 'date'

            #click the create button
            click_button 'Create Update'
            
            expect(page).to have_content('title')
            expect(page).to have_content('cell')
            expect(page).to have_content('myemail')
            expect(page).to have_content('date')
    end
end