package org.bouncycastle.jcajce.provider.asymmetric.dsa;

import android.support.v4.cv;
import android.support.v4.dv;
import android.support.v4.ff1;
import android.support.v4.gv;
import android.support.v4.hn0;
import android.support.v4.hv;
import android.support.v4.iv;
import android.support.v4.jv;
import android.support.v4.kv;
import android.support.v4.y3;
import android.support.v4.yp1;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.DSAParameterSpec;
import java.util.Hashtable;
import org.bouncycastle.crypto.Cfor;
import org.bouncycastle.jce.provider.Cdo;
import org.bouncycastle.util.Cif;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dsa.goto, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cgoto extends KeyPairGenerator {

    /* renamed from: case, reason: not valid java name */
    private static Hashtable f31037case = new Hashtable();

    /* renamed from: else, reason: not valid java name */
    private static Object f31038else = new Object();

    /* renamed from: do, reason: not valid java name */
    public cv f31039do;

    /* renamed from: for, reason: not valid java name */
    public int f31040for;

    /* renamed from: if, reason: not valid java name */
    public dv f31041if;

    /* renamed from: new, reason: not valid java name */
    public SecureRandom f31042new;

    /* renamed from: try, reason: not valid java name */
    public boolean f31043try;

    public Cgoto() {
        super("DSA");
        this.f31041if = new dv();
        this.f31040for = 2048;
        this.f31042new = Cfor.m33599case();
        this.f31043try = false;
    }

    @Override // java.security.KeyPairGenerator, java.security.KeyPairGeneratorSpi
    public KeyPair generateKeyPair() {
        iv ivVar;
        int i;
        SecureRandom secureRandom;
        if (!this.f31043try) {
            Integer numM3072for = hn0.m3072for(this.f31040for);
            if (f31037case.containsKey(numM3072for)) {
                this.f31039do = (cv) f31037case.get(numM3072for);
            } else {
                synchronized (f31038else) {
                    if (f31037case.containsKey(numM3072for)) {
                        this.f31039do = (cv) f31037case.get(numM3072for);
                    } else {
                        int iM2267do = ff1.m2267do(this.f31040for);
                        int i2 = this.f31040for;
                        if (i2 == 1024) {
                            ivVar = new iv();
                            if (Cif.m36370try("org.bouncycastle.dsa.FIPS186-2for1024bits")) {
                                i = this.f31040for;
                                secureRandom = this.f31042new;
                                ivVar.m3601catch(i, iM2267do, secureRandom);
                                cv cvVar = new cv(this.f31042new, ivVar.m3603new());
                                this.f31039do = cvVar;
                                f31037case.put(numM3072for, cvVar);
                            } else {
                                ivVar.m3602class(new gv(1024, 160, iM2267do, this.f31042new));
                                cv cvVar2 = new cv(this.f31042new, ivVar.m3603new());
                                this.f31039do = cvVar2;
                                f31037case.put(numM3072for, cvVar2);
                            }
                        } else if (i2 > 1024) {
                            gv gvVar = new gv(i2, 256, iM2267do, this.f31042new);
                            ivVar = new iv(new yp1());
                            ivVar.m3602class(gvVar);
                            cv cvVar22 = new cv(this.f31042new, ivVar.m3603new());
                            this.f31039do = cvVar22;
                            f31037case.put(numM3072for, cvVar22);
                        } else {
                            ivVar = new iv();
                            i = this.f31040for;
                            secureRandom = this.f31042new;
                            ivVar.m3601catch(i, iM2267do, secureRandom);
                            cv cvVar222 = new cv(this.f31042new, ivVar.m3603new());
                            this.f31039do = cvVar222;
                            f31037case.put(numM3072for, cvVar222);
                        }
                    }
                }
            }
            this.f31041if.init(this.f31039do);
            this.f31043try = true;
        }
        y3 y3VarGenerateKeyPair = this.f31041if.generateKeyPair();
        return new KeyPair(new Cnew((kv) y3VarGenerateKeyPair.m9727if()), new Cfor((jv) y3VarGenerateKeyPair.m9726do()));
    }

    @Override // java.security.KeyPairGenerator, java.security.KeyPairGeneratorSpi
    public void initialize(int i, SecureRandom secureRandom) {
        boolean z;
        if (i < 512 || i > 4096 || ((i < 1024 && i % 64 != 0) || (i >= 1024 && i % 1024 != 0))) {
            throw new InvalidParameterException("strength must be from 512 - 4096 and a multiple of 1024 above 1024");
        }
        DSAParameterSpec dSADefaultParameters = Cdo.CONFIGURATION.getDSADefaultParameters(i);
        if (dSADefaultParameters != null) {
            cv cvVar = new cv(secureRandom, new hv(dSADefaultParameters.getP(), dSADefaultParameters.getQ(), dSADefaultParameters.getG()));
            this.f31039do = cvVar;
            this.f31041if.init(cvVar);
            z = true;
        } else {
            this.f31040for = i;
            this.f31042new = secureRandom;
            z = false;
        }
        this.f31043try = z;
    }

    @Override // java.security.KeyPairGenerator, java.security.KeyPairGeneratorSpi
    public void initialize(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        if (!(algorithmParameterSpec instanceof DSAParameterSpec)) {
            throw new InvalidAlgorithmParameterException("parameter object not a DSAParameterSpec");
        }
        DSAParameterSpec dSAParameterSpec = (DSAParameterSpec) algorithmParameterSpec;
        cv cvVar = new cv(secureRandom, new hv(dSAParameterSpec.getP(), dSAParameterSpec.getQ(), dSAParameterSpec.getG()));
        this.f31039do = cvVar;
        this.f31041if.init(cvVar);
        this.f31043try = true;
    }
}
