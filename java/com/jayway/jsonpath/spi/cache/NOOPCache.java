package com.jayway.jsonpath.spi.cache;

import com.jayway.jsonpath.JsonPath;

/* loaded from: classes2.dex */
public class NOOPCache implements Cache {
    @Override // com.jayway.jsonpath.spi.cache.Cache
    public JsonPath get(String str) {
        return null;
    }

    @Override // com.jayway.jsonpath.spi.cache.Cache
    public void put(String str, JsonPath jsonPath) {
    }
}
