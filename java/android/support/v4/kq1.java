package android.support.v4;

import java.security.spec.AlgorithmParameterSpec;
import java.util.Objects;

/* loaded from: classes3.dex */
public class kq1 implements AlgorithmParameterSpec {

    /* renamed from: do, reason: not valid java name */
    private byte[] f3455do;

    public kq1(byte[] bArr) {
        Objects.requireNonNull(bArr, "id string cannot be null");
        this.f3455do = q3.m6371final(bArr);
    }

    /* renamed from: do, reason: not valid java name */
    public byte[] m4473do() {
        return q3.m6371final(this.f3455do);
    }
}
