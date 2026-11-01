package com.google.protobuf;

import com.google.protobuf.Descriptors;
import com.google.protobuf.Internal;

/* loaded from: classes2.dex */
public enum i1 implements ProtocolMessageEnum {
    SYNTAX_PROTO2(0),
    SYNTAX_PROTO3(1),
    UNRECOGNIZED(-1);

    public static final int SYNTAX_PROTO2_VALUE = 0;
    public static final int SYNTAX_PROTO3_VALUE = 1;
    private final int value;

    /* renamed from: do, reason: not valid java name */
    private static final Internal.EnumLiteMap<i1> f16977do = new Internal.EnumLiteMap<i1>() { // from class: com.google.protobuf.i1.do
        @Override // com.google.protobuf.Internal.EnumLiteMap
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public i1 findValueByNumber(int i) {
            return i1.forNumber(i);
        }
    };

    /* renamed from: if, reason: not valid java name */
    private static final i1[] f16979if = values();

    i1(int i) {
        this.value = i;
    }

    public static i1 forNumber(int i) {
        if (i == 0) {
            return SYNTAX_PROTO2;
        }
        if (i != 1) {
            return null;
        }
        return SYNTAX_PROTO3;
    }

    public static final Descriptors.Ctry getDescriptor() {
        return o1.m20938do().m19242super().get(0);
    }

    public static Internal.EnumLiteMap<i1> internalGetValueMap() {
        return f16977do;
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
    public static i1 valueOf(int i) {
        return forNumber(i);
    }

    public static i1 valueOf(Descriptors.Ccase ccase) {
        if (ccase.m19264goto() == getDescriptor()) {
            if (ccase.m19262case() == -1) {
                return UNRECOGNIZED;
            }
            return f16979if[ccase.m19262case()];
        }
        throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    }
}
