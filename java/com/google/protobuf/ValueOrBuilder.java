package com.google.protobuf;

import com.google.protobuf.b2;

/* loaded from: classes2.dex */
public interface ValueOrBuilder extends MessageOrBuilder {
    boolean getBoolValue();

    b2.Cnew getKindCase();

    u getListValue();

    ListValueOrBuilder getListValueOrBuilder();

    m0 getNullValue();

    int getNullValueValue();

    double getNumberValue();

    String getStringValue();

    ByteString getStringValueBytes();

    f1 getStructValue();

    StructOrBuilder getStructValueOrBuilder();

    boolean hasListValue();

    boolean hasStructValue();
}
