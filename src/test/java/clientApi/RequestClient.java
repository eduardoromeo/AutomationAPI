package clientApi;

import clientApi.RequestInformation;
import clientApi.ResponseInformation;

import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;

/**
 * @autor: Eduardo Moreira
 **/
public abstract class RequestClient {

    Client client = ClientBuilder.newBuilder().build();
    public abstract ResponseInformation send (RequestInformation request);
}