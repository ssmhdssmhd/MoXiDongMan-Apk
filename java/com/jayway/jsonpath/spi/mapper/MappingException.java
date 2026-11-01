package com.jayway.jsonpath.spi.mapper;

import com.jayway.jsonpath.JsonPathException;

/* loaded from: classes2.dex */
public class MappingException extends JsonPathException {
    public MappingException(Throwable th) {
        super(th);
    }

    public MappingException(String str) {
        super(str);
    }
}
