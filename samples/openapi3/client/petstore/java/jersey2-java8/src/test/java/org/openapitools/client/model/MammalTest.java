/*
 * OpenAPI Petstore
 * This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\
 *
 * The version of the OpenAPI document: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package org.openapitools.client.model;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.annotation.JsonValue;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.client.JSON;
import org.openapitools.client.model.Pig;
import org.openapitools.client.model.Whale;
import org.openapitools.client.model.Zebra;
import org.junit.Assert;
import org.junit.Ignore;
import org.junit.Test;


/**
 * Model tests for Mammal
 */
public class MammalTest {
    private final Mammal model = new Mammal();

    /**
     * Model tests for Mammal
     */
    @Test
    public void testMammal() throws Exception {
        Mammal m = new Mammal();
        Zebra z = new Zebra();
        z.setType(Zebra.TypeEnum.MOUNTAIN);
        z.setClassName("zebra");
        m.setActualInstance(z);
        Assert.assertEquals(JSON.getDefault().getMapper().writeValueAsString(m), "{\"type\":\"mountain\",\"className\":\"zebra\"}");
    }

    /**
     * Model tests for getActualInstanceRecursively
     */
    @Test
    public void testGetActualInstanceRecursively() throws Exception {
        Mammal m = new Mammal();
        Pig p = new Pig();
        DanishPig dp = new DanishPig();
        dp.setClassName("danish_pig");
        p.setActualInstance(dp);
        m.setActualInstance(p);
        Assert.assertTrue(m.getActualInstanceRecursively() instanceof DanishPig);

        Pig p2 = new Pig();
        m.setActualInstance(p2);
        Assert.assertEquals(m.getActualInstanceRecursively(), null);

    }

    /**
     * Test the property 'hasBaleen'
     */
    @Test
    public void hasBaleenTest() {
        // TODO: test hasBaleen
    }

    /**
     * Test the property 'hasTeeth'
     */
    @Test
    public void hasTeethTest() {
        // TODO: test hasTeeth
    }

    /**
     * Test the property 'className'
     */
    @Test
    public void classNameTest() {
        // TODO: test className
    }

    /**
     * Test the property 'type'
     */
    @Test
    public void typeTest() {
        // TODO: test type
    }

    /**
     * Test code sample
     */
    @Test
    public void codeSampleTest() {
        Mammal exampleMammal = new Mammal();
 
        // create a new Pig
        Pig examplePig = new Pig();
        // set Mammal to Pig
        exampleMammal.setActualInstance(examplePig);
        // to get back the Pig set earlier
        Pig testPig = (Pig) exampleMammal.getActualInstance();

        // create a new Whale
        Whale exampleWhale = new Whale();
        // set Mammal to Whale
        exampleMammal.setActualInstance(exampleWhale);
        // to get back the Whale set earlier
        Whale testWhale = (Whale) exampleMammal.getActualInstance();

        // create a new Zebra
        Zebra exampleZebra = new Zebra();
        // set Mammal to Zebra
        exampleMammal.setActualInstance(exampleZebra);
        // to get back the Zebra set earlier
        Zebra testZebra = (Zebra) exampleMammal.getActualInstance();
    }

}
