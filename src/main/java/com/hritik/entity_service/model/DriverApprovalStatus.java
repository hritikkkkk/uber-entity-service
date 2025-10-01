package com.hritik.entity_service.model;


public enum DriverApprovalStatus {
    PENDING,   // Request sent to driver, waiting for response
    ACCEPTED,  // Driver approved/accepted the ride
    REJECTED,  // Driver declined the ride
    TIMEOUT    // No response within the time window
}
