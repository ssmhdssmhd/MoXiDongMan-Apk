package com.jayway.jsonpath.spi.json;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.ObjectReader;
import com.jayway.jsonpath.InvalidJsonException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.StringWriter;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes2.dex */
public class JacksonJsonProvider extends AbstractJsonProvider {
    private static final ObjectMapper defaultObjectMapper;
    private static final ObjectReader defaultObjectReader;
    public ObjectMapper objectMapper;
    public ObjectReader objectReader;

    static {
        ObjectMapper objectMapper = new ObjectMapper();
        defaultObjectMapper = objectMapper;
        defaultObjectReader = objectMapper.reader().withType(Object.class);
    }

    public JacksonJsonProvider() {
        this(defaultObjectMapper, defaultObjectReader);
    }

    @Override // com.jayway.jsonpath.spi.json.JsonProvider
    public Object createMap() {
        return new LinkedHashMap();
    }

    public ObjectMapper getObjectMapper() {
        return this.objectMapper;
    }

    @Override // com.jayway.jsonpath.spi.json.JsonProvider
    public Object parse(String str) throws InvalidJsonException {
        try {
            return this.objectReader.readValue(str);
        } catch (IOException e) {
            throw new InvalidJsonException(e, str);
        }
    }

    @Override // com.jayway.jsonpath.spi.json.JsonProvider
    public String toJson(Object obj) throws IOException {
        StringWriter stringWriter = new StringWriter();
        try {
            JsonGenerator jsonGeneratorCreateGenerator = this.objectMapper.getFactory().createGenerator(stringWriter);
            this.objectMapper.writeValue(jsonGeneratorCreateGenerator, obj);
            stringWriter.flush();
            stringWriter.close();
            jsonGeneratorCreateGenerator.close();
            return stringWriter.getBuffer().toString();
        } catch (IOException unused) {
            throw new InvalidJsonException();
        }
    }

    public JacksonJsonProvider(ObjectMapper objectMapper) {
        this(objectMapper, objectMapper.reader().withType(Object.class));
    }

    @Override // com.jayway.jsonpath.spi.json.JsonProvider
    public List<Object> createArray() {
        return new LinkedList();
    }

    public JacksonJsonProvider(ObjectMapper objectMapper, ObjectReader objectReader) {
        this.objectMapper = objectMapper;
        this.objectReader = objectReader;
    }

    @Override // com.jayway.jsonpath.spi.json.JsonProvider
    public Object parse(InputStream inputStream, String str) throws InvalidJsonException {
        try {
            return this.objectReader.readValue(new InputStreamReader(inputStream, str));
        } catch (IOException e) {
            throw new InvalidJsonException(e);
        }
    }
}
