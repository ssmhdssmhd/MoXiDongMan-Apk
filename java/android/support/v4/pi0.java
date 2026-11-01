package android.support.v4;

import java.util.Hashtable;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.ExtendedDigest;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.util.Memoable;

/* loaded from: classes3.dex */
public class pi0 implements Mac {

    /* renamed from: break, reason: not valid java name */
    private static Hashtable f4976break = null;

    /* renamed from: goto, reason: not valid java name */
    private static final byte f4977goto = 54;

    /* renamed from: this, reason: not valid java name */
    private static final byte f4978this = 92;

    /* renamed from: case, reason: not valid java name */
    private byte[] f4979case;

    /* renamed from: do, reason: not valid java name */
    private Digest f4980do;

    /* renamed from: else, reason: not valid java name */
    private byte[] f4981else;

    /* renamed from: for, reason: not valid java name */
    private int f4982for;

    /* renamed from: if, reason: not valid java name */
    private int f4983if;

    /* renamed from: new, reason: not valid java name */
    private Memoable f4984new;

    /* renamed from: try, reason: not valid java name */
    private Memoable f4985try;

    static {
        Hashtable hashtable = new Hashtable();
        f4976break = hashtable;
        hashtable.put("GOST3411", hn0.m3072for(32));
        f4976break.put("MD2", hn0.m3072for(16));
        f4976break.put("MD4", hn0.m3072for(64));
        f4976break.put("MD5", hn0.m3072for(64));
        f4976break.put("RIPEMD128", hn0.m3072for(64));
        f4976break.put("RIPEMD160", hn0.m3072for(64));
        f4976break.put(qy0.f5539case, hn0.m3072for(64));
        f4976break.put(qy0.f5542else, hn0.m3072for(64));
        f4976break.put("SHA-256", hn0.m3072for(64));
        f4976break.put(qy0.f5544this, hn0.m3072for(128));
        f4976break.put("SHA-512", hn0.m3072for(128));
        f4976break.put("Tiger", hn0.m3072for(64));
        f4976break.put("Whirlpool", hn0.m3072for(64));
    }

    public pi0(Digest digest) {
        this(digest, m6077do(digest));
    }

    private pi0(Digest digest, int i) {
        this.f4980do = digest;
        int digestSize = digest.getDigestSize();
        this.f4983if = digestSize;
        this.f4982for = i;
        this.f4979case = new byte[i];
        this.f4981else = new byte[i + digestSize];
    }

    /* renamed from: do, reason: not valid java name */
    private static int m6077do(Digest digest) {
        if (digest instanceof ExtendedDigest) {
            return ((ExtendedDigest) digest).getByteLength();
        }
        Integer num = (Integer) f4976break.get(digest.getAlgorithmName());
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalArgumentException("unknown digest passed: " + digest.getAlgorithmName());
    }

    /* renamed from: for, reason: not valid java name */
    private static void m6078for(byte[] bArr, int i, byte b) {
        for (int i2 = 0; i2 < i; i2++) {
            bArr[i2] = (byte) (bArr[i2] ^ b);
        }
    }

    @Override // org.bouncycastle.crypto.Mac
    public int doFinal(byte[] bArr, int i) {
        this.f4980do.doFinal(this.f4981else, this.f4982for);
        Memoable memoable = this.f4985try;
        if (memoable != null) {
            ((Memoable) this.f4980do).reset(memoable);
            Digest digest = this.f4980do;
            digest.update(this.f4981else, this.f4982for, digest.getDigestSize());
        } else {
            Digest digest2 = this.f4980do;
            byte[] bArr2 = this.f4981else;
            digest2.update(bArr2, 0, bArr2.length);
        }
        int iDoFinal = this.f4980do.doFinal(bArr, i);
        int i2 = this.f4982for;
        while (true) {
            byte[] bArr3 = this.f4981else;
            if (i2 >= bArr3.length) {
                break;
            }
            bArr3[i2] = 0;
            i2++;
        }
        Memoable memoable2 = this.f4984new;
        if (memoable2 != null) {
            ((Memoable) this.f4980do).reset(memoable2);
        } else {
            Digest digest3 = this.f4980do;
            byte[] bArr4 = this.f4979case;
            digest3.update(bArr4, 0, bArr4.length);
        }
        return iDoFinal;
    }

    @Override // org.bouncycastle.crypto.Mac
    public String getAlgorithmName() {
        return this.f4980do.getAlgorithmName() + "/HMAC";
    }

    @Override // org.bouncycastle.crypto.Mac
    public int getMacSize() {
        return this.f4983if;
    }

    /* renamed from: if, reason: not valid java name */
    public Digest m6079if() {
        return this.f4980do;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void init(CipherParameters cipherParameters) {
        byte[] bArr;
        this.f4980do.reset();
        byte[] bArrM2770do = ((gr0) cipherParameters).m2770do();
        int length = bArrM2770do.length;
        if (length > this.f4982for) {
            this.f4980do.update(bArrM2770do, 0, length);
            this.f4980do.doFinal(this.f4979case, 0);
            length = this.f4983if;
        } else {
            System.arraycopy(bArrM2770do, 0, this.f4979case, 0, length);
        }
        while (true) {
            bArr = this.f4979case;
            if (length >= bArr.length) {
                break;
            }
            bArr[length] = 0;
            length++;
        }
        System.arraycopy(bArr, 0, this.f4981else, 0, this.f4982for);
        m6078for(this.f4979case, this.f4982for, f4977goto);
        m6078for(this.f4981else, this.f4982for, f4978this);
        Digest digest = this.f4980do;
        if (digest instanceof Memoable) {
            Memoable memoableCopy = ((Memoable) digest).copy();
            this.f4985try = memoableCopy;
            ((Digest) memoableCopy).update(this.f4981else, 0, this.f4982for);
        }
        Digest digest2 = this.f4980do;
        byte[] bArr2 = this.f4979case;
        digest2.update(bArr2, 0, bArr2.length);
        Digest digest3 = this.f4980do;
        if (digest3 instanceof Memoable) {
            this.f4984new = ((Memoable) digest3).copy();
        }
    }

    @Override // org.bouncycastle.crypto.Mac
    public void reset() {
        this.f4980do.reset();
        Digest digest = this.f4980do;
        byte[] bArr = this.f4979case;
        digest.update(bArr, 0, bArr.length);
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte b) {
        this.f4980do.update(b);
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte[] bArr, int i, int i2) {
        this.f4980do.update(bArr, i, i2);
    }
}
