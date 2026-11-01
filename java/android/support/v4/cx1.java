package android.support.v4;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;

/* loaded from: classes3.dex */
public abstract class cx1 implements BlockCipher {

    /* renamed from: else, reason: not valid java name */
    public static final int f884else = 16;

    /* renamed from: goto, reason: not valid java name */
    public static final int f885goto = 32;

    /* renamed from: this, reason: not valid java name */
    public static final int f886this = -1640531527;

    /* renamed from: case, reason: not valid java name */
    public int f887case;

    /* renamed from: do, reason: not valid java name */
    public boolean f888do;

    /* renamed from: for, reason: not valid java name */
    public int f889for;

    /* renamed from: if, reason: not valid java name */
    public int[] f890if;

    /* renamed from: new, reason: not valid java name */
    public int f891new;

    /* renamed from: try, reason: not valid java name */
    public int f892try;

    /* renamed from: final, reason: not valid java name */
    public static int m1064final(int i, int i2) {
        return (i >>> (-i2)) | (i << i2);
    }

    /* renamed from: super, reason: not valid java name */
    public static int m1065super(int i, int i2) {
        return (i << (-i2)) | (i >>> i2);
    }

    /* renamed from: break, reason: not valid java name */
    public final void m1066break(int i, int i2, int i3, int i4) {
        int i5 = i ^ (-1);
        int i6 = i ^ i2;
        int i7 = i3 ^ i6;
        int i8 = (i3 | i5) ^ i4;
        this.f891new = i7 ^ i8;
        int i9 = i6 ^ (i7 & i8);
        int i10 = i8 ^ (i2 | i9);
        this.f887case = i10;
        int i11 = i2 | i10;
        this.f889for = i9 ^ i11;
        this.f892try = (i4 & i5) ^ (i11 ^ i7);
    }

    /* renamed from: case, reason: not valid java name */
    public final void m1067case(int i, int i2, int i3, int i4) {
        int i5 = i2 ^ i4;
        int i6 = i ^ i3;
        int i7 = i3 ^ i5;
        int i8 = (i2 & i7) ^ i6;
        this.f889for = i8;
        int i9 = (((i | (i5 ^ (-1))) ^ i4) | i6) ^ i5;
        this.f887case = i9;
        int i10 = i7 ^ (-1);
        int i11 = i9 | i8;
        this.f891new = i10 ^ i11;
        this.f892try = (i11 ^ i6) ^ (i4 & i10);
    }

    /* renamed from: catch, reason: not valid java name */
    public final void m1068catch(int i, int i2, int i3, int i4) {
        int i5 = (i & i2) | i3;
        int i6 = (i | i2) & i4;
        int i7 = i5 ^ i6;
        this.f887case = i7;
        int i8 = i2 ^ i6;
        int i9 = ((i7 ^ (i4 ^ (-1))) | i8) ^ i;
        this.f891new = i9;
        int i10 = (i8 ^ i3) ^ (i4 | i9);
        this.f889for = i10;
        this.f892try = ((i & i7) ^ i10) ^ (i5 ^ i9);
    }

    /* renamed from: class, reason: not valid java name */
    public final void m1069class() {
        int iM1065super = (m1065super(this.f892try, 22) ^ this.f887case) ^ (this.f891new << 7);
        int iM1065super2 = m1065super(this.f889for, 5) ^ this.f891new;
        int i = this.f887case;
        int i2 = iM1065super2 ^ i;
        int iM1065super3 = m1065super(i, 7);
        int iM1065super4 = m1065super(this.f891new, 1);
        this.f887case = (iM1065super3 ^ iM1065super) ^ (i2 << 3);
        this.f891new = (iM1065super4 ^ i2) ^ iM1065super;
        this.f892try = m1065super(iM1065super, 3);
        this.f889for = m1065super(i2, 13);
    }

    /* renamed from: const, reason: not valid java name */
    public abstract int[] mo1070const(byte[] bArr);

    /* renamed from: do, reason: not valid java name */
    public final void m1071do() {
        int iM1064final = m1064final(this.f889for, 13);
        int iM1064final2 = m1064final(this.f892try, 3);
        int i = (this.f891new ^ iM1064final) ^ iM1064final2;
        int i2 = (this.f887case ^ iM1064final2) ^ (iM1064final << 3);
        this.f891new = m1064final(i, 1);
        int iM1064final3 = m1064final(i2, 7);
        this.f887case = iM1064final3;
        this.f889for = m1064final((iM1064final ^ this.f891new) ^ iM1064final3, 5);
        this.f892try = m1064final((this.f887case ^ iM1064final2) ^ (this.f891new << 7), 22);
    }

