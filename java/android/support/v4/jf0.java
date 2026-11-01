package android.support.v4;

import java.lang.reflect.Array;
import java.security.SecureRandom;
import org.bouncycastle.crypto.Cfor;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.pqc.crypto.MessageSigner;
import org.bouncycastle.pqc.crypto.gmss.Cdo;
import org.bouncycastle.pqc.crypto.gmss.GMSSDigestProvider;

/* loaded from: classes3.dex */
public class jf0 implements MessageSigner {

    /* renamed from: break, reason: not valid java name */
    private byte[][][] f3070break;

    /* renamed from: case, reason: not valid java name */
    private Digest f3071case;

    /* renamed from: catch, reason: not valid java name */
    private byte[][] f3072catch;

    /* renamed from: class, reason: not valid java name */
    private Cdo f3073class;

    /* renamed from: const, reason: not valid java name */
    private hf0 f3074const;

    /* renamed from: do, reason: not valid java name */
    private kf0 f3075do = new kf0();

    /* renamed from: else, reason: not valid java name */
    private gg2 f3076else;

    /* renamed from: final, reason: not valid java name */
    public bf0 f3077final;

    /* renamed from: for, reason: not valid java name */
    private Digest f3078for;

    /* renamed from: goto, reason: not valid java name */
    private GMSSDigestProvider f3079goto;

    /* renamed from: if, reason: not valid java name */
    private byte[] f3080if;

    /* renamed from: new, reason: not valid java name */
    private int f3081new;

    /* renamed from: super, reason: not valid java name */
    private SecureRandom f3082super;

    /* renamed from: this, reason: not valid java name */
    private int[] f3083this;

    /* renamed from: try, reason: not valid java name */
    private int f3084try;

    public jf0(GMSSDigestProvider gMSSDigestProvider) {
        this.f3079goto = gMSSDigestProvider;
        Digest digest = gMSSDigestProvider.get();
        this.f3078for = digest;
        this.f3071case = digest;
        this.f3081new = digest.getDigestSize();
        this.f3074const = new hf0(this.f3078for);
    }

    /* renamed from: do, reason: not valid java name */
    private void m3852do() {
        int i;
        this.f3078for.reset();
        ef0 ef0Var = (ef0) this.f3077final;
        if (ef0Var.m1863const()) {
            throw new IllegalStateException("Private key already used");
        }
        if (ef0Var.m1861case(0) >= ef0Var.m1860break(0)) {
            throw new IllegalStateException("No more signatures can be generated");
        }
        Cdo cdoM527if = ef0Var.m527if();
        this.f3073class = cdoM527if;
        this.f3084try = cdoM527if.m35591for();
        byte[] bArr = ef0Var.m1869try()[this.f3084try - 1];
        int i2 = this.f3081new;
        byte[] bArr2 = new byte[i2];
        byte[] bArr3 = new byte[i2];
        System.arraycopy(bArr, 0, bArr3, 0, i2);
        this.f3076else = new gg2(this.f3074const.m3009for(bArr3), this.f3079goto.get(), this.f3073class.m35593new()[this.f3084try - 1]);
        byte[][][] bArrM1866new = ef0Var.m1866new();
        this.f3070break = new byte[this.f3084try][][];
        int i3 = 0;
        while (true) {
            i = this.f3084try;
            if (i3 >= i) {
                break;
            }
            this.f3070break[i3] = (byte[][]) Array.newInstance((Class<?>) byte.class, bArrM1866new[i3].length, this.f3081new);
            for (int i4 = 0; i4 < bArrM1866new[i3].length; i4++) {
                System.arraycopy(bArrM1866new[i3][i4], 0, this.f3070break[i3][i4], 0, this.f3081new);
            }
            i3++;
        }
        this.f3083this = new int[i];
        System.arraycopy(ef0Var.m1864else(), 0, this.f3083this, 0, this.f3084try);
        this.f3072catch = new byte[this.f3084try - 1][];
        for (int i5 = 0; i5 < this.f3084try - 1; i5++) {
            byte[] bArrM1862catch = ef0Var.m1862catch(i5);
            byte[][] bArr4 = this.f3072catch;
            bArr4[i5] = new byte[bArrM1862catch.length];
            System.arraycopy(bArrM1862catch, 0, bArr4[i5], 0, bArrM1862catch.length);
        }
        ef0Var.m1865final();
    }

