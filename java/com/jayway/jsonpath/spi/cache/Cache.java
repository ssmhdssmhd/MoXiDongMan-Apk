package com.jayway.jsonpath.spi.cache;

import com.jayway.jsonpath.JsonPath;

/* loaded from: classes2.dex */
public interface Cache {
    JsonPath get(String str);

    void put(String str, JsonPath jsonPath);
}
