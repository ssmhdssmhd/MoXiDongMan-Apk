package org.bouncycastle.pqc.jcajce.provider;

import android.support.v4.f1;
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
import org.bouncycastle.asn1.x509.Ctry;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jcajce.provider.config.ProviderConfiguration;
import org.bouncycastle.jcajce.provider.util.AsymmetricKeyInfoConverter;

/* renamed from: org.bouncycastle.pqc.jcajce.provider.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo extends Provider implements ConfigurableProvider {
    public static final ProviderConfiguration CONFIGURATION = null;
    public static String PROVIDER_NAME = "BCPQC";

    /* renamed from: do, reason: not valid java name */
    private static String f32540do = "BouncyCastle Post-Quantum Security Provider v1.61";

    /* renamed from: for, reason: not valid java name */
    private static final String f32541for = "org.bouncycastle.pqc.jcajce.provider.";

    /* renamed from: if, reason: not valid java name */
    private static final Map f32542if = new HashMap();

    /* renamed from: new, reason: not valid java name */
    private static final String[] f32543new = {"Rainbow", "McEliece", "SPHINCS", "NH", "XMSS", "QTESLA"};

    /* renamed from: org.bouncycastle.pqc.jcajce.provider.do$do, reason: invalid class name and collision with other inner class name */
    public class C0467do implements PrivilegedAction {
        public C0467do() {
        }

        @Override // java.security.PrivilegedAction
        public Object run() {
            Cdo.this.m36088for();
            return null;
        }
    }

    /* renamed from: org.bouncycastle.pqc.jcajce.provider.do$if, reason: invalid class name */
    public static class Cif implements PrivilegedAction {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ String f32545do;

        public Cif(String str) {
            this.f32545do = str;
        }

        @Override // java.security.PrivilegedAction
        public Object run() {
            try {
                return Class.forName(this.f32545do);
            } catch (Exception unused) {
                return null;
            }
        }
    }

    public Cdo() {
        super(PROVIDER_NAME, 1.61d, f32540do);
        AccessController.doPrivileged(new C0467do());
    }

    /* renamed from: do, reason: not valid java name */
    private static AsymmetricKeyInfoConverter m36087do(Ccatch ccatch) {
        AsymmetricKeyInfoConverter asymmetricKeyInfoConverter;
        Map map = f32542if;
        synchronized (map) {
            asymmetricKeyInfoConverter = (AsymmetricKeyInfoConverter) map.get(ccatch);
        }
        return asymmetricKeyInfoConverter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: for, reason: not valid java name */
    public void m36088for() {
        m36089if(f32541for, f32543new);
    }

    public static PrivateKey getPrivateKey(org.bouncycastle.asn1.pkcs.Cdo cdo) throws IOException {
        AsymmetricKeyInfoConverter asymmetricKeyInfoConverterM36087do = m36087do(cdo.m33104else().m420new());
        if (asymmetricKeyInfoConverterM36087do == null) {
            return null;
        }
        return asymmetricKeyInfoConverterM36087do.generatePrivate(cdo);
    }

    public static PublicKey getPublicKey(Ctry ctry) throws IOException {
        AsymmetricKeyInfoConverter asymmetricKeyInfoConverterM36087do = m36087do(ctry.m33295new().m420new());
        if (asymmetricKeyInfoConverterM36087do == null) {
            return null;
        }
        return asymmetricKeyInfoConverterM36087do.generatePublic(ctry);
    }

    /* renamed from: if, reason: not valid java name */
    private void m36089if(String str, String[] strArr) {
        for (int i = 0; i != strArr.length; i++) {
            Class clsLoadClass = loadClass(Cdo.class, str + strArr[i] + "$Mappings");
            if (clsLoadClass != null) {
                try {
                    ((f1) clsLoadClass.newInstance()).mo252do(this);
                } catch (Exception e) {
                    throw new InternalError("cannot create instance of " + str + strArr[i] + "$Mappings : " + e);
                }
            }
        }
    }

    public static Class loadClass(Class cls, String str) {
        try {
            ClassLoader classLoader = cls.getClassLoader();
            return classLoader != null ? classLoader.loadClass(str) : (Class) AccessController.doPrivileged(new Cif(str));
        } catch (ClassNotFoundException unused) {
            return null;
        }
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
        if (!containsKey(str + "." + str2)) {
            throw new IllegalStateException("primary key (" + str + "." + str2 + ") not found");
        }
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
        Map map = f32542if;
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
        synchronized (CONFIGURATION) {
        }
    }
}
