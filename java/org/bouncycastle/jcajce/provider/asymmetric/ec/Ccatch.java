package org.bouncycastle.jcajce.provider.asymmetric.ec;

import android.support.v4.a4;
import android.support.v4.cc1;
import android.support.v4.d40;
import android.support.v4.qi0;
import android.support.v4.sj1;
import android.support.v4.u00;
import android.support.v4.v40;
import android.support.v4.vd1;
import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.SignatureSpi;
import org.bouncycastle.crypto.DSAExt;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.signers.DSAEncoding;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.catch, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ccatch extends org.bouncycastle.jcajce.provider.asymmetric.util.Ccase {

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.catch$abstract, reason: invalid class name */
    public static class Cabstract extends Ccatch {
        public Cabstract() {
            super(u00.m8176if(), new v40(), org.bouncycastle.crypto.signers.Cbreak.f30346do);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.catch$break, reason: invalid class name */
    public static class Cbreak extends Ccatch {
        public Cbreak() {
            super(u00.m8176if(), new d40(), org.bouncycastle.crypto.signers.Cbreak.f30346do);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.catch$case, reason: invalid class name */
    public static class Ccase extends Ccatch {
        public Ccase() {
            super(u00.m8174for(), new d40(), org.bouncycastle.crypto.signers.Cbreak.f30346do);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.catch$catch, reason: invalid class name and collision with other inner class name */
    public static class C0416catch extends Ccatch {
        public C0416catch() {
            super(new sj1(), new d40(), org.bouncycastle.crypto.signers.Cbreak.f30346do);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.catch$class, reason: invalid class name */
    public static class Cclass extends Ccatch {
        public Cclass() {
            super(u00.m8169case(), new d40(), org.bouncycastle.crypto.signers.Cbreak.f30346do);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.catch$const, reason: invalid class name */
    public static class Cconst extends Ccatch {
        public Cconst() {
            super(u00.m8173else(), new d40(), org.bouncycastle.crypto.signers.Cbreak.f30346do);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.catch$continue, reason: invalid class name */
    public static class Ccontinue extends Ccatch {
        public Ccontinue() {
            super(new sj1(), new d40(), vd1.f7151do);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.catch$default, reason: invalid class name */
    public static class Cdefault extends Ccatch {
        public Cdefault() {
            super(u00.m8178this(), new d40(new qi0(u00.m8178this())), org.bouncycastle.crypto.signers.Cbreak.f30346do);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.catch$do, reason: invalid class name */
    public static class Cdo extends Ccatch {
        public Cdo() {
            super(u00.m8174for(), new d40(), vd1.f7151do);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.catch$else, reason: invalid class name */
    public static class Celse extends Ccatch {
        public Celse() {
            super(u00.m8177new(), new d40(), org.bouncycastle.crypto.signers.Cbreak.f30346do);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.catch$extends, reason: invalid class name */
    public static class Cextends extends Ccatch {
        public Cextends() {
            super(u00.m8174for(), new v40(), org.bouncycastle.crypto.signers.Cbreak.f30346do);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.catch$final, reason: invalid class name */
    public static class Cfinal extends Ccatch {
        public Cfinal() {
            super(u00.m8175goto(), new d40(), org.bouncycastle.crypto.signers.Cbreak.f30346do);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.catch$finally, reason: invalid class name */
    public static class Cfinally extends Ccatch {
        public Cfinally() {
            super(u00.m8177new(), new v40(), org.bouncycastle.crypto.signers.Cbreak.f30346do);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.catch$for, reason: invalid class name */
    public static class Cfor extends Ccatch {
        public Cfor() {
            super(u00.m8179try(), new d40(), vd1.f7151do);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.catch$goto, reason: invalid class name */
    public static class Cgoto extends Ccatch {
        public Cgoto() {
            super(u00.m8179try(), new d40(), org.bouncycastle.crypto.signers.Cbreak.f30346do);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.catch$if, reason: invalid class name */
    public static class Cif extends Ccatch {
        public Cif() {
            super(u00.m8177new(), new d40(), vd1.f7151do);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.catch$import, reason: invalid class name */
    public static class Cimport extends Ccatch {
        public Cimport() {
            super(u00.m8177new(), new d40(new qi0(u00.m8177new())), org.bouncycastle.crypto.signers.Cbreak.f30346do);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.catch$native, reason: invalid class name */
    public static class Cnative extends Ccatch {
        public Cnative() {
            super(u00.m8179try(), new d40(new qi0(u00.m8179try())), org.bouncycastle.crypto.signers.Cbreak.f30346do);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.catch$new, reason: invalid class name */
    public static class Cnew extends Ccatch {
        public Cnew() {
            super(u00.m8168break(), new d40(), vd1.f7151do);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.catch$package, reason: invalid class name */
    public static class Cpackage extends Ccatch {
        public Cpackage() {
            super(u00.m8179try(), new v40(), org.bouncycastle.crypto.signers.Cbreak.f30346do);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.catch$private, reason: invalid class name */
    public static class Cprivate extends Ccatch {
        public Cprivate() {
            super(u00.m8168break(), new v40(), org.bouncycastle.crypto.signers.Cbreak.f30346do);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.catch$public, reason: invalid class name */
    public static class Cpublic extends Ccatch {
        public Cpublic() {
            super(u00.m8168break(), new d40(new qi0(u00.m8168break())), org.bouncycastle.crypto.signers.Cbreak.f30346do);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.catch$return, reason: invalid class name */
    public static class Creturn extends Ccatch {
        public Creturn() {
            super(u00.m8176if(), new d40(new qi0(u00.m8176if())), org.bouncycastle.crypto.signers.Cbreak.f30346do);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.catch$static, reason: invalid class name */
    public static class Cstatic extends Ccatch {
        public Cstatic() {
            super(u00.m8169case(), new d40(new qi0(u00.m8169case())), org.bouncycastle.crypto.signers.Cbreak.f30346do);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.catch$super, reason: invalid class name */
    public static class Csuper extends Ccatch {
        public Csuper() {
            super(u00.m8178this(), new d40(), org.bouncycastle.crypto.signers.Cbreak.f30346do);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.catch$switch, reason: invalid class name */
    public static class Cswitch extends Ccatch {
        public Cswitch() {
            super(u00.m8173else(), new d40(new qi0(u00.m8173else())), org.bouncycastle.crypto.signers.Cbreak.f30346do);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.catch$this, reason: invalid class name */
    public static class Cthis extends Ccatch {
        public Cthis() {
            super(u00.m8168break(), new d40(), org.bouncycastle.crypto.signers.Cbreak.f30346do);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.catch$throw, reason: invalid class name */
    public static class Cthrow extends Ccatch {
        public Cthrow() {
            super(new org.bouncycastle.crypto.digests.Cdo(), new d40(), org.bouncycastle.crypto.signers.Cbreak.f30346do);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.catch$throws, reason: invalid class name */
    public static class Cthrows extends Ccatch {
        public Cthrows() {
            super(u00.m8175goto(), new d40(new qi0(u00.m8175goto())), org.bouncycastle.crypto.signers.Cbreak.f30346do);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.catch$try, reason: invalid class name */
    public static class Ctry extends Ccatch {
        public Ctry() {
            super(u00.m8176if(), new d40(), vd1.f7151do);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.catch$while, reason: invalid class name */
    public static class Cwhile extends Ccatch {
        public Cwhile() {
            super(u00.m8174for(), new d40(new qi0(u00.m8174for())), org.bouncycastle.crypto.signers.Cbreak.f30346do);
        }
    }

    public Ccatch(Digest digest, DSAExt dSAExt, DSAEncoding dSAEncoding) {
        super(digest, dSAExt, dSAEncoding);
    }

    @Override // java.security.SignatureSpi
    public void engineInitSign(PrivateKey privateKey) throws InvalidKeyException {
        a4 a4VarM34740new = org.bouncycastle.jcajce.provider.asymmetric.util.Celse.m34740new(privateKey);
        this.f31237do.reset();
        SecureRandom secureRandom = ((SignatureSpi) this).appRandom;
        if (secureRandom != null) {
            this.f31239if.init(true, new cc1(a4VarM34740new, secureRandom));
        } else {
            this.f31239if.init(true, a4VarM34740new);
        }
    }

    @Override // java.security.SignatureSpi
    public void engineInitVerify(PublicKey publicKey) throws InvalidKeyException {
        a4 a4VarM34667do = org.bouncycastle.jcajce.provider.asymmetric.ec.Cnew.m34667do(publicKey);
        this.f31237do.reset();
        this.f31239if.init(false, a4VarM34667do);
    }
}
