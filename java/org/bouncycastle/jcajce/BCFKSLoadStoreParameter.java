package org.bouncycastle.jcajce;

import android.support.v4.u91;
import android.support.v4.x5;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.Key;
import java.security.KeyStore;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.cert.X509Certificate;
import org.bouncycastle.crypto.util.Cbreak;

/* loaded from: classes3.dex */
public class BCFKSLoadStoreParameter extends x5 {

    /* renamed from: break, reason: not valid java name */
    private final CertChainValidator f30913break;

    /* renamed from: case, reason: not valid java name */
    private final Cnew f30914case;

    /* renamed from: else, reason: not valid java name */
    private final Ctry f30915else;

    /* renamed from: goto, reason: not valid java name */
    private final Key f30916goto;

    /* renamed from: new, reason: not valid java name */
    private final u91 f30917new;

    /* renamed from: this, reason: not valid java name */
    private final X509Certificate[] f30918this;

    /* renamed from: try, reason: not valid java name */
    private final Cfor f30919try;

    public interface CertChainValidator {
        boolean isValid(X509Certificate[] x509CertificateArr);
    }

    /* renamed from: org.bouncycastle.jcajce.BCFKSLoadStoreParameter$for, reason: invalid class name */
    public enum Cfor {
        AES256_CCM,
        AES256_KWP
    }

    /* renamed from: org.bouncycastle.jcajce.BCFKSLoadStoreParameter$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: break, reason: not valid java name */
        private CertChainValidator f30921break;

        /* renamed from: case, reason: not valid java name */
        private Cfor f30922case;

        /* renamed from: do, reason: not valid java name */
        private final OutputStream f30923do;

        /* renamed from: else, reason: not valid java name */
        private Cnew f30924else;

        /* renamed from: for, reason: not valid java name */
        private final KeyStore.ProtectionParameter f30925for;

        /* renamed from: goto, reason: not valid java name */
        private Ctry f30926goto;

        /* renamed from: if, reason: not valid java name */
        private final InputStream f30927if;

        /* renamed from: new, reason: not valid java name */
        private final Key f30928new;

        /* renamed from: this, reason: not valid java name */
        private X509Certificate[] f30929this;

        /* renamed from: try, reason: not valid java name */
        private u91 f30930try;

        public Cif() {
            this((OutputStream) null, (KeyStore.ProtectionParameter) null);
        }

        public Cif(InputStream inputStream, KeyStore.ProtectionParameter protectionParameter) {
            this.f30930try = new Cbreak.Cif().m34463try(16384).m34461else(64).m34460case(Cbreak.f30863else).m34462new();
            this.f30922case = Cfor.AES256_CCM;
            this.f30924else = Cnew.HmacSHA512;
            this.f30926goto = Ctry.SHA512withECDSA;
            this.f30929this = null;
            this.f30927if = inputStream;
            this.f30923do = null;
            this.f30925for = protectionParameter;
            this.f30928new = null;
        }

        public Cif(InputStream inputStream, PublicKey publicKey) {
            this.f30930try = new Cbreak.Cif().m34463try(16384).m34461else(64).m34460case(Cbreak.f30863else).m34462new();
            this.f30922case = Cfor.AES256_CCM;
            this.f30924else = Cnew.HmacSHA512;
            this.f30926goto = Ctry.SHA512withECDSA;
            this.f30929this = null;
            this.f30927if = inputStream;
            this.f30923do = null;
            this.f30925for = null;
            this.f30928new = publicKey;
        }

        public Cif(InputStream inputStream, CertChainValidator certChainValidator) {
            this.f30930try = new Cbreak.Cif().m34463try(16384).m34461else(64).m34460case(Cbreak.f30863else).m34462new();
            this.f30922case = Cfor.AES256_CCM;
            this.f30924else = Cnew.HmacSHA512;
            this.f30926goto = Ctry.SHA512withECDSA;
            this.f30929this = null;
            this.f30927if = inputStream;
            this.f30923do = null;
            this.f30925for = null;
            this.f30921break = certChainValidator;
            this.f30928new = null;
        }

        public Cif(InputStream inputStream, char[] cArr) {
            this(inputStream, new KeyStore.PasswordProtection(cArr));
        }

