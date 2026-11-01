package org.bouncycastle.pqc.jcajce.provider.xmss;

import android.support.v4.bq1;
import android.support.v4.dq1;
import android.support.v4.hi2;
import android.support.v4.ki2;
import android.support.v4.y3;
import android.support.v4.yp1;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.crypto.Cfor;
import org.bouncycastle.pqc.crypto.xmss.Cnative;
import org.bouncycastle.pqc.crypto.xmss.Cpublic;
import org.bouncycastle.pqc.crypto.xmss.Creturn;
import org.bouncycastle.pqc.crypto.xmss.Cstatic;

/* renamed from: org.bouncycastle.pqc.jcajce.provider.xmss.this, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cthis extends KeyPairGenerator {

    /* renamed from: do, reason: not valid java name */
    private hi2 f32594do;

    /* renamed from: for, reason: not valid java name */
    private Ccatch f32595for;

    /* renamed from: if, reason: not valid java name */
    private Cnative f32596if;

    /* renamed from: new, reason: not valid java name */
    private SecureRandom f32597new;

    /* renamed from: try, reason: not valid java name */
    private boolean f32598try;

    public Cthis() {
        super("XMSSMT");
        this.f32596if = new Cnative();
        this.f32597new = Cfor.m33599case();
        this.f32598try = false;
    }

    @Override // java.security.KeyPairGenerator, java.security.KeyPairGeneratorSpi
    public KeyPair generateKeyPair() {
        if (!this.f32598try) {
            hi2 hi2Var = new hi2(new Cpublic(10, 20, new bq1()), this.f32597new);
            this.f32594do = hi2Var;
            this.f32596if.m35910for(hi2Var);
            this.f32598try = true;
        }
        y3 y3VarM35909do = this.f32596if.m35909do();
        return new KeyPair(new Cif(this.f32595for, (Cstatic) y3VarM35909do.m9727if()), new Cdo(this.f32595for, (Creturn) y3VarM35909do.m9726do()));
    }

    @Override // java.security.KeyPairGenerator, java.security.KeyPairGeneratorSpi
    public void initialize(int i, SecureRandom secureRandom) {
        throw new IllegalArgumentException("use AlgorithmParameterSpec");
    }

    @Override // java.security.KeyPairGenerator, java.security.KeyPairGeneratorSpi
    public void initialize(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        hi2 hi2Var;
        if (!(algorithmParameterSpec instanceof ki2)) {
            throw new InvalidAlgorithmParameterException("parameter object not a XMSSMTParameterSpec");
        }
        ki2 ki2Var = (ki2) algorithmParameterSpec;
        if (ki2Var.m4414for().equals("SHA256")) {
            this.f32595for = NISTObjectIdentifiers.id_sha256;
            hi2Var = new hi2(new Cpublic(ki2Var.m4413do(), ki2Var.m4415if(), new yp1()), secureRandom);
        } else if (ki2Var.m4414for().equals("SHA512")) {
            this.f32595for = NISTObjectIdentifiers.id_sha512;
            hi2Var = new hi2(new Cpublic(ki2Var.m4413do(), ki2Var.m4415if(), new bq1()), secureRandom);
        } else {
            if (!ki2Var.m4414for().equals("SHAKE128")) {
                if (ki2Var.m4414for().equals("SHAKE256")) {
                    this.f32595for = NISTObjectIdentifiers.id_shake256;
                    hi2Var = new hi2(new Cpublic(ki2Var.m4413do(), ki2Var.m4415if(), new dq1(256)), secureRandom);
                }
                this.f32596if.m35910for(this.f32594do);
                this.f32598try = true;
            }
            this.f32595for = NISTObjectIdentifiers.id_shake128;
            hi2Var = new hi2(new Cpublic(ki2Var.m4413do(), ki2Var.m4415if(), new dq1(128)), secureRandom);
        }
        this.f32594do = hi2Var;
        this.f32596if.m35910for(this.f32594do);
        this.f32598try = true;
    }
}
