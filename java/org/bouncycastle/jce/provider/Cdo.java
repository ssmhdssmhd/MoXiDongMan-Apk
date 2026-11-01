package org.bouncycastle.jce.provider;

import android.support.v4.f1;
import android.support.v4.nk1;
import android.support.v4.o11;
import android.support.v4.w02;
import java.io.IOException;
import java.security.AccessController;
import java.security.PrivateKey;
import java.security.PrivilegedAction;
import java.security.Provider;
import java.security.PublicKey;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.lang3.Cclass;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jcajce.provider.config.ProviderConfiguration;
import org.bouncycastle.jcajce.provider.util.AsymmetricKeyInfoConverter;
import org.bouncycastle.pqc.asn1.PQCObjectIdentifiers;
import org.bouncycastle.pqc.jcajce.provider.mceliece.Celse;
import org.bouncycastle.pqc.jcajce.provider.mceliece.Cfor;
import org.bouncycastle.pqc.jcajce.provider.qtesla.Ctry;
import org.bouncycastle.pqc.jcajce.provider.xmss.Ccase;
import org.bouncycastle.pqc.jcajce.provider.xmss.Cgoto;

/* renamed from: org.bouncycastle.jce.provider.do, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cdo extends Provider implements ConfigurableProvider {

    /* renamed from: break, reason: not valid java name */
    private static final String f31595break = "org.bouncycastle.jcajce.provider.digest.";

    /* renamed from: class, reason: not valid java name */
    private static final String f31598class = "org.bouncycastle.jcajce.provider.keystore.";

    /* renamed from: do, reason: not valid java name */
    private static String f31600do = "BouncyCastle Security Provider v1.61";

    /* renamed from: else, reason: not valid java name */
    private static final String f31601else = "org.bouncycastle.jcajce.provider.asymmetric.";

    /* renamed from: final, reason: not valid java name */
    private static final String f31602final = "org.bouncycastle.jcajce.provider.drbg.";

    /* renamed from: for, reason: not valid java name */
    private static final String f31603for = "org.bouncycastle.jcajce.provider.symmetric.";
    public static final ProviderConfiguration CONFIGURATION = new Cif();

    /* renamed from: if, reason: not valid java name */
    private static final Map f31605if = new HashMap();

    /* renamed from: new, reason: not valid java name */
    private static final String[] f31606new = {"PBEPBKDF1", "PBEPBKDF2", "PBEPKCS12", "TLSKDF", "SCRYPT"};

    /* renamed from: try, reason: not valid java name */
    private static final String[] f31609try = {"SipHash", "Poly1305"};

    /* renamed from: case, reason: not valid java name */
    private static final String[] f31596case = {"AES", "ARC4", "ARIA", "Blowfish", "Camellia", "CAST5", "CAST6", "ChaCha", "DES", "DESede", "GOST28147", "Grainv1", "Grain128", "HC128", "HC256", "IDEA", "Noekeon", "RC2", "RC5", "RC6", "Rijndael", "Salsa20", "SEED", "Serpent", "Shacal2", "Skipjack", "SM4", "TEA", "Twofish", "Threefish", "VMPC", "VMPCKSA3", "XTEA", "XSalsa20", "OpenSSLPBKDF", "DSTU7624", "GOST3412_2015"};

    /* renamed from: goto, reason: not valid java name */
    private static final String[] f31604goto = {"X509", "IES"};

    /* renamed from: this, reason: not valid java name */
    private static final String[] f31608this = {"DSA", "DH", "EC", "RSA", "GOST", "ECGOST", "ElGamal", "DSTU4145", "GM", "EdEC"};

    /* renamed from: catch, reason: not valid java name */
    private static final String[] f31597catch = {"GOST3411", "Keccak", "MD2", "MD4", "MD5", "SHA1", "RIPEMD128", "RIPEMD160", "RIPEMD256", "RIPEMD320", "SHA224", "SHA256", "SHA384", "SHA512", "SHA3", "Skein", "SM3", "Tiger", "Whirlpool", "Blake2b", "Blake2s", "DSTU7564"};
    public static final String PROVIDER_NAME = "BC";

    /* renamed from: const, reason: not valid java name */
    private static final String[] f31599const = {PROVIDER_NAME, "BCFKS", "PKCS12"};

    /* renamed from: super, reason: not valid java name */
    private static final String[] f31607super = {"DRBG"};

    /* renamed from: org.bouncycastle.jce.provider.do$do, reason: invalid class name and collision with other inner class name */
    public class C0455do implements PrivilegedAction {
        public C0455do() {
        }

        @Override // java.security.PrivilegedAction
        public Object run() {
            Cdo.this.m35024new();
            return null;
        }
    }

    public Cdo() {
        super(PROVIDER_NAME, 1.61d, f31600do);
        AccessController.doPrivileged(new C0455do());
    }

    /* renamed from: do, reason: not valid java name */
    private static AsymmetricKeyInfoConverter m35021do(Ccatch ccatch) {
        AsymmetricKeyInfoConverter asymmetricKeyInfoConverter;
        Map map = f31605if;
        synchronized (map) {
            asymmetricKeyInfoConverter = (AsymmetricKeyInfoConverter) map.get(ccatch);
        }
        return asymmetricKeyInfoConverter;
    }

    /* renamed from: for, reason: not valid java name */
    private void m35022for() {
        addKeyInfoConverter(PQCObjectIdentifiers.sphincs256, new w02());
        addKeyInfoConverter(PQCObjectIdentifiers.newHope, new o11());
        addKeyInfoConverter(PQCObjectIdentifiers.xmss, new Ccase());
        addKeyInfoConverter(PQCObjectIdentifiers.xmss_mt, new Cgoto());
        addKeyInfoConverter(PQCObjectIdentifiers.mcEliece, new Celse());
        addKeyInfoConverter(PQCObjectIdentifiers.mcElieceCca2, new Cfor());
        addKeyInfoConverter(PQCObjectIdentifiers.rainbow, new nk1());
        addKeyInfoConverter(PQCObjectIdentifiers.qTESLA_I, new Ctry());
        addKeyInfoConverter(PQCObjectIdentifiers.qTESLA_III_size, new Ctry());
        addKeyInfoConverter(PQCObjectIdentifiers.qTESLA_III_speed, new Ctry());
        addKeyInfoConverter(PQCObjectIdentifiers.qTESLA_p_I, new Ctry());
        addKeyInfoConverter(PQCObjectIdentifiers.qTESLA_p_III, new Ctry());
    }

    public static PrivateKey getPrivateKey(org.bouncycastle.asn1.pkcs.Cdo cdo) throws IOException {
        AsymmetricKeyInfoConverter asymmetricKeyInfoConverterM35021do = m35021do(cdo.m33104else().m420new());
        if (asymmetricKeyInfoConverterM35021do == null) {
            return null;
        }
        return asymmetricKeyInfoConverterM35021do.generatePrivate(cdo);
    }

    public static PublicKey getPublicKey(org.bouncycastle.asn1.x509.Ctry ctry) throws IOException {
        AsymmetricKeyInfoConverter asymmetricKeyInfoConverterM35021do = m35021do(ctry.m33295new().m420new());
        if (asymmetricKeyInfoConverterM35021do == null) {
            return null;
        }
        return asymmetricKeyInfoConverterM35021do.generatePublic(ctry);
    }

    /* renamed from: if, reason: not valid java name */
    private void m35023if(String str, String[] strArr) {
        for (int i = 0; i != strArr.length; i++) {
            Class clsM34896do = org.bouncycastle.jcajce.provider.symmetric.util.Cgoto.m34896do(Cdo.class, str + strArr[i] + "$Mappings");
            if (clsM34896do != null) {
                try {
                    ((f1) clsM34896do.newInstance()).mo252do(this);
                } catch (Exception e) {
                    throw new InternalError("cannot create instance of " + str + strArr[i] + "$Mappings : " + e);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: new, reason: not valid java name */
    public void m35024new() {
        m35023if(f31595break, f31597catch);
        m35023if(f31603for, f31606new);
        m35023if(f31603for, f31609try);
        m35023if(f31603for, f31596case);
        m35023if(f31601else, f31604goto);
        m35023if(f31601else, f31608this);
        m35023if(f31598class, f31599const);
        m35023if(f31602final, f31607super);
        m35022for();
        put("X509Store.CERTIFICATE/COLLECTION", "org.bouncycastle.jce.provider.X509StoreCertCollection");
        put("X509Store.ATTRIBUTECERTIFICATE/COLLECTION", "org.bouncycastle.jce.provider.X509StoreAttrCertCollection");
        put("X509Store.CRL/COLLECTION", "org.bouncycastle.jce.provider.X509StoreCRLCollection");
        put("X509Store.CERTIFICATEPAIR/COLLECTION", "org.bouncycastle.jce.provider.X509StoreCertPairCollection");
        put("X509Store.CERTIFICATE/LDAP", "org.bouncycastle.jce.provider.X509StoreLDAPCerts");
        put("X509Store.CRL/LDAP", "org.bouncycastle.jce.provider.X509StoreLDAPCRLs");
        put("X509Store.ATTRIBUTECERTIFICATE/LDAP", "org.bouncycastle.jce.provider.X509StoreLDAPAttrCerts");
        put("X509Store.CERTIFICATEPAIR/LDAP", "org.bouncycastle.jce.provider.X509StoreLDAPCertPairs");
        put("X509StreamParser.CERTIFICATE", "org.bouncycastle.jce.provider.X509CertParser");
        put("X509StreamParser.ATTRIBUTECERTIFICATE", "org.bouncycastle.jce.provider.X509AttrCertParser");
        put("X509StreamParser.CRL", "org.bouncycastle.jce.provider.X509CRLParser");
        put("X509StreamParser.CERTIFICATEPAIR", "org.bouncycastle.jce.provider.X509CertPairParser");
        put("Cipher.BROKENPBEWITHMD5ANDDES", "org.bouncycastle.jce.provider.BrokenJCEBlockCipher$BrokePBEWithMD5AndDES");
        put("Cipher.BROKENPBEWITHSHA1ANDDES", "org.bouncycastle.jce.provider.BrokenJCEBlockCipher$BrokePBEWithSHA1AndDES");
        put("Cipher.OLDPBEWITHSHAANDTWOFISH-CBC", "org.bouncycastle.jce.provider.BrokenJCEBlockCipher$OldPBEWithSHAAndTwofish");
        put("CertPathValidator.RFC3281", "org.bouncycastle.jce.provider.PKIXAttrCertPathValidatorSpi");
        put("CertPathBuilder.RFC3281", "org.bouncycastle.jce.provider.PKIXAttrCertPathBuilderSpi");
        put("CertPathValidator.RFC3280", "org.bouncycastle.jce.provider.PKIXCertPathValidatorSpi");
        put("CertPathBuilder.RFC3280", "org.bouncycastle.jce.provider.PKIXCertPathBuilderSpi");
        put("CertPathValidator.PKIX", "org.bouncycastle.jce.provider.PKIXCertPathValidatorSpi");
        put("CertPathBuilder.PKIX", "org.bouncycastle.jce.provider.PKIXCertPathBuilderSpi");
        put("CertStore.Collection", "org.bouncycastle.jce.provider.CertStoreCollectionSpi");
        put("CertStore.LDAP", "org.bouncycastle.jce.provider.X509LDAPCertStoreSpi");
        put("CertStore.Multi", "org.bouncycastle.jce.provider.MultiCertStoreSpi");
        put("Alg.Alias.CertStore.X509LDAP", "LDAP");
    }

    @Override // org.bouncycastle.jcajce.provider.config.ConfigurableProvider
    public void addAlgorithm(String str, String str2) {
        if (!containsKey(str)) {
            put(str, str2);
            return;
        }
        throw new IllegalStateException("duplicate provider key (" + str + ") found");
    }

    @Override // org.bouncycastle.jcajce.provider.config.ConfigurableProvider
    public void addAlgorithm(String str, Ccatch ccatch, String str2) {
        addAlgorithm(str + "." + ccatch, str2);
        addAlgorithm(str + ".OID." + ccatch, str2);
    }

    @Override // org.bouncycastle.jcajce.provider.config.ConfigurableProvider
    public void addAttributes(String str, Map<String, String> map) {
        for (String str2 : map.keySet()) {
            String str3 = str + Cclass.f28652do + str2;
            if (containsKey(str3)) {
                throw new IllegalStateException("duplicate provider attribute key (" + str3 + ") found");
            }
            put(str3, map.get(str2));
        }
    }

    @Override // org.bouncycastle.jcajce.provider.config.ConfigurableProvider
    public void addKeyInfoConverter(Ccatch ccatch, AsymmetricKeyInfoConverter asymmetricKeyInfoConverter) {
        Map map = f31605if;
        synchronized (map) {
            map.put(ccatch, asymmetricKeyInfoConverter);
        }
    }

    @Override // org.bouncycastle.jcajce.provider.config.ConfigurableProvider
    public boolean hasAlgorithm(String str, String str2) {
        if (!containsKey(str + "." + str2)) {
            if (!containsKey("Alg.Alias." + str + "." + str2)) {
                return false;
            }
        }
        return true;
    }

    @Override // org.bouncycastle.jcajce.provider.config.ConfigurableProvider
    public void setParameter(String str, Object obj) {
        ProviderConfiguration providerConfiguration = CONFIGURATION;
        synchronized (providerConfiguration) {
            ((Cif) providerConfiguration).m35046do(str, obj);
        }
    }
}
