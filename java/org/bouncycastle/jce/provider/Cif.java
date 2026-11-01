package org.bouncycastle.jce.provider;

import android.support.v4.d50;
import android.support.v4.eu;
import android.support.v4.hv;
import android.support.v4.ou;
import android.support.v4.qg1;
import android.support.v4.t30;
import java.security.Permission;
import java.security.spec.DSAParameterSpec;
import java.security.spec.ECParameterSpec;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import javax.crypto.spec.DHParameterSpec;
import org.bouncycastle.crypto.Cfor;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jcajce.provider.config.ProviderConfiguration;

/* renamed from: org.bouncycastle.jce.provider.if, reason: invalid class name */
/* loaded from: classes3.dex */
class Cif implements ProviderConfiguration {

    /* renamed from: for, reason: not valid java name */
    private volatile d50 f31633for;

    /* renamed from: new, reason: not valid java name */
    private volatile Object f31635new;

    /* renamed from: else, reason: not valid java name */
    private static Permission f31628else = new qg1(Cdo.PROVIDER_NAME, ConfigurableProvider.THREAD_LOCAL_EC_IMPLICITLY_CA);

    /* renamed from: goto, reason: not valid java name */
    private static Permission f31629goto = new qg1(Cdo.PROVIDER_NAME, ConfigurableProvider.EC_IMPLICITLY_CA);

    /* renamed from: this, reason: not valid java name */
    private static Permission f31630this = new qg1(Cdo.PROVIDER_NAME, ConfigurableProvider.THREAD_LOCAL_DH_DEFAULT_PARAMS);

    /* renamed from: break, reason: not valid java name */
    private static Permission f31625break = new qg1(Cdo.PROVIDER_NAME, ConfigurableProvider.DH_DEFAULT_PARAMS);

    /* renamed from: catch, reason: not valid java name */
    private static Permission f31626catch = new qg1(Cdo.PROVIDER_NAME, ConfigurableProvider.ACCEPTABLE_EC_CURVES);

    /* renamed from: class, reason: not valid java name */
    private static Permission f31627class = new qg1(Cdo.PROVIDER_NAME, ConfigurableProvider.ADDITIONAL_EC_PARAMETERS);

    /* renamed from: do, reason: not valid java name */
    private ThreadLocal f31632do = new ThreadLocal();

    /* renamed from: if, reason: not valid java name */
    private ThreadLocal f31634if = new ThreadLocal();

    /* renamed from: try, reason: not valid java name */
    private volatile Set f31636try = new HashSet();

    /* renamed from: case, reason: not valid java name */
    private volatile Map f31631case = new HashMap();

    /* renamed from: do, reason: not valid java name */
    public void m35046do(String str, Object obj) {
        ThreadLocal threadLocal;
        SecurityManager securityManager = System.getSecurityManager();
        if (str.equals(ConfigurableProvider.THREAD_LOCAL_EC_IMPLICITLY_CA)) {
            if (securityManager != null) {
                securityManager.checkPermission(f31628else);
            }
            d50 d50VarM7702else = ((obj instanceof d50) || obj == null) ? (d50) obj : t30.m7702else((ECParameterSpec) obj, false);
            if (d50VarM7702else != null) {
                this.f31632do.set(d50VarM7702else);
                return;
            }
            threadLocal = this.f31632do;
        } else {
            if (str.equals(ConfigurableProvider.EC_IMPLICITLY_CA)) {
                if (securityManager != null) {
                    securityManager.checkPermission(f31629goto);
                }
                if ((obj instanceof d50) || obj == null) {
                    this.f31633for = (d50) obj;
                    return;
                } else {
                    this.f31633for = t30.m7702else((ECParameterSpec) obj, false);
                    return;
                }
            }
            if (!str.equals(ConfigurableProvider.THREAD_LOCAL_DH_DEFAULT_PARAMS)) {
                if (str.equals(ConfigurableProvider.DH_DEFAULT_PARAMS)) {
                    if (securityManager != null) {
                        securityManager.checkPermission(f31625break);
                    }
                    if (!(obj instanceof DHParameterSpec) && !(obj instanceof DHParameterSpec[]) && obj != null) {
                        throw new IllegalArgumentException("not a valid DHParameterSpec or DHParameterSpec[]");
                    }
                    this.f31635new = obj;
                    return;
                }
                if (str.equals(ConfigurableProvider.ACCEPTABLE_EC_CURVES)) {
                    if (securityManager != null) {
                        securityManager.checkPermission(f31626catch);
                    }
                    this.f31636try = (Set) obj;
                    return;
                } else {
                    if (str.equals(ConfigurableProvider.ADDITIONAL_EC_PARAMETERS)) {
                        if (securityManager != null) {
                            securityManager.checkPermission(f31627class);
                        }
                        this.f31631case = (Map) obj;
                        return;
                    }
                    return;
                }
            }
            if (securityManager != null) {
                securityManager.checkPermission(f31630this);
            }
            if (!(obj instanceof DHParameterSpec) && !(obj instanceof DHParameterSpec[]) && obj != null) {
                throw new IllegalArgumentException("not a valid DHParameterSpec");
            }
            threadLocal = this.f31634if;
            if (obj != null) {
                threadLocal.set(obj);
                return;
            }
        }
        threadLocal.remove();
    }

    @Override // org.bouncycastle.jcajce.provider.config.ProviderConfiguration
    public Set getAcceptableNamedCurves() {
        return Collections.unmodifiableSet(this.f31636try);
    }

    @Override // org.bouncycastle.jcajce.provider.config.ProviderConfiguration
    public Map getAdditionalECParameters() {
        return Collections.unmodifiableMap(this.f31631case);
    }

    @Override // org.bouncycastle.jcajce.provider.config.ProviderConfiguration
    public DHParameterSpec getDHDefaultParameters(int i) {
        Object obj = this.f31634if.get();
        if (obj == null) {
            obj = this.f31635new;
        }
        if (obj instanceof DHParameterSpec) {
            DHParameterSpec dHParameterSpec = (DHParameterSpec) obj;
            if (dHParameterSpec.getP().bitLength() == i) {
                return dHParameterSpec;
            }
        } else if (obj instanceof DHParameterSpec[]) {
            DHParameterSpec[] dHParameterSpecArr = (DHParameterSpec[]) obj;
            for (int i2 = 0; i2 != dHParameterSpecArr.length; i2++) {
                if (dHParameterSpecArr[i2].getP().bitLength() == i) {
                    return dHParameterSpecArr[i2];
                }
            }
        }
        ou ouVar = (ou) Cfor.m33604else(Cfor.Cif.f29802new, i);
        if (ouVar != null) {
            return new eu(ouVar);
        }
        return null;
    }

    @Override // org.bouncycastle.jcajce.provider.config.ProviderConfiguration
    public DSAParameterSpec getDSADefaultParameters(int i) {
        hv hvVar = (hv) Cfor.m33604else(Cfor.Cif.f29803try, i);
        if (hvVar != null) {
            return new DSAParameterSpec(hvVar.m3129if(), hvVar.m3128for(), hvVar.m3127do());
        }
        return null;
    }

    @Override // org.bouncycastle.jcajce.provider.config.ProviderConfiguration
    public d50 getEcImplicitlyCa() {
        d50 d50Var = (d50) this.f31632do.get();
        return d50Var != null ? d50Var : this.f31633for;
    }
}