        public Cif(OutputStream outputStream, KeyStore.ProtectionParameter protectionParameter) {
            this.f30930try = new Cbreak.Cif().m34463try(16384).m34461else(64).m34460case(Cbreak.f30863else).m34462new();
            this.f30922case = Cfor.AES256_CCM;
            this.f30924else = Cnew.HmacSHA512;
            this.f30926goto = Ctry.SHA512withECDSA;
            this.f30929this = null;
            this.f30927if = null;
            this.f30923do = outputStream;
            this.f30925for = protectionParameter;
            this.f30928new = null;
        }

        public Cif(OutputStream outputStream, PrivateKey privateKey) {
            this.f30930try = new Cbreak.Cif().m34463try(16384).m34461else(64).m34460case(Cbreak.f30863else).m34462new();
            this.f30922case = Cfor.AES256_CCM;
            this.f30924else = Cnew.HmacSHA512;
            this.f30926goto = Ctry.SHA512withECDSA;
            this.f30929this = null;
            this.f30927if = null;
            this.f30923do = outputStream;
            this.f30925for = null;
            this.f30928new = privateKey;
        }

        public Cif(OutputStream outputStream, char[] cArr) {
            this(outputStream, new KeyStore.PasswordProtection(cArr));
        }

        /* renamed from: catch, reason: not valid java name */
        public BCFKSLoadStoreParameter m34543catch() {
            return new BCFKSLoadStoreParameter(this);
        }

        /* renamed from: class, reason: not valid java name */
        public Cif m34544class(X509Certificate[] x509CertificateArr) {
            int length = x509CertificateArr.length;
            X509Certificate[] x509CertificateArr2 = new X509Certificate[length];
            System.arraycopy(x509CertificateArr, 0, x509CertificateArr2, 0, length);
            this.f30929this = x509CertificateArr2;
            return this;
        }

        /* renamed from: const, reason: not valid java name */
        public Cif m34545const(Cfor cfor) {
            this.f30922case = cfor;
            return this;
        }

        /* renamed from: final, reason: not valid java name */
        public Cif m34546final(Cnew cnew) {
            this.f30924else = cnew;
            return this;
        }

        /* renamed from: super, reason: not valid java name */
        public Cif m34547super(u91 u91Var) {
            this.f30930try = u91Var;
            return this;
        }

        /* renamed from: throw, reason: not valid java name */
        public Cif m34548throw(Ctry ctry) {
            this.f30926goto = ctry;
            return this;
        }
    }

    /* renamed from: org.bouncycastle.jcajce.BCFKSLoadStoreParameter$new, reason: invalid class name */
    public enum Cnew {
        HmacSHA512,
        HmacSHA3_512
    }

    /* renamed from: org.bouncycastle.jcajce.BCFKSLoadStoreParameter$try, reason: invalid class name */
    public enum Ctry {
        SHA512withDSA,
        SHA3_512withDSA,
        SHA512withECDSA,
        SHA3_512withECDSA,
        SHA512withRSA,
        SHA3_512withRSA
    }

    private BCFKSLoadStoreParameter(Cif cif) {
        super(cif.f30927if, cif.f30923do, cif.f30925for);
        this.f30917new = cif.f30930try;
        this.f30919try = cif.f30922case;
        this.f30914case = cif.f30924else;
        this.f30915else = cif.f30926goto;
        this.f30916goto = cif.f30928new;
        this.f30918this = cif.f30929this;
        this.f30913break = cif.f30921break;
    }

    /* renamed from: case, reason: not valid java name */
    public Cnew m34526case() {
        return this.f30914case;
    }

    /* renamed from: else, reason: not valid java name */
    public u91 m34527else() {
        return this.f30917new;
    }

    /* renamed from: for, reason: not valid java name */
    public CertChainValidator m34528for() {
        return this.f30913break;
    }

    /* renamed from: goto, reason: not valid java name */
    public Ctry m34529goto() {
        return this.f30915else;
    }

    /* renamed from: new, reason: not valid java name */
    public X509Certificate[] m34530new() {
        return this.f30918this;
    }

    /* renamed from: this, reason: not valid java name */
    public Key m34531this() {
        return this.f30916goto;
    }

    /* renamed from: try, reason: not valid java name */
    public Cfor m34532try() {
        return this.f30919try;
    }
}
