package android.support.v4;

import org.bouncycastle.crypto.tls.TlsPSKIdentity;
import org.bouncycastle.util.Cfor;

/* loaded from: classes3.dex */
public class i8 implements TlsPSKIdentity {

    /* renamed from: do, reason: not valid java name */
    public byte[] f2644do;

    /* renamed from: if, reason: not valid java name */
    public byte[] f2645if;

    public i8(String str, byte[] bArr) {
        this.f2644do = Cfor.m36352class(str);
        this.f2645if = q3.m6371final(bArr);
    }

    public i8(byte[] bArr, byte[] bArr2) {
        this.f2644do = q3.m6371final(bArr);
        this.f2645if = q3.m6371final(bArr2);
    }

    @Override // org.bouncycastle.crypto.tls.TlsPSKIdentity
    public byte[] getPSK() {
        return this.f2645if;
    }

    @Override // org.bouncycastle.crypto.tls.TlsPSKIdentity
    public byte[] getPSKIdentity() {
        return this.f2644do;
    }

    @Override // org.bouncycastle.crypto.tls.TlsPSKIdentity
    public void notifyIdentityHint(byte[] bArr) {
    }

    @Override // org.bouncycastle.crypto.tls.TlsPSKIdentity
    public void skipIdentityHint() {
    }
}
