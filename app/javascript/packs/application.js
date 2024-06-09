// app/javascript/packs/application.js
//import 'topnavbar'; // Make sure to include your custom JavaScript file here

// Existing code
import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

