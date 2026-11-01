package com.google.protobuf;

/* loaded from: classes2.dex */
interface MutabilityOracle {
    public static final MutabilityOracle IMMUTABLE = new Cdo();

    /* renamed from: com.google.protobuf.MutabilityOracle$do, reason: invalid class name */
    public class Cdo implements MutabilityOracle {
        @Override // com.google.protobuf.MutabilityOracle
        public void ensureMutable() {
            throw new UnsupportedOperationException();
        }
    }

    void ensureMutable();
}
