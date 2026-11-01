package org.bouncycastle.jcajce.provider.asymmetric.ec;

import android.support.v4.a50;
import android.support.v4.d50;
import android.support.v4.rh2;
import android.support.v4.t30;
import android.support.v4.th2;
import android.support.v4.y40;
import java.io.IOException;
import java.math.BigInteger;
import java.security.AlgorithmParametersSpi;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.ECGenParameterSpec;
import java.security.spec.ECParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cthis;
import org.bouncycastle.asn1.h;
import org.bouncycastle.jcajce.provider.asymmetric.util.Celse;
import org.bouncycastle.math.ec.Cif;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo extends AlgorithmParametersSpi {

    /* renamed from: do, reason: not valid java name */
    private ECParameterSpec f31065do;

    /* renamed from: if, reason: not valid java name */
    private String f31066if;

    /* renamed from: do, reason: not valid java name */
    public boolean m34658do(String str) {
        return str == null || str.equals("ASN.1");
    }

    @Override // java.security.AlgorithmParametersSpi
    public byte[] engineGetEncoded() throws IOException {
        return engineGetEncoded("ASN.1");
    }

    @Override // java.security.AlgorithmParametersSpi
    public byte[] engineGetEncoded(String str) throws IOException {
        rh2 rh2Var;
        if (!m34658do(str)) {
            throw new IOException("Unknown parameters format in AlgorithmParameters object: " + str);
        }
        ECParameterSpec eCParameterSpec = this.f31065do;
        if (eCParameterSpec == null) {
            rh2Var = new rh2((Cthis) h.f29080do);
        } else {
            String str2 = this.f31066if;
            if (str2 != null) {
                rh2Var = new rh2(Celse.m34732class(str2));
            } else {
                d50 d50VarM7702else = t30.m7702else(eCParameterSpec, false);
                rh2Var = new rh2(new th2(d50VarM7702else.m1142do(), d50VarM7702else.m1144if(), d50VarM7702else.m1145new(), d50VarM7702else.m1143for(), d50VarM7702else.m1146try()));
            }
        }
        return rh2Var.getEncoded();
    }

    @Override // java.security.AlgorithmParametersSpi
    public <T extends AlgorithmParameterSpec> T engineGetParameterSpec(Class<T> cls) throws InvalidParameterSpecException {
        if (ECParameterSpec.class.isAssignableFrom(cls) || cls == AlgorithmParameterSpec.class) {
            return this.f31065do;
        }
        if (ECGenParameterSpec.class.isAssignableFrom(cls)) {
            String str = this.f31066if;
            if (str != null) {
                Ccatch ccatchM34732class = Celse.m34732class(str);
                return ccatchM34732class != null ? new ECGenParameterSpec(ccatchM34732class.m32795super()) : new ECGenParameterSpec(this.f31066if);
            }
            Ccatch ccatchM34731catch = Celse.m34731catch(t30.m7702else(this.f31065do, false));
            if (ccatchM34731catch != null) {
                return new ECGenParameterSpec(ccatchM34731catch.m32795super());
            }
        }
        throw new InvalidParameterSpecException("EC AlgorithmParameters cannot convert to " + cls.getName());
    }

    @Override // java.security.AlgorithmParametersSpi
    public void engineInit(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidParameterSpecException {
        if (!(algorithmParameterSpec instanceof ECGenParameterSpec)) {
            if (algorithmParameterSpec instanceof ECParameterSpec) {
                this.f31066if = algorithmParameterSpec instanceof y40 ? ((y40) algorithmParameterSpec).m9755for() : null;
                this.f31065do = (ECParameterSpec) algorithmParameterSpec;
                return;
            } else {
                throw new InvalidParameterSpecException("AlgorithmParameterSpec class not recognized: " + algorithmParameterSpec.getClass().getName());
            }
        }
        ECGenParameterSpec eCGenParameterSpec = (ECGenParameterSpec) algorithmParameterSpec;
        th2 th2VarM34669if = Cnew.m34669if(eCGenParameterSpec);
        if (th2VarM34669if != null) {
            this.f31066if = eCGenParameterSpec.getName();
            ECParameterSpec eCParameterSpecM7698catch = t30.m7698catch(th2VarM34669if);
            this.f31065do = new y40(this.f31066if, eCParameterSpecM7698catch.getCurve(), eCParameterSpecM7698catch.getGenerator(), eCParameterSpecM7698catch.getOrder(), BigInteger.valueOf(eCParameterSpecM7698catch.getCofactor()));
        } else {
            throw new InvalidParameterSpecException("EC curve name not recognized: " + eCGenParameterSpec.getName());
        }
    }

    @Override // java.security.AlgorithmParametersSpi
    public void engineInit(byte[] bArr) throws IOException {
        engineInit(bArr, "ASN.1");
    }

    @Override // java.security.AlgorithmParametersSpi
    public void engineInit(byte[] bArr, String str) throws IOException {
        if (!m34658do(str)) {
            throw new IOException("Unknown encoded parameters format in AlgorithmParameters object: " + str);
        }
        rh2 rh2VarM6988new = rh2.m6988new(bArr);
        Cif cifM7699class = t30.m7699class(org.bouncycastle.jce.provider.Cdo.CONFIGURATION, rh2VarM6988new);
        if (rh2VarM6988new.m6992goto()) {
            Ccatch ccatchM32790throw = Ccatch.m32790throw(rh2VarM6988new.m6990case());
            String strM48try = a50.m48try(ccatchM32790throw);
            this.f31066if = strM48try;
            if (strM48try == null) {
                this.f31066if = ccatchM32790throw.m32795super();
            }
        }
        this.f31065do = t30.m7696break(rh2VarM6988new, cifM7699class);
    }

    @Override // java.security.AlgorithmParametersSpi
    public String engineToString() {
        return "EC AlgorithmParameters ";
    }
}
