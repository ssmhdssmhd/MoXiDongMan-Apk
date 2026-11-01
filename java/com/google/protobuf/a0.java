package com.google.protobuf;

import com.google.protobuf.y;
import java.util.Map;

/* loaded from: classes2.dex */
class a0 implements MapFieldSchema {
    /* renamed from: do, reason: not valid java name */
    private static <K, V> int m19682do(int i, Object obj, Object obj2) {
        int iR = 0;
        if (obj == null) {
            return 0;
        }
        Map<K, V> mapM19654this = ((MapField) obj).m19654this();
        x xVar = (x) obj2;
        if (mapM19654this.isEmpty()) {
            return 0;
        }
        for (Map.Entry<K, V> entry : mapM19654this.entrySet()) {
            iR += Cnative.r(i) + Cnative.m20886implements(y.m21590if(xVar.m21555else(), entry.getKey(), entry.getValue()));
        }
        return iR;
    }

    /* renamed from: if, reason: not valid java name */
    private static <K, V> Object m19683if(Object obj, Object obj2) {
        MapField mapField = (MapField) obj;
        MapField<K, V> mapField2 = (MapField) obj2;
        if (!mapField.m19649const()) {
            mapField.m19646case();
        }
        mapField.m19653super(mapField2);
        return mapField;
    }

    @Override // com.google.protobuf.MapFieldSchema
    public Map<?, ?> forMapData(Object obj) {
        return ((MapField) obj).m19654this();
    }

    @Override // com.google.protobuf.MapFieldSchema
    public y.Cif<?, ?> forMapMetadata(Object obj) {
        return ((x) obj).m21555else();
    }

    @Override // com.google.protobuf.MapFieldSchema
    public Map<?, ?> forMutableMapData(Object obj) {
        return ((MapField) obj).m19648class();
    }

    @Override // com.google.protobuf.MapFieldSchema
    public int getSerializedSize(int i, Object obj, Object obj2) {
        return m19682do(i, obj, obj2);
    }

    @Override // com.google.protobuf.MapFieldSchema
    public boolean isImmutable(Object obj) {
        return !((MapField) obj).m19649const();
    }

    @Override // com.google.protobuf.MapFieldSchema
    public Object mergeFrom(Object obj, Object obj2) {
        return m19683if(obj, obj2);
    }

    @Override // com.google.protobuf.MapFieldSchema
    public Object newMapField(Object obj) {
        return MapField.m19643throw((x) obj);
    }

    @Override // com.google.protobuf.MapFieldSchema
    public Object toImmutable(Object obj) {
        ((MapField) obj).m19651final();
        return obj;
    }
}
