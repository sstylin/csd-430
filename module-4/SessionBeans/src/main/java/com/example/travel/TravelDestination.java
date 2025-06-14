// Steve Stylin, module 4.2 JavaBea.
package com.example.travel; // Package declaration for organizing related classes

import java.io.Serializable; // Importing Serializable interface for object serialization


public class TravelDestination implements Serializable { // Class definition implementing Serializable
    private String country; // Field to store the country name
    private String city; // Field to store the city name
    private String description; // Field to store a description of the travel destination

    // No-argument constructor
    public TravelDestination() {} // Default constructor for creating instances without parameters

    // Getters and Setters
    public String getCountry() { // Getter method for country
        return country; // Returns the country field value
    }

    public void setCountry(String country) { // Setter method for country
        this.country = country; // Sets the country field value
    }

    public String getCity() { // Getter method for city
        return city; // Returns the city field value
    }

    public void setCity(String city) { // Setter method for city
        this.city = city; // Sets the city field value
    }

    public String getDescription() { // Getter method for description
        return description; // Returns the description field value
    }

    public void setDescription(String description) { // Setter method for description
        this.description = description; // Sets the description field value
    }
}
