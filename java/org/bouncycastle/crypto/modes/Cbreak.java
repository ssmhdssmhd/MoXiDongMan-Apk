package org.bouncycastle.crypto.modes;

import android.support.v4.bc1;
import android.support.v4.cc1;
import android.support.v4.dc1;
import android.support.v4.gr0;
import android.support.v4.t3;
import android.support.v4.tw;
import androidx.exifinterface.media.ExifInterface;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Ctry;

/* renamed from: org.bouncycastle.crypto.modes.break, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cbreak extends Ctry {

    /* renamed from: case, reason: not valid java name */
    private static final byte[] f29984case = {105, 0, 114, 34, 100, -55, 4, 35, -115, 58, -37, -106, 70, -23, ExifInterface.START_CODE, -60, t3.f6397package, -2, -84, -108, 0, -19, 7, 18, -64, -122, -36, -62, -17, 76, -87, 43};

    /* renamed from: for, reason: not valid java name */
    private gr0 f29985for;

    /* renamed from: if, reason: not valid java name */
    private final Cfor f29986if;

    /* renamed from: new, reason: not valid java name */
    private long f29987new;

    /* renamed from: try, reason: not valid java name */
    private boolean f29988try;

    public Cbreak(BlockCipher blockCipher) {
        super(blockCipher);
        this.f29987new = 0L;
        this.f29986if = new Cfor(blockCipher, blockCipher.getBlockSize() * 8);
    }

    @Override // org.bouncycastle.crypto.Ctry
    /* renamed from: do, reason: not valid java name */
    public byte mo33707do(byte b) throws IllegalStateException, tw, IllegalArgumentException {
        long j = this.f29987new;
        if (j > 0 && j % 1024 == 0) {
            BlockCipher blockCipherM34452if = this.f29986if.m34452if();
            blockCipherM34452if.init(false, this.f29985for);
            byte[] bArr = new byte[32];
            byte[] bArr2 = f29984case;
            blockCipherM34452if.processBlock(bArr2, 0, bArr, 0);
            blockCipherM34452if.processBlock(bArr2, 8, bArr, 8);
            blockCipherM34452if.processBlock(bArr2, 16, bArr, 16);
            blockCipherM34452if.processBlock(bArr2, 24, bArr, 24);
            gr0 gr0Var = new gr0(bArr);
            this.f29985for = gr0Var;
            blockCipherM34452if.init(true, gr0Var);
            byte[] bArrM33746else = this.f29986if.m33746else();
            blockCipherM34452if.processBlock(bArrM33746else, 0, bArrM33746else, 0);
            this.f29986if.init(this.f29988try, new bc1(this.f29985for, bArrM33746else));
        }
        this.f29987new++;
        return this.f29986if.mo33707do(b);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        String algorithmName = this.f29986if.getAlgorithmName();
        return algorithmName.substring(0, algorithmName.indexOf(47)) + "/G" + algorithmName.substring(algorithmName.indexOf(47) + 1);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return this.f29986if.getBlockSize();
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        this.f29987new = 0L;
        this.f29986if.init(z, cipherParameters);
        this.f29988try = z;
        if (cipherParameters instanceof bc1) {
            cipherParameters = ((bc1) cipherParameters).m515if();
        }
        if (cipherParameters instanceof cc1) {
            cipherParameters = ((cc1) cipherParameters).m846do();
        }
        if (cipherParameters instanceof dc1) {
            cipherParameters = ((dc1) cipherParameters).m1262do();
        }
        this.f29985for = (gr0) cipherParameters;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) throws IllegalStateException, tw {
        processBytes(bArr, i, this.f29986if.getBlockSize(), bArr2, i2);
        return this.f29986if.getBlockSize();
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
        this.f29987new = 0L;
        this.f29986if.reset();
    }
}
