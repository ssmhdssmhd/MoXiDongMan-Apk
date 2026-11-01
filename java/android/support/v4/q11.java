package android.support.v4;

import java.io.IOException;
import java.security.SecureRandom;
import org.bouncycastle.crypto.util.Ctry;
import org.bouncycastle.pqc.asn1.PQCObjectIdentifiers;
import org.bouncycastle.pqc.crypto.newhope.Cfor;
import org.bouncycastle.pqc.crypto.newhope.Cnew;

/* loaded from: classes3.dex */
public class q11 {

    /* renamed from: do, reason: not valid java name */
    public final Ctry.Cif f5233do;

    /* renamed from: for, reason: not valid java name */
    public boolean f5234for = false;

    /* renamed from: if, reason: not valid java name */
    public final SecureRandom f5235if;

    /* renamed from: android.support.v4.q11$do, reason: invalid class name */
    public static class Cdo extends q11 {

        /* renamed from: new, reason: not valid java name */
        private y3 f5236new;

        /* renamed from: try, reason: not valid java name */
        private Cfor f5237try;

        public Cdo(b1 b1Var, byte[] bArr, byte[] bArr2, SecureRandom secureRandom) {
            super(b1Var, bArr, bArr2, secureRandom);
            this.f5237try = new Cfor();
            org.bouncycastle.pqc.crypto.newhope.Ctry ctry = new org.bouncycastle.pqc.crypto.newhope.Ctry();
            ctry.init(new dr0(secureRandom, 2048));
            y3 y3VarGenerateKeyPair = ctry.generateKeyPair();
            this.f5236new = y3VarGenerateKeyPair;
            this.f5237try.m35654if(y3VarGenerateKeyPair.m9726do());
        }

        /* renamed from: case, reason: not valid java name */
        public byte[] m6315case() {
            return q11.m6312for((s11) this.f5236new.m9727if());
        }

        /* renamed from: else, reason: not valid java name */
        public q11 m6316else(byte[] bArr) {
            this.f5233do.m34522for(bArr);
            return this;
        }

        /* renamed from: try, reason: not valid java name */
        public Ctry m6317try(byte[] bArr) {
            if (this.f5234for) {
                throw new IllegalStateException("builder already used");
            }
            this.f5234for = true;
            this.f5233do.m34523if(this.f5237try.m35653do(q11.m6314new(bArr)));
            return this.f5233do.m34521do();
        }
    }

    /* renamed from: android.support.v4.q11$if, reason: invalid class name */
    public static class Cif extends q11 {
        public Cif(b1 b1Var, byte[] bArr, byte[] bArr2, SecureRandom secureRandom) {
            super(b1Var, bArr, bArr2, secureRandom);
        }

        /* renamed from: case, reason: not valid java name */
        public byte[] m6318case(byte[] bArr) {
            v80 v80VarGenerateExchange = new Cnew(this.f5235if).generateExchange(q11.m6314new(bArr));
            this.f5233do.m34523if(v80VarGenerateExchange.m8776if());
            return q11.m6312for((s11) v80VarGenerateExchange.m8775do());
        }

        /* renamed from: else, reason: not valid java name */
        public q11 m6319else(byte[] bArr) {
            this.f5233do.m34522for(bArr);
            return this;
        }

        /* renamed from: try, reason: not valid java name */
        public Ctry m6320try() {
            if (this.f5234for) {
                throw new IllegalStateException("builder already used");
            }
            this.f5234for = true;
            return this.f5233do.m34521do();
        }
    }

    public q11(b1 b1Var, byte[] bArr, byte[] bArr2, SecureRandom secureRandom) {
        this.f5233do = new Ctry.Cif(b1Var, bArr, bArr2);
        this.f5235if = secureRandom;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: for, reason: not valid java name */
    public static byte[] m6312for(s11 s11Var) {
        try {
            return new org.bouncycastle.asn1.x509.Ctry(new b1(PQCObjectIdentifiers.newHope), s11Var.m7234if()).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: new, reason: not valid java name */
    public static s11 m6314new(byte[] bArr) {
        return new s11(org.bouncycastle.asn1.x509.Ctry.m33291case(bArr).m33296this().m33059super());
    }
}
