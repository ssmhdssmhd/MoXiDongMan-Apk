package android.support.v4;

import java.security.spec.ECParameterSpec;

/* loaded from: classes3.dex */
public class sv extends ECParameterSpec {

    /* renamed from: do, reason: not valid java name */
    private final byte[] f6310do;

    /* renamed from: if, reason: not valid java name */
    private final e40 f6311if;

    public sv(e40 e40Var) {
        this(e40Var, t30.m7707this(e40Var), uv.m8659try());
    }

    private sv(e40 e40Var, ECParameterSpec eCParameterSpec, byte[] bArr) {
        super(eCParameterSpec.getCurve(), eCParameterSpec.getGenerator(), eCParameterSpec.getOrder(), eCParameterSpec.getCofactor());
        this.f6311if = e40Var;
        this.f6310do = q3.m6371final(bArr);
    }

    /* renamed from: do, reason: not valid java name */
    public byte[] m7611do() {
        return q3.m6371final(this.f6310do);
    }

    public boolean equals(Object obj) {
        if (obj instanceof sv) {
            return this.f6311if.equals(((sv) obj).f6311if);
        }
        return false;
    }

    public int hashCode() {
        return this.f6311if.hashCode();
    }
}
