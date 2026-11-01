package com.google.protobuf;

import com.google.protobuf.y;
import java.util.Map;

/* loaded from: classes2.dex */
interface MapFieldSchema {
    Map<?, ?> forMapData(Object obj);

    y.Cif<?, ?> forMapMetadata(Object obj);

    Map<?, ?> forMutableMapData(Object obj);

    int getSerializedSize(int i, Object obj, Object obj2);

    boolean isImmutable(Object obj);

    Object mergeFrom(Object obj, Object obj2);

    Object newMapField(Object obj);

    Object toImmutable(Object obj);
}
