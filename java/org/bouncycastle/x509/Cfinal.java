package org.bouncycastle.x509;

import android.support.v4.t31;
import android.support.v4.x12;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Provider;
import java.util.Collection;
import org.bouncycastle.x509.Cthrow;
import org.bouncycastle.x509.util.StreamParser;

/* renamed from: org.bouncycastle.x509.final, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfinal implements StreamParser {

    /* renamed from: do, reason: not valid java name */
    private Provider f32722do;

    /* renamed from: if, reason: not valid java name */
    private Csuper f32723if;

    private Cfinal(Provider provider, Csuper csuper) {
        this.f32722do = provider;
        this.f32723if = csuper;
    }

    /* renamed from: do, reason: not valid java name */
    private static Cfinal m36485do(Cthrow.Cdo cdo) {
        return new Cfinal(cdo.m36598if(), (Csuper) cdo.m36597do());
    }

    /* renamed from: for, reason: not valid java name */
    public static Cfinal m36486for(String str, String str2) throws t31, NoSuchProviderException {
        return m36488new(str, Cthrow.m36595this(str2));
    }

    /* renamed from: if, reason: not valid java name */
    public static Cfinal m36487if(String str) throws t31 {
        try {
            return m36485do(Cthrow.m36590else("X509StreamParser", str));
        } catch (NoSuchAlgorithmException e) {
            throw new t31(e.getMessage());
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static Cfinal m36488new(String str, Provider provider) throws t31 {
        try {
            return m36485do(Cthrow.m36592goto("X509StreamParser", str, provider));
        } catch (NoSuchAlgorithmException e) {
            throw new t31(e.getMessage());
        }
    }

    /* renamed from: case, reason: not valid java name */
    public void m36489case(InputStream inputStream) {
        this.f32723if.mo35048do(inputStream);
    }

    /* renamed from: else, reason: not valid java name */
    public void m36490else(byte[] bArr) {
        this.f32723if.mo35048do(new ByteArrayInputStream(bArr));
    }

    @Override // org.bouncycastle.x509.util.StreamParser
    public Object read() throws x12 {
        return this.f32723if.mo35050if();
    }

    @Override // org.bouncycastle.x509.util.StreamParser
    public Collection readAll() throws x12 {
        return this.f32723if.mo35049for();
    }

    /* renamed from: try, reason: not valid java name */
    public Provider m36491try() {
        return this.f32722do;
    }
}
