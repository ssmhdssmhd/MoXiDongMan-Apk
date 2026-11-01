package android.support.v4;

import java.security.spec.KeySpec;

/* loaded from: classes3.dex */
public class ns1 implements KeySpec {

    /* renamed from: case, reason: not valid java name */
    private final int f4319case;

    /* renamed from: do, reason: not valid java name */
    private final char[] f4320do;

    /* renamed from: for, reason: not valid java name */
    private final int f4321for;

    /* renamed from: if, reason: not valid java name */
    private final byte[] f4322if;

    /* renamed from: new, reason: not valid java name */
    private final int f4323new;

    /* renamed from: try, reason: not valid java name */
    private final int f4324try;

    public ns1(char[] cArr, byte[] bArr, int i, int i2, int i3, int i4) {
        this.f4320do = cArr;
        this.f4322if = q3.m6371final(bArr);
        this.f4321for = i;
        this.f4323new = i2;
        this.f4324try = i3;
        this.f4319case = i4;
    }

    /* renamed from: case, reason: not valid java name */
    public byte[] m5364case() {
        return q3.m6371final(this.f4322if);
    }

    /* renamed from: do, reason: not valid java name */
    public int m5365do() {
        return this.f4323new;
    }

    /* renamed from: for, reason: not valid java name */
    public int m5366for() {
        return this.f4319case;
    }

    /* renamed from: if, reason: not valid java name */
    public int m5367if() {
        return this.f4321for;
    }

    /* renamed from: new, reason: not valid java name */
    public int m5368new() {
        return this.f4324try;
    }

    /* renamed from: try, reason: not valid java name */
    public char[] m5369try() {
        return this.f4320do;
    }
}
