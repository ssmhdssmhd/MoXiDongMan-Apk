package com.umeng.analytics.pro;

/* loaded from: classes2.dex */
public final class bq {
    public final String a;
    public final byte b;
    public final int c;

    public bq() {
        this("", (byte) 0, 0);
    }

    public boolean a(bq bqVar) {
        return this.a.equals(bqVar.a) && this.b == bqVar.b && this.c == bqVar.c;
    }

    public boolean equals(Object obj) {
        if (obj instanceof bq) {
            return a((bq) obj);
        }
        return false;
    }

    public String toString() {
        return "<TMessage name:'" + this.a + "' type: " + ((int) this.b) + " seqid:" + this.c + ">";
    }

    public bq(String str, byte b, int i) {
        this.a = str;
        this.b = b;
        this.c = i;
    }
}