    /* renamed from: else, reason: not valid java name */
    public final void m1072else(int i, int i2, int i3, int i4) {
        int i5 = i | i2;
        int i6 = i2 ^ i3;
        int i7 = i ^ (i2 & i6);
        int i8 = i3 ^ i7;
        int i9 = i4 | i7;
        int i10 = i6 ^ i9;
        this.f889for = i10;
        int i11 = (i9 | i6) ^ i4;
        this.f892try = i8 ^ i11;
        int i12 = i5 ^ i11;
        int i13 = i7 ^ (i10 & i12);
        this.f887case = i13;
        this.f891new = i13 ^ (i12 ^ i10);
    }

    /* renamed from: for, reason: not valid java name */
    public abstract void mo1073for(byte[] bArr, int i, byte[] bArr2, int i2);

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "Serpent";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 16;
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m1074goto(int i, int i2, int i3, int i4) {
        int i5 = i2 ^ ((i3 | i4) & i);
        int i6 = i3 ^ (i & i5);
        int i7 = i4 ^ i6;
        this.f891new = i7;
        int i8 = i ^ (-1);
        int i9 = (i6 & i7) ^ i5;
        this.f887case = i9;
        int i10 = i4 ^ (i7 | i8);
        this.f889for = i9 ^ i10;
        this.f892try = (i8 ^ i7) ^ (i5 & i10);
    }

    /* renamed from: if, reason: not valid java name */
    public abstract void mo1075if(byte[] bArr, int i, byte[] bArr2, int i2);

    /* renamed from: import, reason: not valid java name */
    public final void m1076import(int i, int i2, int i3, int i4) {
        int i5 = i ^ (-1);
        int i6 = i2 ^ i4;
        int i7 = (i3 & i5) ^ i6;
        this.f889for = i7;
        int i8 = i3 ^ i5;
        int i9 = i2 & (i3 ^ i7);
        int i10 = i8 ^ i9;
        this.f887case = i10;
        int i11 = i ^ ((i9 | i4) & (i7 | i8));
        this.f892try = i11;
        this.f891new = (i11 ^ (i4 | i5)) ^ (i6 ^ i10);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        if (cipherParameters instanceof gr0) {
            this.f888do = z;
            this.f890if = mo1070const(((gr0) cipherParameters).m2770do());
            return;
        }
        throw new IllegalArgumentException("invalid parameter passed to " + getAlgorithmName() + " init - " + cipherParameters.getClass().getName());
    }

    /* renamed from: native, reason: not valid java name */
    public final void m1077native(int i, int i2, int i3, int i4) {
        int i5 = i ^ i2;
        int i6 = i & i3;
        int i7 = i | i4;
        int i8 = i3 ^ i4;
        int i9 = i6 | (i5 & i7);
        int i10 = i8 ^ i9;
        this.f892try = i10;
        int i11 = (i7 ^ i2) ^ i9;
        int i12 = i5 ^ (i8 & i11);
        this.f889for = i12;
        int i13 = i12 & i10;
        this.f891new = i11 ^ i13;
        this.f887case = (i2 | i4) ^ (i8 ^ i13);
    }

    /* renamed from: new, reason: not valid java name */
    public final void m1078new(int i, int i2, int i3, int i4) {
        int i5 = i ^ (-1);
        int i6 = i2 ^ i;
        int i7 = (i5 | i6) ^ i4;
        int i8 = i3 ^ i7;
        int i9 = i6 ^ i8;
        this.f892try = i9;
        int i10 = (i6 & i4) ^ i5;
        int i11 = (i9 & i10) ^ i7;
        this.f891new = i11;
        int i12 = (i & i7) ^ (i11 | i8);
        this.f887case = i12;
        this.f889for = i12 ^ (i10 ^ i8);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public final int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        if (this.f890if == null) {
            throw new IllegalStateException(getAlgorithmName() + " not initialised");
        }
        if (i + 16 > bArr.length) {
            throw new tw("input buffer too short");
        }
        if (i2 + 16 > bArr2.length) {
            throw new f91("output buffer too short");
        }
        if (this.f888do) {
            mo1073for(bArr, i, bArr2, i2);
            return 16;
        }
        mo1075if(bArr, i, bArr2, i2);
        return 16;
    }

    /* renamed from: public, reason: not valid java name */
    public final void m1079public(int i, int i2, int i3, int i4) {
        int i5 = i ^ i4;
        int i6 = i3 ^ (i4 & i5);
        int i7 = i2 | i6;
        this.f887case = i5 ^ i7;
        int i8 = i2 ^ (-1);
        int i9 = (i5 | i8) ^ i6;
        this.f889for = i9;
        int i10 = i8 ^ i5;
        int i11 = (i7 & i10) ^ (i9 & i);
        this.f892try = i11;
        this.f891new = (i ^ i6) ^ (i10 & i11);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }

