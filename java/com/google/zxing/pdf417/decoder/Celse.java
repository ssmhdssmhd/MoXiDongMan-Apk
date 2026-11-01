package com.google.zxing.pdf417.decoder;

import java.util.Formatter;

/* renamed from: com.google.zxing.pdf417.decoder.else, reason: invalid class name */
/* loaded from: classes2.dex */
class Celse {

    /* renamed from: for, reason: not valid java name */
    private static final int f17793for = 5;

    /* renamed from: do, reason: not valid java name */
    private final Cfor f17794do;

    /* renamed from: if, reason: not valid java name */
    private final Cnew[] f17795if;

    public Celse(Cfor cfor) {
        this.f17794do = new Cfor(cfor);
        this.f17795if = new Cnew[(cfor.m22241try() - cfor.m22235else()) + 1];
    }

    /* renamed from: case, reason: not valid java name */
    public final void m22226case(int i, Cnew cnew) {
        this.f17795if[m22231try(i)] = cnew;
    }

    /* renamed from: do, reason: not valid java name */
    public final Cfor m22227do() {
        return this.f17794do;
    }

    /* renamed from: for, reason: not valid java name */
    public final Cnew m22228for(int i) {
        Cnew cnew;
        Cnew cnew2;
        Cnew cnewM22229if = m22229if(i);
        if (cnewM22229if != null) {
            return cnewM22229if;
        }
        for (int i2 = 1; i2 < 5; i2++) {
            int iM22231try = m22231try(i) - i2;
            if (iM22231try >= 0 && (cnew2 = this.f17795if[iM22231try]) != null) {
                return cnew2;
            }
            int iM22231try2 = m22231try(i) + i2;
            Cnew[] cnewArr = this.f17795if;
            if (iM22231try2 < cnewArr.length && (cnew = cnewArr[iM22231try2]) != null) {
                return cnew;
            }
        }
        return null;
    }

    /* renamed from: if, reason: not valid java name */
    public final Cnew m22229if(int i) {
        return this.f17795if[m22231try(i)];
    }

    /* renamed from: new, reason: not valid java name */
    public final Cnew[] m22230new() {
        return this.f17795if;
    }

    public String toString() {
        Formatter formatter = new Formatter();
        try {
            int i = 0;
            for (Cnew cnew : this.f17795if) {
                if (cnew == null) {
                    formatter.format("%3d:    |   %n", Integer.valueOf(i));
                    i++;
                } else {
                    formatter.format("%3d: %3d|%3d%n", Integer.valueOf(i), Integer.valueOf(cnew.m22256for()), Integer.valueOf(cnew.m22261try()));
                    i++;
                }
            }
            String string = formatter.toString();
            formatter.close();
            return string;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    formatter.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    /* renamed from: try, reason: not valid java name */
    public final int m22231try(int i) {
        return i - this.f17794do.m22235else();
    }
}