    /* renamed from: if, reason: not valid java name */
    private void m3853if() {
        this.f3078for.reset();
        gf0 gf0Var = (gf0) this.f3077final;
        this.f3080if = gf0Var.m2656for();
        Cdo cdoM527if = gf0Var.m527if();
        this.f3073class = cdoM527if;
        this.f3084try = cdoM527if.m35591for();
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public byte[] generateSignature(byte[] bArr) {
        byte[] bArr2 = new byte[this.f3081new];
        byte[] bArrM2668new = this.f3076else.m2668new(bArr);
        byte[] bArrM4392for = this.f3075do.m4392for(this.f3070break[this.f3084try - 1]);
        byte[] bArrM4396try = this.f3075do.m4396try(this.f3083this[this.f3084try - 1]);
        int length = bArrM4396try.length + bArrM2668new.length + bArrM4392for.length;
        byte[] bArr3 = new byte[length];
        System.arraycopy(bArrM4396try, 0, bArr3, 0, bArrM4396try.length);
        System.arraycopy(bArrM2668new, 0, bArr3, bArrM4396try.length, bArrM2668new.length);
        System.arraycopy(bArrM4392for, 0, bArr3, bArrM4396try.length + bArrM2668new.length, bArrM4392for.length);
        byte[] bArr4 = new byte[0];
        for (int i = (this.f3084try - 1) - 1; i >= 0; i--) {
            byte[] bArrM4392for2 = this.f3075do.m4392for(this.f3070break[i]);
            byte[] bArrM4396try2 = this.f3075do.m4396try(this.f3083this[i]);
            int length2 = bArr4.length;
            byte[] bArr5 = new byte[length2];
            System.arraycopy(bArr4, 0, bArr5, 0, bArr4.length);
            bArr4 = new byte[bArrM4396try2.length + length2 + this.f3072catch[i].length + bArrM4392for2.length];
            System.arraycopy(bArr5, 0, bArr4, 0, length2);
            System.arraycopy(bArrM4396try2, 0, bArr4, length2, bArrM4396try2.length);
            byte[][] bArr6 = this.f3072catch;
            System.arraycopy(bArr6[i], 0, bArr4, bArrM4396try2.length + length2, bArr6[i].length);
            System.arraycopy(bArrM4392for2, 0, bArr4, length2 + bArrM4396try2.length + this.f3072catch[i].length, bArrM4392for2.length);
        }
        byte[] bArr7 = new byte[bArr4.length + length];
        System.arraycopy(bArr3, 0, bArr7, 0, length);
        System.arraycopy(bArr4, 0, bArr7, length, bArr4.length);
        return bArr7;
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public void init(boolean z, CipherParameters cipherParameters) {
        if (!z) {
            this.f3077final = (gf0) cipherParameters;
            m3853if();
            return;
        }
        if (cipherParameters instanceof cc1) {
            cc1 cc1Var = (cc1) cipherParameters;
            this.f3082super = cc1Var.m847if();
            this.f3077final = (ef0) cc1Var.m846do();
        } else {
            this.f3082super = Cfor.m33599case();
            this.f3077final = (ef0) cipherParameters;
        }
        m3852do();
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public boolean verifySignature(byte[] bArr, byte[] bArr2) {
        this.f3071case.reset();
        int i = 0;
        for (int i2 = this.f3084try - 1; i2 >= 0; i2--) {
            fg2 fg2Var = new fg2(this.f3079goto.get(), this.f3073class.m35593new()[i2]);
            int iM2279for = fg2Var.m2279for();
            int iM4394if = this.f3075do.m4394if(bArr2, i);
            int i3 = i + 4;
            byte[] bArr3 = new byte[iM2279for];
            System.arraycopy(bArr2, i3, bArr3, 0, iM2279for);
            i = i3 + iM2279for;
            bArr = fg2Var.m2278do(bArr, bArr3);
            if (bArr == null) {
                System.err.println("OTS Public Key is null in GMSSSignature.verify");
                return false;
            }
            byte[][] bArr4 = (byte[][]) Array.newInstance((Class<?>) byte.class, this.f3073class.m35590do()[i2], this.f3081new);
            for (byte[] bArr5 : bArr4) {
                System.arraycopy(bArr2, i, bArr5, 0, this.f3081new);
                i += this.f3081new;
            }
            byte[] bArr6 = new byte[this.f3081new];
            int length = (1 << bArr4.length) + iM4394if;
            for (int i4 = 0; i4 < bArr4.length; i4++) {
                int i5 = this.f3081new;
                int i6 = i5 << 1;
                byte[] bArr7 = new byte[i6];
                if (length % 2 == 0) {
                    System.arraycopy(bArr, 0, bArr7, 0, i5);
                    byte[] bArr8 = bArr4[i4];
                    int i7 = this.f3081new;
                    System.arraycopy(bArr8, 0, bArr7, i7, i7);
                    length /= 2;
                } else {
                    System.arraycopy(bArr4[i4], 0, bArr7, 0, i5);
                    System.arraycopy(bArr, 0, bArr7, this.f3081new, bArr.length);
                    length = (length - 1) / 2;
                }
                this.f3078for.update(bArr7, 0, i6);
                bArr = new byte[this.f3078for.getDigestSize()];
                this.f3078for.doFinal(bArr, 0);
            }
        }
        return q3.m6362case(this.f3080if, bArr);
    }
}