    /* renamed from: return, reason: not valid java name */
    public final void m1080return(int i, int i2, int i3, int i4) {
        int i5 = i ^ (-1);
        int i6 = i ^ i2;
        int i7 = i ^ i4;
        int i8 = (i3 ^ i5) ^ (i6 | i7);
        this.f889for = i8;
        int i9 = i4 & i8;
        int i10 = (i6 ^ i8) ^ i9;
        this.f891new = i10;
        int i11 = i7 ^ (i8 | i5);
        this.f892try = (i6 | i9) ^ i11;
        this.f887case = (i11 & i10) ^ (i2 ^ i9);
    }

    /* renamed from: static, reason: not valid java name */
    public final void m1081static(int i, int i2, int i3, int i4) {
        int i5 = i ^ (-1);
        int i6 = i ^ i4;
        int i7 = i2 ^ i6;
        int i8 = i3 ^ (i5 | i6);
        int i9 = i2 ^ i8;
        this.f891new = i9;
        int i10 = (i6 | i9) ^ i4;
        int i11 = (i8 & i10) ^ i7;
        this.f892try = i11;
        int i12 = i10 ^ i8;
        this.f889for = i11 ^ i12;
        this.f887case = (i12 & i7) ^ (i8 ^ (-1));
    }

    /* renamed from: switch, reason: not valid java name */
    public final void m1082switch(int i, int i2, int i3, int i4) {
        int i5 = i2 ^ i3;
        int i6 = (i3 & i5) ^ i4;
        int i7 = i ^ i6;
        int i8 = i2 ^ ((i4 | i5) & i7);
        this.f891new = i8;
        int i9 = (i & i7) ^ i5;
        this.f887case = i9;
        int i10 = (i8 | i6) ^ i7;
        int i11 = i6 ^ (i9 & i10);
        this.f892try = i11;
        this.f889for = (i9 & i11) ^ (i10 ^ (-1));
    }

    /* renamed from: this, reason: not valid java name */
    public final void m1083this(int i, int i2, int i3, int i4) {
        int i5 = i3 ^ (-1);
        int i6 = (i2 & i5) ^ i4;
        int i7 = i & i6;
        int i8 = (i2 ^ i5) ^ i7;
        this.f887case = i8;
        int i9 = i8 | i2;
        this.f891new = i6 ^ (i & i9);
        int i10 = i4 | i;
        this.f889for = (i5 ^ i9) ^ i10;
        this.f892try = ((i ^ i3) | i7) ^ (i2 & i10);
    }

    /* renamed from: throw, reason: not valid java name */
    public final void m1084throw(int i, int i2, int i3, int i4) {
        int i5 = i ^ i4;
        int i6 = i3 ^ i5;
        int i7 = i2 ^ i6;
        int i8 = (i4 & i) ^ i7;
        this.f887case = i8;
        int i9 = i ^ (i2 & i5);
        this.f892try = (i3 | i9) ^ i7;
        int i10 = (i6 ^ i9) & i8;
        this.f891new = (i6 ^ (-1)) ^ i10;
        this.f889for = (i9 ^ (-1)) ^ i10;
    }

    /* renamed from: try, reason: not valid java name */
    public final void m1085try(int i, int i2, int i3, int i4) {
        int i5 = i4 ^ i2;
        int i6 = i ^ (i2 & i5);
        int i7 = i5 ^ i6;
        int i8 = i3 ^ i7;
        this.f887case = i8;
        int i9 = i2 ^ (i5 & i6);
        int i10 = i6 ^ (i8 | i9);
        this.f891new = i10;
        int i11 = i10 ^ (-1);
        int i12 = i9 ^ i8;
        this.f889for = i11 ^ i12;
        this.f892try = (i11 | i12) ^ i7;
    }

    /* renamed from: while, reason: not valid java name */
    public final void m1086while(int i, int i2, int i3, int i4) {
        int i5 = (i ^ (-1)) ^ i2;
        int i6 = (i | i5) ^ i3;
        int i7 = i4 ^ i6;
        this.f892try = i7;
        int i8 = i2 ^ (i4 | i5);
        int i9 = i7 ^ i5;
        int i10 = (i6 & i8) ^ i9;
        this.f887case = i10;
        int i11 = i8 ^ i6;
        this.f891new = i10 ^ i11;
        this.f889for = i6 ^ (i11 & i9);
    }
}
