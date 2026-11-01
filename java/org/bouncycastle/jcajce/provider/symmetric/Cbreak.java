package org.bouncycastle.jcajce.provider.symmetric;

import android.support.v4.hn0;
import android.support.v4.me0;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.jcajce.provider.symmetric.util.Cgoto;

/* renamed from: org.bouncycastle.jcajce.provider.symmetric.break, reason: invalid class name */
/* loaded from: classes3.dex */
class Cbreak {

    /* renamed from: do, reason: not valid java name */
    public static final Class f31402do = Cgoto.m34896do(Cbreak.class, "javax.crypto.spec.GCMParameterSpec");

    /* renamed from: do, reason: not valid java name */
    public static me0 m34858do(AlgorithmParameterSpec algorithmParameterSpec) throws NoSuchMethodException, InvalidParameterSpecException, SecurityException {
        try {
            Class cls = f31402do;
            return new me0((byte[]) cls.getDeclaredMethod("getIV", new Class[0]).invoke(algorithmParameterSpec, new Object[0]), ((Integer) cls.getDeclaredMethod("getTLen", new Class[0]).invoke(algorithmParameterSpec, new Object[0])).intValue() / 8);
        } catch (Exception unused) {
            throw new InvalidParameterSpecException("Cannot process GCMParameterSpec");
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static boolean m34859for() {
        return f31402do != null;
    }

    /* renamed from: if, reason: not valid java name */
    public static AlgorithmParameterSpec m34860if(Cfinal cfinal) throws InvalidParameterSpecException {
        try {
            me0 me0VarM4908try = me0.m4908try(cfinal);
            return (AlgorithmParameterSpec) f31402do.getConstructor(Integer.TYPE, byte[].class).newInstance(hn0.m3072for(me0VarM4908try.m4910new() * 8), me0VarM4908try.m4909case());
        } catch (NoSuchMethodException unused) {
            throw new InvalidParameterSpecException("No constructor found!");
        } catch (Exception e) {
            throw new InvalidParameterSpecException("Construction failed: " + e.getMessage());
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static boolean m34861new(Class cls) {
        return f31402do == cls;
    }

    /* renamed from: try, reason: not valid java name */
    public static boolean m34862try(AlgorithmParameterSpec algorithmParameterSpec) {
        Class cls = f31402do;
        return cls != null && cls.isInstance(algorithmParameterSpec);
    }
}
