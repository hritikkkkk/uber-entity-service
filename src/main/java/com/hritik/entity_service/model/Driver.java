package com.hritik.entity_service.model;

import jakarta.persistence.*;
import jakarta.validation.constraints.DecimalMax;
import jakarta.validation.constraints.DecimalMin;
import lombok.*;
import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import java.util.ArrayList;
import java.util.List;

@Entity
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Driver extends BaseModel {

    private String name;

    @Column(nullable = false, unique = true)
    private String licenseNumber;
    @Column(nullable = false, unique = true)
    private String phoneNumber;

    @OneToMany(mappedBy = "driver", fetch = FetchType.LAZY)
    @Fetch(FetchMode.SUBSELECT)
    private List<Booking> bookings = new ArrayList<>();

    @OneToOne(mappedBy = "driver", cascade = CascadeType.ALL)
    private Car car;


    @OneToOne
    private ExactLocation lastKnownLocation;


    @OneToOne
    private ExactLocation home;


    private String activeCity;

    @DecimalMin(value = "0.00", message = "Rating must be grater than or equal to 0.00")
    @DecimalMax(value = "5.00", message = "Rating must be less than or equal to 5.00")
    private Double rating;

    private boolean isAvailable;


    @Enumerated(value = EnumType.STRING)
    private DriverApprovalStatus driverApprovalStatus;




}
