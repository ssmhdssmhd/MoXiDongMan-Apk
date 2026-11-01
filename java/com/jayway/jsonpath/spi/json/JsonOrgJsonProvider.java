package com.jayway.jsonpath.spi.json;

import com.jayway.jsonpath.InvalidJsonException;
import com.jayway.jsonpath.JsonPathException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes2.dex */
public class JsonOrgJsonProvider extends AbstractJsonProvider {
    private static final Logger logger = LoggerFactory.getLogger((Class<?>) GsonJsonProvider.class);

    private Object createJsonElement(Object obj) {
        return obj;
    }

    private JSONArray toJsonArray(Object obj) {
        return (JSONArray) obj;
    }

    private JSONObject toJsonObject(Object obj) {
        return (JSONObject) obj;
    }

    @Override // com.jayway.jsonpath.spi.json.JsonProvider
    public Object createArray() {
        return new JSONArray();
    }

    @Override // com.jayway.jsonpath.spi.json.JsonProvider
    public Object createMap() {
        return new JSONObject();
    }

    @Override // com.jayway.jsonpath.spi.json.AbstractJsonProvider, com.jayway.jsonpath.spi.json.JsonProvider
    public Object getArrayIndex(Object obj, int i) {
        try {
            return toJsonArray(obj).get(i);
        } catch (JSONException e) {
            throw new JsonPathException(e);
        }
    }

    @Override // com.jayway.jsonpath.spi.json.AbstractJsonProvider, com.jayway.jsonpath.spi.json.JsonProvider
    public Object getMapValue(Object obj, String str) {
        try {
            Object objOpt = toJsonObject(obj).opt(str);
            return objOpt == null ? JsonProvider.UNDEFINED : unwrap(objOpt);
        } catch (JSONException e) {
            throw new JsonPathException(e);
        }
    }

    @Override // com.jayway.jsonpath.spi.json.AbstractJsonProvider, com.jayway.jsonpath.spi.json.JsonProvider
    public Collection<String> getPropertyKeys(Object obj) {
        JSONObject jsonObject = toJsonObject(obj);
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jsonObject.names().length(); i++) {
            try {
                arrayList.add((String) jsonObject.names().get(i));
            } catch (JSONException e) {
                throw new JsonPathException(e);
            }
        }
        return arrayList;
    }

    @Override // com.jayway.jsonpath.spi.json.AbstractJsonProvider, com.jayway.jsonpath.spi.json.JsonProvider
    public boolean isArray(Object obj) {
        return (obj instanceof JSONArray) || (obj instanceof List);
    }

    @Override // com.jayway.jsonpath.spi.json.AbstractJsonProvider, com.jayway.jsonpath.spi.json.JsonProvider
    public boolean isMap(Object obj) {
        return obj instanceof JSONObject;
    }

    @Override // com.jayway.jsonpath.spi.json.AbstractJsonProvider, com.jayway.jsonpath.spi.json.JsonProvider
    public int length(Object obj) {
        if (isArray(obj)) {
            return toJsonArray(obj).length();
        }
        if (isMap(obj)) {
            return toJsonObject(obj).length();
        }
        if (obj instanceof String) {
            return ((String) obj).length();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("length operation can not applied to ");
        sb.append(obj);
        throw new JsonPathException(sb.toString() != null ? obj.getClass().getName() : "null");
    }

    @Override // com.jayway.jsonpath.spi.json.JsonProvider
    public Object parse(String str) throws InvalidJsonException {
        try {
            return new JSONTokener(str).nextValue();
        } catch (JSONException e) {
            throw new InvalidJsonException(e);
        }
    }

    @Override // com.jayway.jsonpath.spi.json.AbstractJsonProvider, com.jayway.jsonpath.spi.json.JsonProvider
    public void removeProperty(Object obj, Object obj2) {
        if (isMap(obj)) {
            toJsonObject(obj).remove(obj2.toString());
        } else {
            toJsonArray(obj).remove(obj2 instanceof Integer ? ((Integer) obj2).intValue() : Integer.parseInt(obj2.toString()));
        }
    }

    @Override // com.jayway.jsonpath.spi.json.AbstractJsonProvider, com.jayway.jsonpath.spi.json.JsonProvider
    public void setArrayIndex(Object obj, int i, Object obj2) throws JSONException {
        try {
            if (!isArray(obj)) {
                throw new UnsupportedOperationException();
            }
            toJsonArray(obj).put(i, createJsonElement(obj2));
        } catch (JSONException e) {
            throw new JsonPathException(e);
        }
    }

    @Override // com.jayway.jsonpath.spi.json.AbstractJsonProvider, com.jayway.jsonpath.spi.json.JsonProvider
    public void setProperty(Object obj, Object obj2, Object obj3) throws JSONException {
        try {
            if (isMap(obj)) {
                toJsonObject(obj).put(obj2.toString(), createJsonElement(obj3));
                return;
            }
            JSONArray jsonArray = toJsonArray(obj);
            int iIntValue = obj2 != null ? obj2 instanceof Integer ? ((Integer) obj2).intValue() : Integer.parseInt(obj2.toString()) : jsonArray.length();
            if (iIntValue == jsonArray.length()) {
                jsonArray.put(createJsonElement(obj3));
            } else {
                jsonArray.put(iIntValue, createJsonElement(obj3));
            }
        } catch (JSONException e) {
            throw new JsonPathException(e);
        }
    }

    @Override // com.jayway.jsonpath.spi.json.AbstractJsonProvider, com.jayway.jsonpath.spi.json.JsonProvider
    public Iterable<?> toIterable(Object obj) {
        try {
            int i = 0;
            if (isArray(obj)) {
                JSONArray jsonArray = toJsonArray(obj);
                ArrayList arrayList = new ArrayList(jsonArray.length());
                while (i < jsonArray.length()) {
                    arrayList.add(unwrap(jsonArray.get(i)));
                    i++;
                }
                return arrayList;
            }
            JSONObject jsonObject = toJsonObject(obj);
            ArrayList arrayList2 = new ArrayList();
            while (i < jsonObject.names().length()) {
                arrayList2.add(unwrap(jsonObject.get((String) jsonObject.names().get(i))));
                i++;
            }
            return arrayList2;
        } catch (JSONException e) {
            throw new JsonPathException(e);
        }
    }

    @Override // com.jayway.jsonpath.spi.json.JsonProvider
    public String toJson(Object obj) {
        return obj.toString();
    }

    @Override // com.jayway.jsonpath.spi.json.AbstractJsonProvider, com.jayway.jsonpath.spi.json.JsonProvider
    public Object unwrap(Object obj) {
        if (obj == JSONObject.NULL) {
            return null;
        }
        return obj;
    }

    @Override // com.jayway.jsonpath.spi.json.JsonProvider
    public Object parse(InputStream inputStream, String str) throws InvalidJsonException {
        try {
            return new JSONTokener(new InputStreamReader(inputStream, str)).nextValue();
        } catch (UnsupportedEncodingException e) {
            throw new JsonPathException(e);
        } catch (JSONException e2) {
            throw new InvalidJsonException(e2);
        }
    }
}
