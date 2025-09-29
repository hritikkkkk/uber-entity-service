package com.hritik.entity_service.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class ExactLocation extends BaseModel {
    @Column(nullable = false)
    private Double longitude;

    @Column(nullable = false)
    private Double latitude;

}
