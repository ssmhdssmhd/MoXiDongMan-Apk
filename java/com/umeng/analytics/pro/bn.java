package com.umeng.analytics.pro;

/* loaded from: classes2.dex */
public class bn {
    public final String a;
    public final byte b;
    public final short c;

    public bn() {
        this("", (byte) 0, (short) 0);
    }

    public boolean a(bn bnVar) {
        return this.b == bnVar.b && this.c == bnVar.c;
    }

    public String toString() {
        return "<TField name:'" + this.a + "' type:" + ((int) this.b) + " field-id:" + ((int) this.c) + ">";
    }

    public bn(String str, byte b, short s) {
        this.a = str;
        this.b = b;
        this.c = s;
    }
}
