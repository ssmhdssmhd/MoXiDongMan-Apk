package android.support.v4;

import java.security.spec.KeySpec;

/* loaded from: classes3.dex */
public class b42 implements KeySpec {

    /* renamed from: case, reason: not valid java name */
    public static final String f335case = "key expansion";

    /* renamed from: try, reason: not valid java name */
    public static final String f336try = "master secret";

    /* renamed from: do, reason: not valid java name */
    private final byte[] f337do;

    /* renamed from: for, reason: not valid java name */
    private final int f338for;

    /* renamed from: if, reason: not valid java name */
    private final String f339if;

    /* renamed from: new, reason: not valid java name */
    private final byte[] f340new;

    public b42(byte[] bArr, String str, int i, byte[]... bArr2) {
        this.f337do = q3.m6371final(bArr);
        this.f339if = str;
        this.f338for = i;
        this.f340new = q3.m6382package(bArr2);
    }

    /* renamed from: do, reason: not valid java name */
    public String m439do() {
        return this.f339if;
    }

    /* renamed from: for, reason: not valid java name */
    public byte[] m440for() {
        return q3.m6371final(this.f337do);
    }

    /* renamed from: if, reason: not valid java name */
    public int m441if() {
        return this.f338for;
    }

    /* renamed from: new, reason: not valid java name */
    public byte[] m442new() {
        return q3.m6371final(this.f340new);
    }
}
