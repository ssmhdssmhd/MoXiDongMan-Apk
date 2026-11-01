package android.support.v4;

import java.security.spec.EncodedKeySpec;

/* loaded from: classes3.dex */
public class t71 extends EncodedKeySpec {

    /* renamed from: do, reason: not valid java name */
    private final String f6434do;

    public t71(byte[] bArr) {
        String str;
        super(bArr);
        if (bArr[0] == 48) {
            str = "ASN.1";
        } else {
            if (bArr[0] != 111) {
                throw new IllegalArgumentException("unknown byte encoding");
            }
            str = "OpenSSH";
        }
        this.f6434do = str;
    }

    @Override // java.security.spec.EncodedKeySpec
    public String getFormat() {
        return this.f6434do;
    }
}
