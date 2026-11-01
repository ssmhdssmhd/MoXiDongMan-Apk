package com.jayway.jsonpath.spi.json;

import com.jayway.jsonpath.InvalidJsonException;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.NoSuchElementException;
import org.codehaus.jettison.json.JSONArray;
import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;
import org.codehaus.jettison.json.JSONTokener;

/* loaded from: classes2.dex */
public class JettisonProvider extends AbstractJsonProvider {

    public static class JettisonArrayIterator implements Iterator<Object> {
        private int index;
        private final JSONArray jsonArray;

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.index < this.jsonArray.length();
        }

        @Override // java.util.Iterator
        public Object next() {
            try {
                JSONArray jSONArray = this.jsonArray;
                int i = this.index;
                this.index = i + 1;
                return JettisonProvider.jettisonUnwrap(jSONArray.get(i));
            } catch (JSONException e) {
                throw new NoSuchElementException(e.toString());
            }
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }

        private JettisonArrayIterator(JSONArray jSONArray) {
            this.index = 0;
            this.jsonArray = jSONArray;
        }
    }

    public static class JettisonObjectIterator implements Iterator<Object> {
        private final Iterator<?> jsonKeysIt;
        private final JSONObject jsonObject;

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.jsonKeysIt.hasNext();
        }

        @Override // java.util.Iterator
        public Object next() {
            try {
                return JettisonProvider.jettisonUnwrap(this.jsonObject.get(String.valueOf(this.jsonKeysIt.next())));
            } catch (JSONException e) {
                throw new NoSuchElementException(e.toString());
            }
        }

        @Override // java.util.Iterator
        public void remove() {
            this.jsonKeysIt.remove();
        }

        private JettisonObjectIterator(JSONObject jSONObject) {
            this.jsonObject = jSONObject;
            this.jsonKeysIt = jSONObject.keys();
        }
    }

    public static class JettisonTokener extends JSONTokener {
        public JettisonTokener(String str) {
            super(str);
        }

        /* renamed from: newJSONArray, reason: merged with bridge method [inline-methods] */
        public JettisonArray m22770newJSONArray() throws JSONException {
            return new JettisonArray(this);
        }

        /* renamed from: newJSONObject, reason: merged with bridge method [inline-methods] */
        public JettisonObject m22771newJSONObject() throws JSONException {
            return new JettisonObject(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object jettisonUnwrap(Object obj) {
        if (obj == null || !obj.equals(JSONObject.NULL)) {
            return obj;
        }
        return null;
    }

    private static Object jettisonWrap(Object obj) {
        return obj == null ? JSONObject.NULL : obj;
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: org.codehaus.jettison.json.JSONException */
    private Object parse(JettisonTokener jettisonTokener) throws JSONException {
        try {
            char cNextClean = jettisonTokener.nextClean();
            jettisonTokener.back();
            if (cNextClean == '{') {
                return new JettisonObject(jettisonTokener);
            }
            if (cNextClean == '[') {
                return new JettisonArray(jettisonTokener);
            }
            throw new JSONException("Invalid JSON");
        } catch (JSONException e) {
            throw new IllegalStateException((Throwable) e);
        }
    }

    @Override // com.jayway.jsonpath.spi.json.JsonProvider
    public Object createMap() {
        return new JettisonObject();
    }

    @Override // com.jayway.jsonpath.spi.json.AbstractJsonProvider, com.jayway.jsonpath.spi.json.JsonProvider
    public Object getArrayIndex(Object obj, int i) {
        return jettisonUnwrap(((JSONArray) obj).opt(i));
    }

    @Override // com.jayway.jsonpath.spi.json.AbstractJsonProvider, com.jayway.jsonpath.spi.json.JsonProvider
    public Object getMapValue(Object obj, String str) {
        Object objOpt = ((JSONObject) obj).opt(str);
        return objOpt == null ? JsonProvider.UNDEFINED : jettisonUnwrap(objOpt);
    }

    @Override // com.jayway.jsonpath.spi.json.AbstractJsonProvider, com.jayway.jsonpath.spi.json.JsonProvider
    public Collection<String> getPropertyKeys(Object obj) {
        ArrayList arrayList = new ArrayList(length(obj));
        if (obj instanceof JSONArray) {
            for (int i = 0; i < length(obj); i++) {
                arrayList.add(String.valueOf(i));
            }
        }
        if (obj instanceof JSONObject) {
            Iterator itKeys = ((JSONObject) obj).keys();
            while (itKeys.hasNext()) {
                arrayList.add(String.valueOf(itKeys.next()));
            }
        }
        return arrayList;
    }

    @Override // com.jayway.jsonpath.spi.json.AbstractJsonProvider, com.jayway.jsonpath.spi.json.JsonProvider
    public boolean isArray(Object obj) {
        return obj instanceof JSONArray;
    }

    @Override // com.jayway.jsonpath.spi.json.AbstractJsonProvider, com.jayway.jsonpath.spi.json.JsonProvider
    public boolean isMap(Object obj) {
        return obj instanceof JSONObject;
    }

    @Override // com.jayway.jsonpath.spi.json.AbstractJsonProvider, com.jayway.jsonpath.spi.json.JsonProvider
    public int length(Object obj) {
        if (obj instanceof JSONArray) {
            return ((JSONArray) obj).length();
        }
        if (obj instanceof JSONObject) {
            return ((JSONObject) obj).length();
        }
        if (obj instanceof String) {
            return ((String) obj).length();
        }
        return 0;
    }

    @Override // com.jayway.jsonpath.spi.json.AbstractJsonProvider, com.jayway.jsonpath.spi.json.JsonProvider
    public void removeProperty(Object obj, Object obj2) {
        try {
            if (obj instanceof JSONArray) {
                int iIntValue = obj2 instanceof Integer ? ((Integer) obj2).intValue() : Integer.parseInt(obj2.toString());
                if (iIntValue < length(obj)) {
                    Object obj3 = new Object();
                    ((JSONArray) obj).put(iIntValue, obj3);
                    ((JSONArray) obj).remove(obj3);
                }
            }
            if (obj instanceof JSONObject) {
                ((JSONObject) obj).remove(String.valueOf(obj2));
            }
        } catch (JSONException e) {
            throw new IllegalStateException((Throwable) e);
        }
    }

    @Override // com.jayway.jsonpath.spi.json.AbstractJsonProvider, com.jayway.jsonpath.spi.json.JsonProvider
    public void setArrayIndex(Object obj, int i, Object obj2) {
        if (!isArray(obj)) {
            throw new UnsupportedOperationException();
        }
        try {
            ((JSONArray) obj).put(i, jettisonWrap(obj2));
        } catch (JSONException e) {
            throw new IllegalArgumentException((Throwable) e);
        }
    }

    @Override // com.jayway.jsonpath.spi.json.AbstractJsonProvider, com.jayway.jsonpath.spi.json.JsonProvider
    public void setProperty(Object obj, Object obj2, Object obj3) {
        try {
            if (obj instanceof JSONArray) {
                ((JSONArray) obj).put(obj2 instanceof Integer ? ((Integer) obj2).intValue() : Integer.parseInt(obj2.toString()), jettisonWrap(obj3));
            }
            if (obj instanceof JSONObject) {
                ((JSONObject) obj).put(String.valueOf(obj2), jettisonWrap(obj3));
            }
        } catch (JSONException e) {
            throw new IllegalStateException((Throwable) e);
        }
    }

    @Override // com.jayway.jsonpath.spi.json.AbstractJsonProvider, com.jayway.jsonpath.spi.json.JsonProvider
    public Iterable<?> toIterable(final Object obj) {
        return new Iterable<Object>() { // from class: com.jayway.jsonpath.spi.json.JettisonProvider.1
            @Override // java.lang.Iterable
            public Iterator<Object> iterator() {
                Object obj2 = obj;
                return obj2 instanceof JSONArray ? new JettisonArrayIterator((JSONArray) obj2) : obj2 instanceof JSONObject ? new JettisonObjectIterator((JSONObject) obj2) : Collections.emptyList().iterator();
            }
        };
    }

    @Override // com.jayway.jsonpath.spi.json.JsonProvider
    public String toJson(Object obj) {
        try {
            return obj instanceof JSONArray ? ((JSONArray) obj).toString(2) : obj instanceof JSONObject ? ((JSONObject) obj).toString(2) : String.valueOf(obj);
        } catch (JSONException e) {
            throw new IllegalStateException((Throwable) e);
        }
    }

    @Override // com.jayway.jsonpath.spi.json.AbstractJsonProvider, com.jayway.jsonpath.spi.json.JsonProvider
    public Object unwrap(Object obj) {
        return jettisonUnwrap(obj);
    }

    public static class JettisonArray extends JSONArray implements Iterable<Object> {
        private static final long serialVersionUID = 2;

        @Override // java.lang.Iterable
        public Iterator<Object> iterator() {
            return new JettisonArrayIterator(this);
        }

        private JettisonArray(JettisonTokener jettisonTokener) throws JSONException {
            super(jettisonTokener);
        }

        private JettisonArray() {
        }
    }

    public static class JettisonObject extends JSONObject implements Iterable<Object> {
        private static final long serialVersionUID = 1;

        @Override // java.lang.Iterable
        public Iterator<Object> iterator() {
            return new JettisonObjectIterator(this);
        }

        private JettisonObject(JettisonTokener jettisonTokener) throws JSONException {
            super(jettisonTokener);
        }

        private JettisonObject() {
        }
    }

    @Override // com.jayway.jsonpath.spi.json.JsonProvider
    public Iterable<?> createArray() {
        return new JettisonArray();
    }

    @Override // com.jayway.jsonpath.spi.json.JsonProvider
    public Object parse(String str) throws InvalidJsonException {
        return parse(new JettisonTokener(str));
    }

    @Override // com.jayway.jsonpath.spi.json.JsonProvider
    public Object parse(InputStream inputStream, String str) throws IOException, InvalidJsonException {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[1024];
            while (true) {
                int i = inputStream.read(bArr);
                if (i > 0) {
                    byteArrayOutputStream.write(bArr, 0, i);
                } else {
                    return parse(new JettisonTokener(new String(byteArrayOutputStream.toByteArray(), str)));
                }
            }
        } catch (IOException e) {
            throw new InvalidJsonException(e);
        }
    }
}
