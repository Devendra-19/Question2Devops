package Maven_Docker;

import static org.junit.jupiter.api.Assertions.assertEquals;
import org.junit.jupiter.api.Test;

public class AppTest {

    @Test
    public void testAdd() {
    	ApplicationClass app = new ApplicationClass();
        assertEquals(app.sendApplication(),"Application Received");
    }
}
