package com.jayway.jsonpath.spi.json;

import android.support.v4.ic1;
import com.jayway.jsonpath.InvalidJsonException;
import com.jayway.jsonpath.JsonPathException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;
import net.minidev.json.Cfor;
import net.minidev.json.Cif;
import net.minidev.json.Cnew;
import net.minidev.json.parser.Cdo;
import net.minidev.json.writer.Ccase;

/* loaded from: classes2.dex */
public class JsonSmartJsonProvider extends AbstractJsonProvider {
    private final Ccase<?> mapper;
    private final int parseMode;

    public JsonSmartJsonProvider() {
        this(-1, Cnew.f28214for.f28354for);
    }

    private Cdo createParser() {
        return new Cdo(this.parseMode);
    }

    @Override // com.jayway.jsonpath.spi.json.JsonProvider
    public Object createArray() {
        return this.mapper.createArray();
    }

    @Override // com.jayway.jsonpath.spi.json.JsonProvider
    public Object createMap() {
        return this.mapper.createObject();
    }

    @Override // com.jayway.jsonpath.spi.json.JsonProvider
    public Object parse(String str) {
        try {
            return createParser().m31646const(str, this.mapper);
        } catch (ic1 e) {
            throw new InvalidJsonException(e);
        }
    }

    @Override // com.jayway.jsonpath.spi.json.JsonProvider
    public String toJson(Object obj) {
        if (obj instanceof Map) {
            return Cif.toJSONString((Map) obj, Cfor.f28204super);
        }
        if (obj instanceof List) {
            return net.minidev.json.Cdo.toJSONString((List) obj, Cfor.f28204super);
        }
        throw new UnsupportedOperationException(obj.getClass().getName() + " can not be converted to JSON");
    }

    public JsonSmartJsonProvider(int i) {
        this(i, Cnew.f28214for.f28354for);
    }

    public JsonSmartJsonProvider(int i, Ccase<?> ccase) {
        this.parseMode = i;
        this.mapper = ccase;
    }

    @Override // com.jayway.jsonpath.spi.json.JsonProvider
    public Object parse(InputStream inputStream, String str) throws InvalidJsonException {
        try {
            return createParser().m31642break(new InputStreamReader(inputStream, str), this.mapper);
        } catch (ic1 e) {
            throw new InvalidJsonException(e);
        } catch (UnsupportedEncodingException e2) {
            throw new JsonPathException(e2);
        }
    }
}
