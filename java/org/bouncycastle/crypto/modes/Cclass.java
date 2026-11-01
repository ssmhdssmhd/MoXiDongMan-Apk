package org.bouncycastle.crypto.modes;

import android.support.v4.bc1;
import android.support.v4.t3;
import android.support.v4.tw;
import androidx.recyclerview.widget.ItemTouchHelper;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Ctry;

/* renamed from: org.bouncycastle.crypto.modes.class, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cclass extends Ctry {

    /* renamed from: catch, reason: not valid java name */
    public static final int f30021catch = 16843012;

    /* renamed from: class, reason: not valid java name */
    public static final int f30022class = 16843009;

    /* renamed from: break, reason: not valid java name */
    public int f30023break;

    /* renamed from: case, reason: not valid java name */
    private final int f30024case;

    /* renamed from: else, reason: not valid java name */
    private final BlockCipher f30025else;

    /* renamed from: for, reason: not valid java name */
    private byte[] f30026for;

    /* renamed from: goto, reason: not valid java name */
    public boolean f30027goto;

    /* renamed from: if, reason: not valid java name */
    private byte[] f30028if;

    /* renamed from: new, reason: not valid java name */
    private byte[] f30029new;

    /* renamed from: this, reason: not valid java name */
    public int f30030this;

    /* renamed from: try, reason: not valid java name */
    private int f30031try;

    public Cclass(BlockCipher blockCipher) {
        super(blockCipher);
        this.f30027goto = true;
        this.f30025else = blockCipher;
        int blockSize = blockCipher.getBlockSize();
        this.f30024case = blockSize;
        if (blockSize != 8) {
            throw new IllegalArgumentException("GCTR only for 64 bit block ciphers");
        }
        this.f30028if = new byte[blockCipher.getBlockSize()];
        this.f30026for = new byte[blockCipher.getBlockSize()];
        this.f30029new = new byte[blockCipher.getBlockSize()];
    }

    /* renamed from: for, reason: not valid java name */
    private int m33723for(byte[] bArr, int i) {
        return ((bArr[i + 3] << t3.f6397package) & (-16777216)) + ((bArr[i + 2] << 16) & ItemTouchHelper.ACTION_MODE_DRAG_MASK) + ((bArr[i + 1] << 8) & 65280) + (bArr[i] & 255);
    }

    /* renamed from: new, reason: not valid java name */
    private void m33724new(int i, byte[] bArr, int i2) {
        bArr[i2 + 3] = (byte) (i >>> 24);
        bArr[i2 + 2] = (byte) (i >>> 16);
        bArr[i2 + 1] = (byte) (i >>> 8);
        bArr[i2] = (byte) i;
    }

    @Override // org.bouncycastle.crypto.Ctry
    /* renamed from: do */
    public byte mo33707do(byte b) throws IllegalStateException, tw {
        if (this.f30031try == 0) {
            if (this.f30027goto) {
                this.f30027goto = false;
                this.f30025else.processBlock(this.f30026for, 0, this.f30029new, 0);
                this.f30030this = m33723for(this.f30029new, 0);
                this.f30023break = m33723for(this.f30029new, 4);
            }
            int i = this.f30030this + 16843009;
            this.f30030this = i;
            int i2 = this.f30023break + 16843012;
            this.f30023break = i2;
            if (i2 < 16843012 && i2 > 0) {
                this.f30023break = i2 + 1;
            }
            m33724new(i, this.f30026for, 0);
            m33724new(this.f30023break, this.f30026for, 4);
            this.f30025else.processBlock(this.f30026for, 0, this.f30029new, 0);
        }
        byte[] bArr = this.f30029new;
        int i3 = this.f30031try;
        int i4 = i3 + 1;
        this.f30031try = i4;
        byte b2 = (byte) (b ^ bArr[i3]);
        int i5 = this.f30024case;
        if (i4 == i5) {
            this.f30031try = 0;
            byte[] bArr2 = this.f30026for;
            System.arraycopy(bArr2, i5, bArr2, 0, bArr2.length - i5);
            byte[] bArr3 = this.f30029new;
            byte[] bArr4 = this.f30026for;
            int length = bArr4.length;
            int i6 = this.f30024case;
            System.arraycopy(bArr3, 0, bArr4, length - i6, i6);
        }
        return b2;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return this.f30025else.getAlgorithmName() + "/GCTR";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return this.f30024case;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        BlockCipher blockCipher;
        this.f30027goto = true;
        this.f30030this = 0;
        this.f30023break = 0;
        if (cipherParameters instanceof bc1) {
            bc1 bc1Var = (bc1) cipherParameters;
            byte[] bArrM514do = bc1Var.m514do();
            int length = bArrM514do.length;
            byte[] bArr = this.f30028if;
            if (length < bArr.length) {
                System.arraycopy(bArrM514do, 0, bArr, bArr.length - bArrM514do.length, bArrM514do.length);
                int i = 0;
                while (true) {
                    byte[] bArr2 = this.f30028if;
                    if (i >= bArr2.length - bArrM514do.length) {
                        break;
                    }
                    bArr2[i] = 0;
                    i++;
                }
            } else {
                System.arraycopy(bArrM514do, 0, bArr, 0, bArr.length);
            }
            reset();
            if (bc1Var.m515if() == null) {
                return;
            }
            blockCipher = this.f30025else;
            cipherParameters = bc1Var.m515if();
        } else {
            reset();
            if (cipherParameters == null) {
                return;
            } else {
                blockCipher = this.f30025else;
            }
        }
        blockCipher.init(true, cipherParameters);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) throws IllegalStateException, tw {
        processBytes(bArr, i, this.f30024case, bArr2, i2);
        return this.f30024case;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
        this.f30027goto = true;
        this.f30030this = 0;
        this.f30023break = 0;
        byte[] bArr = this.f30028if;
        System.arraycopy(bArr, 0, this.f30026for, 0, bArr.length);
        this.f30031try = 0;
        this.f30025else.reset();
    }
}
