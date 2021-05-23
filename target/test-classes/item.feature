Feature: Items

  Scenario: I want to create a new item

    Given I have authentication to todo.ly
    When I send POST request 'api/items.json' with json and BASIC authentication
  """
   {
       "Id":"10335",
       "Content": "para items"
  }
  """

  """
     {
    "Id": 10335,
    "Content": "para items",
    "ItemType": 1,
    "Checked": false,
    "ProjectId": null,
    "ParentId": null,
    "Path": "",
    "Collapsed": false,
    "DateString": null,
    "DateStringPriority": 0,
    "DueDate": "",
    "Recurrence": null,
    "ItemOrder": null,
    "Priority": 4,
    "LastSyncedDateTime": "/Date(1621206845450)/",
    "Children": [],
    "DueDateTime": null,
    "CreatedDate": "/Date(1621206845450)/",
    "LastCheckedDate": null,
    "LastUpdatedDate": "/Date(1621206845450)/",
    "Deleted": true,
    "Notes": "",
    "InHistory": false,
    "SyncClientCreationId": null,
    "DueTimeSpecified": true,
    "OwnerId": 677511
     }
     """


    Then I expected the response code 200

    When I send DELETE request 'api/items.json' with json and BASIC authentication
    """

    """

    Then I expected the response code 200

