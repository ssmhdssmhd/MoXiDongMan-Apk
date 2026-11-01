package com.google.protobuf;

import com.google.protobuf.Descriptors;
import com.google.protobuf.Internal;

/* loaded from: classes2.dex */
public enum m0 implements ProtocolMessageEnum {
    NULL_VALUE(0),
    UNRECOGNIZED(-1);

    public static final int NULL_VALUE_VALUE = 0;
    private final int value;

    /* renamed from: do, reason: not valid java name */
    private static final Internal.EnumLiteMap<m0> f17065do = new Internal.EnumLiteMap<m0>() { // from class: com.google.protobuf.m0.do
        @Override // com.google.protobuf.Internal.EnumLiteMap
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public m0 findValueByNumber(int i) {
            return m0.forNumber(i);
        }
    };

    /* renamed from: if, reason: not valid java name */
    private static final m0[] f17067if = values();

    m0(int i) {
        this.value = i;
    }

    public static m0 forNumber(int i) {
        if (i != 0) {
            return null;
        }
        return NULL_VALUE;
    }

    public static final Descriptors.Ctry getDescriptor() {
        return g1.m20537do().m19242super().get(0);
    }

    public static Internal.EnumLiteMap<m0> internalGetValueMap() {
        return f17065do;
    }

    @Override // com.google.protobuf.ProtocolMessageEnum
    public final Descriptors.Ctry getDescriptorForType() {
        return getDescriptor();
    }

    @Override // com.google.protobuf.ProtocolMessageEnum, com.google.protobuf.Internal.EnumLite
    public final int getNumber() {
        if (this != UNRECOGNIZED) {
            return this.value;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }

    @Override // com.google.protobuf.ProtocolMessageEnum
    public final Descriptors.Ccase getValueDescriptor() {
        if (this != UNRECOGNIZED) {
            return getDescriptor().m19356const().get(ordinal());
        }
        throw new IllegalStateException("Can't get the descriptor of an unrecognized enum value.");
    }

    @Deprecated
    public static m0 valueOf(int i) {
        return forNumber(i);
    }

    public static m0 valueOf(Descriptors.Ccase ccase) {
        if (ccase.m19264goto() == getDescriptor()) {
            if (ccase.m19262case() == -1) {
                return UNRECOGNIZED;
            }
            return f17067if[ccase.m19262case()];
        }
        throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    }
}
