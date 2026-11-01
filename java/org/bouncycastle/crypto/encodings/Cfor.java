package org.bouncycastle.crypto.encodings;

import android.support.v4.a4;
import android.support.v4.cc1;
import android.support.v4.q3;
import android.support.v4.tn0;
import freemarker.core.b2;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.security.SecureRandom;
import org.bouncycastle.crypto.AsymmetricBlockCipher;
import org.bouncycastle.crypto.CipherParameters;

/* renamed from: org.bouncycastle.crypto.encodings.for, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfor implements AsymmetricBlockCipher {

    /* renamed from: break, reason: not valid java name */
    public static final String f29471break = "org.bouncycastle.pkcs1.not_strict";

    /* renamed from: catch, reason: not valid java name */
    private static final int f29472catch = 10;

    /* renamed from: this, reason: not valid java name */
    public static final String f29473this = "org.bouncycastle.pkcs1.strict";

    /* renamed from: case, reason: not valid java name */
    private int f29474case;

    /* renamed from: do, reason: not valid java name */
    private SecureRandom f29475do;

    /* renamed from: else, reason: not valid java name */
    private byte[] f29476else;

    /* renamed from: for, reason: not valid java name */
    private boolean f29477for;

    /* renamed from: goto, reason: not valid java name */
    private byte[] f29478goto;

    /* renamed from: if, reason: not valid java name */
    private AsymmetricBlockCipher f29479if;

    /* renamed from: new, reason: not valid java name */
    private boolean f29480new;

    /* renamed from: try, reason: not valid java name */
    private boolean f29481try;

    /* renamed from: org.bouncycastle.crypto.encodings.for$do, reason: invalid class name */
    public class Cdo implements PrivilegedAction {
        public Cdo() {
        }

        @Override // java.security.PrivilegedAction
        public Object run() {
            return System.getProperty(Cfor.f29473this);
        }
    }

    /* renamed from: org.bouncycastle.crypto.encodings.for$if, reason: invalid class name */
    public class Cif implements PrivilegedAction {
        public Cif() {
        }

        @Override // java.security.PrivilegedAction
        public Object run() {
            return System.getProperty(Cfor.f29471break);
        }
    }

    public Cfor(AsymmetricBlockCipher asymmetricBlockCipher) {
        this.f29474case = -1;
        this.f29476else = null;
        this.f29479if = asymmetricBlockCipher;
        this.f29481try = m33379else();
    }

    public Cfor(AsymmetricBlockCipher asymmetricBlockCipher, int i) {
        this.f29474case = -1;
        this.f29476else = null;
        this.f29479if = asymmetricBlockCipher;
        this.f29481try = m33379else();
        this.f29474case = i;
    }

    public Cfor(AsymmetricBlockCipher asymmetricBlockCipher, byte[] bArr) {
        this.f29474case = -1;
        this.f29476else = null;
        this.f29479if = asymmetricBlockCipher;
        this.f29481try = m33379else();
        this.f29476else = bArr;
        this.f29474case = bArr.length;
    }

    /* renamed from: do, reason: not valid java name */
    private static int m33378do(byte[] bArr, int i) {
        int i2 = 0 | (bArr[0] ^ 2);
        int i3 = i + 1;
        int length = bArr.length - i3;
        for (int i4 = 1; i4 < length; i4++) {
            byte b = bArr[i4];
            int i5 = b | (b >> 1);
            int i6 = i5 | (i5 >> 2);
            i2 |= ((i6 | (i6 >> 4)) & 1) - 1;
        }
        int i7 = bArr[bArr.length - i3] | i2;
        int i8 = i7 | (i7 >> 1);
        int i9 = i8 | (i8 >> 2);
        return (((i9 | (i9 >> 4)) & 1) - 1) ^ (-1);
    }

    /* renamed from: else, reason: not valid java name */
    private boolean m33379else() {
        String str = (String) AccessController.doPrivileged(new Cdo());
        return ((String) AccessController.doPrivileged(new Cif())) != null ? !r1.equals(b2.f23511if) : str == null || str.equals(b2.f23511if);
    }

    /* renamed from: for, reason: not valid java name */
    private byte[] m33380for(byte[] bArr, int i, int i2) throws tn0 {
        if (!this.f29480new) {
            throw new tn0("sorry, this method is only for decryption, not for signing");
        }
        byte[] bArrProcessBlock = this.f29479if.processBlock(bArr, i, i2);
        byte[] bArr2 = this.f29476else;
        if (bArr2 == null) {
            bArr2 = new byte[this.f29474case];
            this.f29475do.nextBytes(bArr2);
        }
        if (this.f29481try & (bArrProcessBlock.length != this.f29479if.getOutputBlockSize())) {
            bArrProcessBlock = this.f29478goto;
        }
        int iM33378do = m33378do(bArrProcessBlock, this.f29474case);
        byte[] bArr3 = new byte[this.f29474case];
        int i3 = 0;
        while (true) {
            int i4 = this.f29474case;
            if (i3 >= i4) {
                q3.c(bArrProcessBlock, (byte) 0);
                return bArr3;
            }
            bArr3[i3] = (byte) ((bArrProcessBlock[(bArrProcessBlock.length - i4) + i3] & (iM33378do ^ (-1))) | (bArr2[i3] & iM33378do));
            i3++;
        }
    }

    /* renamed from: if, reason: not valid java name */
    private byte[] m33381if(byte[] bArr, int i, int i2) throws tn0 {
        if (this.f29474case != -1) {
            return m33380for(bArr, i, i2);
        }
        byte[] bArrProcessBlock = this.f29479if.processBlock(bArr, i, i2);
        boolean z = this.f29481try & (bArrProcessBlock.length != this.f29479if.getOutputBlockSize());
        if (bArrProcessBlock.length < getOutputBlockSize()) {
            bArrProcessBlock = this.f29478goto;
        }
        byte b = bArrProcessBlock[0];
        boolean z2 = !this.f29480new ? b == 1 : b == 2;
        int iM33383try = m33383try(b, bArrProcessBlock) + 1;
        if (z2 || (iM33383try < 10)) {
            q3.c(bArrProcessBlock, (byte) 0);
            throw new tn0("block incorrect");
        }
        if (z) {
            q3.c(bArrProcessBlock, (byte) 0);
            throw new tn0("block incorrect size");
        }
        int length = bArrProcessBlock.length - iM33383try;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArrProcessBlock, iM33383try, bArr2, 0, length);
        return bArr2;
    }

    /* renamed from: new, reason: not valid java name */
    private byte[] m33382new(byte[] bArr, int i, int i2) throws tn0 {
        if (i2 > getInputBlockSize()) {
            throw new IllegalArgumentException("input data too large");
        }
        int inputBlockSize = this.f29479if.getInputBlockSize();
        byte[] bArr2 = new byte[inputBlockSize];
        if (this.f29480new) {
            bArr2[0] = 1;
            for (int i3 = 1; i3 != (inputBlockSize - i2) - 1; i3++) {
                bArr2[i3] = -1;
            }
        } else {
            this.f29475do.nextBytes(bArr2);
            bArr2[0] = 2;
            for (int i4 = 1; i4 != (inputBlockSize - i2) - 1; i4++) {
                while (bArr2[i4] == 0) {
                    bArr2[i4] = (byte) this.f29475do.nextInt();
                }
            }
        }
        int i5 = inputBlockSize - i2;
        bArr2[i5 - 1] = 0;
        System.arraycopy(bArr, i, bArr2, i5, i2);
        return this.f29479if.processBlock(bArr2, 0, inputBlockSize);
    }

    /* renamed from: try, reason: not valid java name */
    private int m33383try(byte b, byte[] bArr) throws tn0 {
        boolean z = false;
        int i = -1;
        for (int i2 = 1; i2 != bArr.length; i2++) {
            byte b2 = bArr[i2];
            if ((b2 == 0) & (i < 0)) {
                i = i2;
            }
            z |= (b2 != -1) & (b == 1) & (i < 0);
        }
        if (z) {
            return -1;
        }
        return i;
    }

    /* renamed from: case, reason: not valid java name */
    public AsymmetricBlockCipher m33384case() {
        return this.f29479if;
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public int getInputBlockSize() {
        int inputBlockSize = this.f29479if.getInputBlockSize();
        return this.f29477for ? inputBlockSize - 10 : inputBlockSize;
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public int getOutputBlockSize() {
        int outputBlockSize = this.f29479if.getOutputBlockSize();
        return this.f29477for ? outputBlockSize : outputBlockSize - 10;
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        a4 a4Var;
        if (cipherParameters instanceof cc1) {
            cc1 cc1Var = (cc1) cipherParameters;
            this.f29475do = cc1Var.m847if();
            a4Var = (a4) cc1Var.m846do();
        } else {
            a4Var = (a4) cipherParameters;
            if (!a4Var.m33do() && z) {
                this.f29475do = org.bouncycastle.crypto.Cfor.m33599case();
            }
        }
        this.f29479if.init(z, cipherParameters);
        this.f29480new = a4Var.m33do();
        this.f29477for = z;
        this.f29478goto = new byte[this.f29479if.getOutputBlockSize()];
        if (this.f29474case > 0 && this.f29476else == null && this.f29475do == null) {
            throw new IllegalArgumentException("encoder requires random");
        }
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public byte[] processBlock(byte[] bArr, int i, int i2) throws tn0 {
        return this.f29477for ? m33382new(bArr, i, i2) : m33381if(bArr, i, i2);
    }
}
