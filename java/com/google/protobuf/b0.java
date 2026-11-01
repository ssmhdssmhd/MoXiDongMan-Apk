package com.google.protobuf;

import com.google.protobuf.y;
import java.util.Map;

/* loaded from: classes2.dex */
class b0 implements MapFieldSchema {
    /* renamed from: do, reason: not valid java name */
    private static <K, V> int m19801do(int i, Object obj, Object obj2) {
        z zVar = (z) obj;
        y yVar = (y) obj2;
        int iM21594do = 0;
        if (zVar.isEmpty()) {
            return 0;
        }
        for (Map.Entry<K, V> entry : zVar.entrySet()) {
            iM21594do += yVar.m21594do(i, entry.getKey(), entry.getValue());
        }
        return iM21594do;
    }

    /* renamed from: if, reason: not valid java name */
    private static <K, V> z<K, V> m19802if(Object obj, Object obj2) {
        z<K, V> zVarMutableCopy = (z) obj;
        z<K, V> zVar = (z) obj2;
        if (!zVar.isEmpty()) {
            if (!zVarMutableCopy.isMutable()) {
                zVarMutableCopy = zVarMutableCopy.mutableCopy();
            }
            zVarMutableCopy.mergeFrom(zVar);
        }
        return zVarMutableCopy;
    }

    @Override // com.google.protobuf.MapFieldSchema
    public Map<?, ?> forMapData(Object obj) {
        return (z) obj;
    }

    @Override // com.google.protobuf.MapFieldSchema
    public y.Cif<?, ?> forMapMetadata(Object obj) {
        return ((y) obj).m21597new();
    }

    @Override // com.google.protobuf.MapFieldSchema
    public Map<?, ?> forMutableMapData(Object obj) {
        return (z) obj;
    }

    @Override // com.google.protobuf.MapFieldSchema
    public int getSerializedSize(int i, Object obj, Object obj2) {
        return m19801do(i, obj, obj2);
    }

    @Override // com.google.protobuf.MapFieldSchema
    public boolean isImmutable(Object obj) {
        return !((z) obj).isMutable();
    }

    @Override // com.google.protobuf.MapFieldSchema
    public Object mergeFrom(Object obj, Object obj2) {
        return m19802if(obj, obj2);
    }

    @Override // com.google.protobuf.MapFieldSchema
    public Object newMapField(Object obj) {
        return z.emptyMapField().mutableCopy();
    }

    @Override // com.google.protobuf.MapFieldSchema
    public Object toImmutable(Object obj) {
        ((z) obj).makeImmutable();
        return obj;
    }
}
