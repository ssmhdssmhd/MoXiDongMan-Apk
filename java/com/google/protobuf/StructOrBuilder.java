package com.google.protobuf;

import java.util.Map;

/* loaded from: classes2.dex */
public interface StructOrBuilder extends MessageOrBuilder {
    boolean containsFields(String str);

    @Deprecated
    Map<String, b2> getFields();

    int getFieldsCount();

    Map<String, b2> getFieldsMap();

    b2 getFieldsOrDefault(String str, b2 b2Var);

    b2 getFieldsOrThrow(String str);
}
