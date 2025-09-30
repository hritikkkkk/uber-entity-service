package com.hritik.entity_service.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Car extends BaseModel {

    @Column(name = "plate_number", unique = true, nullable = false, length = 15)
    private String plateNumber;

    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    private CarColor color;

    @Column(nullable = false,length = 50)
    private String brand;

    @Column(nullable = false, length = 50)
    private String model;

    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    private CarType carType;

    private int capacity;

    private boolean active = true;

    @Enumerated(EnumType.STRING)
    private FuelType fuelType;

    @OneToOne
    @JoinColumn(name = "driver_id")
    private Driver driver;
}
