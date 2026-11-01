package org.bouncycastle.x509;

import android.support.v4.nh2;
import android.support.v4.u31;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Provider;
import java.util.Collection;
import org.bouncycastle.util.Selector;
import org.bouncycastle.util.Store;
import org.bouncycastle.x509.Cthrow;

/* renamed from: org.bouncycastle.x509.const, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cconst implements Store {

    /* renamed from: do, reason: not valid java name */
    private Provider f32707do;

    /* renamed from: if, reason: not valid java name */
    private nh2 f32708if;

    private Cconst(Provider provider, nh2 nh2Var) {
        this.f32707do = provider;
        this.f32708if = nh2Var;
    }

    /* renamed from: do, reason: not valid java name */
    private static Cconst m36446do(Cthrow.Cdo cdo, X509StoreParameters x509StoreParameters) {
        nh2 nh2Var = (nh2) cdo.m36597do();
        nh2Var.mo3902if(x509StoreParameters);
        return new Cconst(cdo.m36598if(), nh2Var);
    }

    /* renamed from: for, reason: not valid java name */
    public static Cconst m36447for(String str, X509StoreParameters x509StoreParameters, String str2) throws u31, NoSuchProviderException {
        return m36449new(str, x509StoreParameters, Cthrow.m36595this(str2));
    }

    /* renamed from: if, reason: not valid java name */
    public static Cconst m36448if(String str, X509StoreParameters x509StoreParameters) throws u31 {
        try {
            return m36446do(Cthrow.m36590else("X509Store", str), x509StoreParameters);
        } catch (NoSuchAlgorithmException e) {
            throw new u31(e.getMessage());
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static Cconst m36449new(String str, X509StoreParameters x509StoreParameters, Provider provider) throws u31 {
        try {
            return m36446do(Cthrow.m36592goto("X509Store", str, provider), x509StoreParameters);
        } catch (NoSuchAlgorithmException e) {
            throw new u31(e.getMessage());
        }
    }

    @Override // org.bouncycastle.util.Store
    public Collection getMatches(Selector selector) {
        return this.f32708if.mo3901do(selector);
    }

    /* renamed from: try, reason: not valid java name */
    public Provider m36450try() {
        return this.f32707do;
    }
}
