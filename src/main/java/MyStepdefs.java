import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class MyStepdefs {
    @Given("^I have authentication to todo\\.ly$")
    public void iHaveAuthenticationToTodoLy() {
    }

    @When("^I sent POST request 'api/user\\.json' with json and BASIC authentication$")
    public void iSentPOSTRequestApiUserJsonWithJsonAndBASICAuthentication(String method, String url, String authentication, String jsonBody) {
    }

    @Then("^I expected the response code (\\d+)$")
    public void iExpectedTheResponseCode(int responseCode) {
    }
}
