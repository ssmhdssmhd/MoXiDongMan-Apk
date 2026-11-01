package org.bouncycastle.pqc.crypto.xmss;

import android.support.v4.ib1;

/* renamed from: org.bouncycastle.pqc.crypto.xmss.throw, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cthrow {

    /* renamed from: do, reason: not valid java name */
    private final int f32512do;

    /* renamed from: for, reason: not valid java name */
    private final int f32513for;

    /* renamed from: if, reason: not valid java name */
    private final long f32514if;

    /* renamed from: new, reason: not valid java name */
    private final int f32515new;

    /* renamed from: org.bouncycastle.pqc.crypto.xmss.throw$do, reason: invalid class name */
    public static abstract class Cdo<T extends Cdo> {

        /* renamed from: do, reason: not valid java name */
        private final int f32516do;

        /* renamed from: if, reason: not valid java name */
        private int f32518if = 0;

        /* renamed from: for, reason: not valid java name */
        private long f32517for = 0;

        /* renamed from: new, reason: not valid java name */
        private int f32519new = 0;

        public Cdo(int i) {
            this.f32516do = i;
        }

        /* renamed from: case */
        public abstract T mo35870case();

        /* renamed from: else, reason: not valid java name */
        public T m36051else(int i) {
            this.f32519new = i;
            return (T) mo35870case();
        }

        /* renamed from: goto, reason: not valid java name */
        public T m36052goto(int i) {
            this.f32518if = i;
            return (T) mo35870case();
        }

        /* renamed from: this, reason: not valid java name */
        public T m36053this(long j) {
            this.f32517for = j;
            return (T) mo35870case();
        }

        /* renamed from: try */
        public abstract Cthrow mo35875try();
    }

    public Cthrow(Cdo cdo) {
        this.f32512do = cdo.f32518if;
        this.f32514if = cdo.f32517for;
        this.f32513for = cdo.f32516do;
        this.f32515new = cdo.f32519new;
    }

    /* renamed from: do, reason: not valid java name */
    public final int m36043do() {
        return this.f32515new;
    }

    /* renamed from: for, reason: not valid java name */
    public final long m36044for() {
        return this.f32514if;
    }

    /* renamed from: if, reason: not valid java name */
    public final int m36045if() {
        return this.f32512do;
    }

    /* renamed from: new, reason: not valid java name */
    public final int m36046new() {
        return this.f32513for;
    }

    /* renamed from: try */
    public byte[] mo35866try() {
        byte[] bArr = new byte[32];
        ib1.m3348case(this.f32512do, bArr, 0);
        ib1.m3369static(this.f32514if, bArr, 4);
        ib1.m3348case(this.f32513for, bArr, 12);
        ib1.m3348case(this.f32515new, bArr, 28);
        return bArr;
    }
}
