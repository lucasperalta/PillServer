package pillserver

import com.google.firebase.FirebaseApp
import com.google.firebase.FirebaseOptions
import com.google.firebase.auth.FirebaseCredentials
import com.google.firebase.database.DatabaseReference
import com.google.firebase.database.FirebaseDatabase
import com.main.dto.User

class FirebaseAddController {
//Service class
    def firebaseRef
    def index() {

        FileInputStream serviceAccount = new FileInputStream("C:\\firebase\\pillapp-ba465-firebase-adminsdk-gwgyq-6338e90999 .json");

        FirebaseOptions options = new FirebaseOptions.Builder()
                .setCredential(FirebaseCredentials.fromCertificate(serviceAccount))
                .setDatabaseUrl("https://pillapp-ba465.firebaseio.com/")
                .build();

        FirebaseApp.initializeApp(options);

        final FirebaseDatabase database = FirebaseDatabase.getInstance()
        DatabaseReference ref = database.getReference("server/saving-data/fireblog")

        DatabaseReference usersRef = ref.child("users")

        Map<String, User> users = new HashMap<String, User>()
        users.put("alanisawesome", new User("June 23, 1912","lucas"))
        users.put("gracehop", new User("December 9, 1906","pedro"))

        usersRef.setValue(users)
        return null
    }
}



