package org.bouncycastle.jcajce.spec;

import android.support.v4.b1;
import android.support.v4.q3;
import java.security.spec.AlgorithmParameterSpec;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.asn1.x9.X9ObjectIdentifiers;

/* renamed from: org.bouncycastle.jcajce.spec.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo implements AlgorithmParameterSpec {

    /* renamed from: do, reason: not valid java name */
    private final String f31533do;

    /* renamed from: for, reason: not valid java name */
    private final AlgorithmParameterSpec f31534for;

    /* renamed from: if, reason: not valid java name */
    private final int f31535if;

    /* renamed from: new, reason: not valid java name */
    private final b1 f31536new;

    /* renamed from: try, reason: not valid java name */
    private byte[] f31537try;

    /* renamed from: org.bouncycastle.jcajce.spec.do$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: do, reason: not valid java name */
        private final String f31538do;

        /* renamed from: for, reason: not valid java name */
        private AlgorithmParameterSpec f31539for;

        /* renamed from: if, reason: not valid java name */
        private final int f31540if;

        /* renamed from: new, reason: not valid java name */
        private b1 f31541new;

        /* renamed from: try, reason: not valid java name */
        private byte[] f31542try;

        public Cif(String str, int i) {
            this(str, i, null);
        }

        public Cif(String str, int i, byte[] bArr) {
            this.f31538do = str;
            this.f31540if = i;
            this.f31541new = new b1(X9ObjectIdentifiers.id_kdf_kdf3, new b1(NISTObjectIdentifiers.id_sha256));
            this.f31542try = bArr == null ? new byte[0] : q3.m6371final(bArr);
        }

        /* renamed from: do, reason: not valid java name */
        public Cdo m34904do() {
            return new Cdo(this.f31538do, this.f31540if, this.f31539for, this.f31541new, this.f31542try);
        }

        /* renamed from: for, reason: not valid java name */
        public Cif m34905for(AlgorithmParameterSpec algorithmParameterSpec) {
            this.f31539for = algorithmParameterSpec;
            return this;
        }

        /* renamed from: if, reason: not valid java name */
        public Cif m34906if(b1 b1Var) {
            this.f31541new = b1Var;
            return this;
        }
    }

    private Cdo(String str, int i, AlgorithmParameterSpec algorithmParameterSpec, b1 b1Var, byte[] bArr) {
        this.f31533do = str;
        this.f31535if = i;
        this.f31534for = algorithmParameterSpec;
        this.f31536new = b1Var;
        this.f31537try = bArr;
    }

    /* renamed from: do, reason: not valid java name */
    public b1 m34899do() {
        return this.f31536new;
    }

    /* renamed from: for, reason: not valid java name */
    public int m34900for() {
        return this.f31535if;
    }

    /* renamed from: if, reason: not valid java name */
    public String m34901if() {
        return this.f31533do;
    }

    /* renamed from: new, reason: not valid java name */
    public byte[] m34902new() {
        return q3.m6371final(this.f31537try);
    }

    /* renamed from: try, reason: not valid java name */
    public AlgorithmParameterSpec m34903try() {
        return this.f31534for;
    }
}
