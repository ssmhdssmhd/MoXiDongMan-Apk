package com.google.protobuf;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
final class h1 implements MessageInfo {

    /* renamed from: do, reason: not valid java name */
    private final p0 f16963do;

    /* renamed from: for, reason: not valid java name */
    private final int[] f16964for;

    /* renamed from: if, reason: not valid java name */
    private final boolean f16965if;

    /* renamed from: new, reason: not valid java name */
    private final d[] f16966new;

    /* renamed from: try, reason: not valid java name */
    private final MessageLite f16967try;

    public h1(p0 p0Var, boolean z, int[] iArr, d[] dVarArr, Object obj) {
        this.f16963do = p0Var;
        this.f16965if = z;
        this.f16964for = iArr;
        this.f16966new = dVarArr;
        this.f16967try = (MessageLite) Internal.m19632try(obj, "defaultInstance");
    }

    /* renamed from: for, reason: not valid java name */
    public static Cdo m20574for() {
        return new Cdo();
    }

    /* renamed from: new, reason: not valid java name */
    public static Cdo m20575new(int i) {
        return new Cdo(i);
    }

    /* renamed from: do, reason: not valid java name */
    public int[] m20576do() {
        return this.f16964for;
    }

    @Override // com.google.protobuf.MessageInfo
    public MessageLite getDefaultInstance() {
        return this.f16967try;
    }

    @Override // com.google.protobuf.MessageInfo
    public p0 getSyntax() {
        return this.f16963do;
    }

    /* renamed from: if, reason: not valid java name */
    public d[] m20577if() {
        return this.f16966new;
    }

    @Override // com.google.protobuf.MessageInfo
    public boolean isMessageSetWireFormat() {
        return this.f16965if;
    }

    /* renamed from: com.google.protobuf.h1$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: case, reason: not valid java name */
        private Object f16968case;

        /* renamed from: do, reason: not valid java name */
        private final List<d> f16969do;

        /* renamed from: for, reason: not valid java name */
        private boolean f16970for;

        /* renamed from: if, reason: not valid java name */
        private p0 f16971if;

        /* renamed from: new, reason: not valid java name */
        private boolean f16972new;

        /* renamed from: try, reason: not valid java name */
        private int[] f16973try;

        public Cdo() {
            this.f16973try = null;
            this.f16969do = new ArrayList();
        }

        /* renamed from: case, reason: not valid java name */
        public void m20578case(p0 p0Var) {
            this.f16971if = (p0) Internal.m19632try(p0Var, "syntax");
        }

        /* renamed from: do, reason: not valid java name */
        public h1 m20579do() {
            if (this.f16970for) {
                throw new IllegalStateException("Builder can only build once");
            }
            if (this.f16971if == null) {
                throw new IllegalStateException("Must specify a proto syntax");
            }
            this.f16970for = true;
            Collections.sort(this.f16969do);
            return new h1(this.f16971if, this.f16972new, this.f16973try, (d[]) this.f16969do.toArray(new d[0]), this.f16968case);
        }

        /* renamed from: for, reason: not valid java name */
        public void m20580for(Object obj) {
            this.f16968case = obj;
        }

        /* renamed from: if, reason: not valid java name */
        public void m20581if(int[] iArr) {
            this.f16973try = iArr;
        }

        /* renamed from: new, reason: not valid java name */
        public void m20582new(d dVar) {
            if (this.f16970for) {
                throw new IllegalStateException("Builder can only build once");
            }
            this.f16969do.add(dVar);
        }

        /* renamed from: try, reason: not valid java name */
        public void m20583try(boolean z) {
            this.f16972new = z;
        }

        public Cdo(int i) {
            this.f16973try = null;
            this.f16969do = new ArrayList(i);
        }
    }
}
