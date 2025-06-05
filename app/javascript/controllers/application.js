import { Application } from "@hotwired/stimulus"
// app/assets/javascripts/application.js

//= require jquery3
//= require popper
//= require bootstrap
//= require rails-ujs  // Это критически важно для работы data-method
//= require turbolinks
//= require_tree .


const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
