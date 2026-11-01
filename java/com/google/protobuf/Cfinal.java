package com.google.protobuf;

import java.nio.ByteBuffer;

/* renamed from: com.google.protobuf.final, reason: invalid class name */
/* loaded from: classes2.dex */
abstract class Cfinal {

    /* renamed from: do, reason: not valid java name */
    private static final Cfinal f16907do = new Cdo();

    /* renamed from: com.google.protobuf.final$do, reason: invalid class name */
    public class Cdo extends Cfinal {
        @Override // com.google.protobuf.Cfinal
        /* renamed from: do */
        public Cfor mo20435do(int i) {
            return Cfor.m20481break(ByteBuffer.allocateDirect(i));
        }

        @Override // com.google.protobuf.Cfinal
        /* renamed from: if */
        public Cfor mo20436if(int i) {
            return Cfor.m20482catch(new byte[i]);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static Cfinal m20434for() {
        return f16907do;
    }

    /* renamed from: do, reason: not valid java name */
    public abstract Cfor mo20435do(int i);

    /* renamed from: if, reason: not valid java name */
    public abstract Cfor mo20436if(int i);
}
