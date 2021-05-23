Feature: Projects

  Scenario: I want to create a new project

    Given I have authentication to todo.ly
    When I send POST request 'api/projects.json' with json and BASIC authentication
  """
   {
       "Id":"1",
       "Content": "Sub Project 4"
  }
  """
    #Then I expected the response code 200
   # And I expected the response body is equal
    """
     {
                "Id": 1,
                "Content": "Sub Project 4",
                "ItemsCount": 0,
                "Icon": 10,
                "ItemType": 2,
                "ParentId": 3906741,
                "Collapsed": false,
                "ItemOrder": 1,
                "Children": [],
                "IsProjectShared": false,
                "ProjectShareOwnerName": null,
                "ProjectShareOwnerEmail": null,
                "IsShareApproved": false,
                "IsOwnProject": true,
                "LastSyncedDateTime": "/Date(1621118101571)/",
                "LastUpdatedDate": "/Date(1621020967623)/",
                "Deleted": false,
                "SyncClientCreationId": null
     }
     """
   # And I get the property value 'Id' and save on ID_USER

    # And I get the property value 'FullName' and save on UseName

    # When I send PUT request 'api/user/ID_USER.json' with json and BASIC authentication
   # """
   # {
   #   "FullName": "blanca"
   # }
   #  """
    Then I expected the response code 200

    When I send DELETE request 'api/projects/1959.json' with json and BASIC authentication
    """

    """

    Then I expected the response code 200

   # When I send GET request 'api/user.json' with json and BASIC authentication
    # """

     #"""
    #Then I expected the response code 200
