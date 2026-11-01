package org.chromium.net;

import java.util.Date;
import java.util.Set;
import org.chromium.net.Cfor;

/* renamed from: org.chromium.net.catch, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Ccatch {
    /* renamed from: break */
    public abstract Ccatch mo7241break(boolean z);

    /* renamed from: case */
    public abstract Ccatch mo7242case(int i, long j);

    /* renamed from: catch, reason: not valid java name */
    public abstract String mo37479catch();

    /* renamed from: class */
    public abstract Ccatch mo7243class(String str);

    /* renamed from: const */
    public abstract Ccatch mo7244const(Cfor.Cdo.Cif cif);

    /* renamed from: do */
    public abstract Ccatch mo7245do(String str, Set<byte[]> set, boolean z, Date date);

    /* renamed from: else */
    public Ccatch mo7246else(boolean z) {
        return this;
    }

    /* renamed from: final */
    public abstract Ccatch mo7247final(String str);

    /* renamed from: for */
    public abstract Ccase mo7248for();

    /* renamed from: goto */
    public abstract Ccatch mo7249goto(boolean z);

    /* renamed from: if */
    public abstract Ccatch mo7250if(String str, int i, int i2);

    /* renamed from: new */
    public Ccatch mo7251new(boolean z) {
        return this;
    }

    /* renamed from: super */
    public Ccatch mo7252super(int i) {
        return this;
    }

    /* renamed from: this */
    public abstract Ccatch mo7253this(boolean z);

    /* renamed from: throw */
    public abstract Ccatch mo7254throw(String str);

    /* renamed from: try */
    public abstract Ccatch mo7255try(boolean z);
}
