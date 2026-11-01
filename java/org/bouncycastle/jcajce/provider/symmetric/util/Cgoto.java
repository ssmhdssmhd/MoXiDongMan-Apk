package org.bouncycastle.jcajce.provider.symmetric.util;

import java.security.AccessController;
import java.security.PrivilegedAction;

/* renamed from: org.bouncycastle.jcajce.provider.symmetric.util.goto, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cgoto {

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.util.goto$do, reason: invalid class name */
    public static class Cdo implements PrivilegedAction {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ String f31518do;

        public Cdo(String str) {
            this.f31518do = str;
        }

        @Override // java.security.PrivilegedAction
        public Object run() {
            try {
                return Class.forName(this.f31518do);
            } catch (Exception unused) {
                return null;
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static Class m34896do(Class cls, String str) {
        try {
            ClassLoader classLoader = cls.getClassLoader();
            return classLoader != null ? classLoader.loadClass(str) : (Class) AccessController.doPrivileged(new Cdo(str));
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }
}
