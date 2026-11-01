package android.support.v4;

import java.security.spec.EncodedKeySpec;
import org.bouncycastle.util.Cfor;

/* loaded from: classes3.dex */
public class u71 extends EncodedKeySpec {

    /* renamed from: if, reason: not valid java name */
    private static final String[] f6789if = {"ssh-rsa", "ssh-ed25519", "ssh-dss"};

    /* renamed from: do, reason: not valid java name */
    private final String f6790do;

    public u71(byte[] bArr) {
        super(bArr);
        int i = 0;
        int i2 = (((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255)) + 4;
        if (i2 >= bArr.length) {
            throw new IllegalArgumentException("invalid public key blob: type field longer than blob");
        }
        String strM36359if = Cfor.m36359if(q3.m6378instanceof(bArr, 4, i2));
        this.f6790do = strM36359if;
        if (strM36359if.startsWith("ecdsa")) {
            return;
        }
        while (true) {
            String[] strArr = f6789if;
            if (i >= strArr.length) {
                throw new IllegalArgumentException("unrecognised public key type " + this.f6790do);
            }
            if (strArr[i].equals(this.f6790do)) {
                return;
            } else {
                i++;
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public String m8275do() {
        return this.f6790do;
    }

    @Override // java.security.spec.EncodedKeySpec
    public String getFormat() {
        return "OpenSSH";
    }
}
