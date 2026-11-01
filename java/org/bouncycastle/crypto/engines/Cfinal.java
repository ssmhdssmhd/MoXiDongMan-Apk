package org.bouncycastle.crypto.engines;

import android.support.v4.a4;
import android.support.v4.al0;
import android.support.v4.bc1;
import android.support.v4.cl0;
import android.support.v4.d80;
import android.support.v4.e80;
import android.support.v4.gr0;
import android.support.v4.ib1;
import android.support.v4.kq0;
import android.support.v4.q3;
import android.support.v4.tn0;
import android.support.v4.tw;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import org.bouncycastle.crypto.BasicAgreement;
import org.bouncycastle.crypto.Cif;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DerivationFunction;
import org.bouncycastle.crypto.KeyParser;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.util.Cdo;

/* renamed from: org.bouncycastle.crypto.engines.final, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfinal {

    /* renamed from: break, reason: not valid java name */
    public byte[] f29678break;

    /* renamed from: case, reason: not valid java name */
    public boolean f29679case;

    /* renamed from: catch, reason: not valid java name */
    private e80 f29680catch;

    /* renamed from: class, reason: not valid java name */
    private KeyParser f29681class;

    /* renamed from: const, reason: not valid java name */
    private byte[] f29682const;

    /* renamed from: do, reason: not valid java name */
    public BasicAgreement f29683do;

    /* renamed from: else, reason: not valid java name */
    public CipherParameters f29684else;

    /* renamed from: for, reason: not valid java name */
    public Mac f29685for;

    /* renamed from: goto, reason: not valid java name */
    public CipherParameters f29686goto;

    /* renamed from: if, reason: not valid java name */
    public DerivationFunction f29687if;

    /* renamed from: new, reason: not valid java name */
    public Cif f29688new;

    /* renamed from: this, reason: not valid java name */
    public al0 f29689this;

    /* renamed from: try, reason: not valid java name */
    public byte[] f29690try;

    public Cfinal(BasicAgreement basicAgreement, DerivationFunction derivationFunction, Mac mac) {
        this.f29683do = basicAgreement;
        this.f29687if = derivationFunction;
        this.f29685for = mac;
        this.f29690try = new byte[mac.getMacSize()];
        this.f29688new = null;
    }

    public Cfinal(BasicAgreement basicAgreement, DerivationFunction derivationFunction, Mac mac, Cif cif) {
        this.f29683do = basicAgreement;
        this.f29687if = derivationFunction;
        this.f29685for = mac;
        this.f29690try = new byte[mac.getMacSize()];
        this.f29688new = cif;
    }

    /* renamed from: do, reason: not valid java name */
    private byte[] m33494do(byte[] bArr, int i, int i2) throws IllegalStateException, tw, tn0, IllegalArgumentException {
        byte[] bArr2;
        byte[] bArr3;
        int iMo7554goto;
        if (i2 < this.f29678break.length + this.f29685for.getMacSize()) {
            throw new tn0("Length of input must be greater than the MAC and V combined");
        }
        if (this.f29688new == null) {
            int length = (i2 - this.f29678break.length) - this.f29685for.getMacSize();
            byte[] bArr4 = new byte[length];
            int iM267for = this.f29689this.m267for() / 8;
            bArr2 = new byte[iM267for];
            int i3 = length + iM267for;
            byte[] bArr5 = new byte[i3];
            this.f29687if.generateBytes(bArr5, 0, i3);
            if (this.f29678break.length != 0) {
                System.arraycopy(bArr5, 0, bArr2, 0, iM267for);
                System.arraycopy(bArr5, iM267for, bArr4, 0, length);
            } else {
                System.arraycopy(bArr5, 0, bArr4, 0, length);
                System.arraycopy(bArr5, length, bArr2, 0, iM267for);
            }
            bArr3 = new byte[length];
            for (int i4 = 0; i4 != length; i4++) {
                bArr3[i4] = (byte) (bArr[(this.f29678break.length + i) + i4] ^ bArr4[i4]);
            }
            iMo7554goto = 0;
        } else {
            int iM957new = ((cl0) this.f29689this).m957new() / 8;
            byte[] bArr6 = new byte[iM957new];
            int iM267for2 = this.f29689this.m267for() / 8;
            bArr2 = new byte[iM267for2];
            int i5 = iM957new + iM267for2;
            byte[] bArr7 = new byte[i5];
            this.f29687if.generateBytes(bArr7, 0, i5);
            System.arraycopy(bArr7, 0, bArr6, 0, iM957new);
            System.arraycopy(bArr7, iM957new, bArr2, 0, iM267for2);
            CipherParameters gr0Var = new gr0(bArr6);
            byte[] bArr8 = this.f29682const;
            if (bArr8 != null) {
                gr0Var = new bc1(gr0Var, bArr8);
            }
            this.f29688new.mo7550case(false, gr0Var);
            bArr3 = new byte[this.f29688new.mo7553for((i2 - this.f29678break.length) - this.f29685for.getMacSize())];
            Cif cif = this.f29688new;
            byte[] bArr9 = this.f29678break;
            iMo7554goto = cif.mo7554goto(bArr, i + bArr9.length, (i2 - bArr9.length) - this.f29685for.getMacSize(), bArr3, 0);
        }
        byte[] bArrM268if = this.f29689this.m268if();
        byte[] bArrMo8755try = this.f29678break.length != 0 ? mo8755try(bArrM268if) : null;
        int i6 = i + i2;
        byte[] bArrM6378instanceof = q3.m6378instanceof(bArr, i6 - this.f29685for.getMacSize(), i6);
        int length2 = bArrM6378instanceof.length;
        byte[] bArr10 = new byte[length2];
        this.f29685for.init(new gr0(bArr2));
        Mac mac = this.f29685for;
        byte[] bArr11 = this.f29678break;
        mac.update(bArr, i + bArr11.length, (i2 - bArr11.length) - length2);
        if (bArrM268if != null) {
            this.f29685for.update(bArrM268if, 0, bArrM268if.length);
        }
        if (this.f29678break.length != 0) {
            this.f29685for.update(bArrMo8755try, 0, bArrMo8755try.length);
        }
        this.f29685for.doFinal(bArr10, 0);
        if (!q3.m6360abstract(bArrM6378instanceof, bArr10)) {
            throw new tn0("invalid MAC");
        }
        Cif cif2 = this.f29688new;
        return cif2 == null ? bArr3 : q3.m6378instanceof(bArr3, 0, iMo7554goto + cif2.mo7551do(bArr3, iMo7554goto));
    }

    /* renamed from: for, reason: not valid java name */
    private void m33495for(CipherParameters cipherParameters) {
        if (cipherParameters instanceof bc1) {
            bc1 bc1Var = (bc1) cipherParameters;
            this.f29682const = bc1Var.m514do();
            cipherParameters = bc1Var.m515if();
        } else {
            this.f29682const = null;
        }
        this.f29689this = (al0) cipherParameters;
    }

    /* renamed from: if, reason: not valid java name */
    private byte[] m33496if(byte[] bArr, int i, int i2) throws IllegalStateException, tw, tn0, IllegalArgumentException {
        Cif cif;
        CipherParameters gr0Var;
        byte[] bArr2;
        byte[] bArr3;
        if (this.f29688new == null) {
            byte[] bArr4 = new byte[i2];
            int iM267for = this.f29689this.m267for() / 8;
            bArr3 = new byte[iM267for];
            int i3 = i2 + iM267for;
            byte[] bArr5 = new byte[i3];
            this.f29687if.generateBytes(bArr5, 0, i3);
            if (this.f29678break.length != 0) {
                System.arraycopy(bArr5, 0, bArr3, 0, iM267for);
                System.arraycopy(bArr5, iM267for, bArr4, 0, i2);
            } else {
                System.arraycopy(bArr5, 0, bArr4, 0, i2);
                System.arraycopy(bArr5, i2, bArr3, 0, iM267for);
            }
            bArr2 = new byte[i2];
            for (int i4 = 0; i4 != i2; i4++) {
                bArr2[i4] = (byte) (bArr[i + i4] ^ bArr4[i4]);
            }
        } else {
            int iM957new = ((cl0) this.f29689this).m957new() / 8;
            byte[] bArr6 = new byte[iM957new];
            int iM267for2 = this.f29689this.m267for() / 8;
            byte[] bArr7 = new byte[iM267for2];
            int i5 = iM957new + iM267for2;
            byte[] bArr8 = new byte[i5];
            this.f29687if.generateBytes(bArr8, 0, i5);
            System.arraycopy(bArr8, 0, bArr6, 0, iM957new);
            System.arraycopy(bArr8, iM957new, bArr7, 0, iM267for2);
            if (this.f29682const != null) {
                cif = this.f29688new;
                gr0Var = new bc1(new gr0(bArr6), this.f29682const);
            } else {
                cif = this.f29688new;
                gr0Var = new gr0(bArr6);
            }
            cif.mo7550case(true, gr0Var);
            bArr2 = new byte[this.f29688new.mo7553for(i2)];
            int iMo7554goto = this.f29688new.mo7554goto(bArr, i, i2, bArr2, 0);
            i2 = iMo7554goto + this.f29688new.mo7551do(bArr2, iMo7554goto);
            bArr3 = bArr7;
        }
        byte[] bArrM268if = this.f29689this.m268if();
        byte[] bArrMo8755try = this.f29678break.length != 0 ? mo8755try(bArrM268if) : null;
        int macSize = this.f29685for.getMacSize();
        byte[] bArr9 = new byte[macSize];
        this.f29685for.init(new gr0(bArr3));
        this.f29685for.update(bArr2, 0, bArr2.length);
        if (bArrM268if != null) {
            this.f29685for.update(bArrM268if, 0, bArrM268if.length);
        }
        if (this.f29678break.length != 0) {
            this.f29685for.update(bArrMo8755try, 0, bArrMo8755try.length);
        }
        this.f29685for.doFinal(bArr9, 0);
        byte[] bArr10 = this.f29678break;
        byte[] bArr11 = new byte[bArr10.length + i2 + macSize];
        System.arraycopy(bArr10, 0, bArr11, 0, bArr10.length);
        System.arraycopy(bArr2, 0, bArr11, this.f29678break.length, i2);
        System.arraycopy(bArr9, 0, bArr11, this.f29678break.length + i2, macSize);
        return bArr11;
    }

    /* renamed from: break, reason: not valid java name */
    public byte[] m33497break(byte[] bArr, int i, int i2) throws tn0 {
        if (this.f29679case) {
            e80 e80Var = this.f29680catch;
            if (e80Var != null) {
                d80 d80VarM1686do = e80Var.m1686do();
                this.f29684else = d80VarM1686do.m1165if().m9726do();
                this.f29678break = d80VarM1686do.m1164do();
            }
        } else if (this.f29681class != null) {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr, i, i2);
            try {
                this.f29686goto = this.f29681class.readKey(byteArrayInputStream);
                this.f29678break = q3.m6378instanceof(bArr, i, (i2 - byteArrayInputStream.available()) + i);
            } catch (IOException e) {
                throw new tn0("unable to recover ephemeral public key: " + e.getMessage(), e);
            } catch (IllegalArgumentException e2) {
                throw new tn0("unable to recover ephemeral public key: " + e2.getMessage(), e2);
            }
        }
        this.f29683do.init(this.f29684else);
        byte[] bArrM36309do = Cdo.m36309do(this.f29683do.getFieldSize(), this.f29683do.calculateAgreement(this.f29686goto));
        byte[] bArr2 = this.f29678break;
        if (bArr2.length != 0) {
            byte[] bArrM6367default = q3.m6367default(bArr2, bArrM36309do);
            q3.c(bArrM36309do, (byte) 0);
            bArrM36309do = bArrM6367default;
        }
        try {
            this.f29687if.init(new kq0(bArrM36309do, this.f29689this.m266do()));
            return this.f29679case ? m33496if(bArr, i, i2) : m33494do(bArr, i, i2);
        } finally {
            q3.c(bArrM36309do, (byte) 0);
        }
    }

    /* renamed from: case, reason: not valid java name */
    public Mac m33498case() {
        return this.f29685for;
    }

    /* renamed from: else, reason: not valid java name */
    public void m33499else(a4 a4Var, CipherParameters cipherParameters, e80 e80Var) {
        this.f29679case = true;
        this.f29686goto = a4Var;
        this.f29680catch = e80Var;
        m33495for(cipherParameters);
    }

    /* renamed from: goto, reason: not valid java name */
    public void m33500goto(a4 a4Var, CipherParameters cipherParameters, KeyParser keyParser) {
        this.f29679case = false;
        this.f29684else = a4Var;
        this.f29681class = keyParser;
        m33495for(cipherParameters);
    }

    /* renamed from: new, reason: not valid java name */
    public Cif m33501new() {
        return this.f29688new;
    }

    /* renamed from: this, reason: not valid java name */
    public void m33502this(boolean z, CipherParameters cipherParameters, CipherParameters cipherParameters2, CipherParameters cipherParameters3) {
        this.f29679case = z;
        this.f29684else = cipherParameters;
        this.f29686goto = cipherParameters2;
        this.f29678break = new byte[0];
        m33495for(cipherParameters3);
    }

    /* renamed from: try */
    public byte[] mo8755try(byte[] bArr) {
        byte[] bArr2 = new byte[8];
        if (bArr != null) {
            ib1.m3369static(bArr.length * 8, bArr2, 0);
        }
        return bArr2;
    }
}
