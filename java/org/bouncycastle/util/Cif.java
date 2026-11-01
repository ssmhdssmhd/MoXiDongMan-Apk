package org.bouncycastle.util;

import freemarker.core.b2;
import java.math.BigInteger;
import java.security.AccessControlException;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.StringTokenizer;

/* renamed from: org.bouncycastle.util.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif {

    /* renamed from: do, reason: not valid java name */
    private static final ThreadLocal f32658do = new ThreadLocal();

    /* renamed from: org.bouncycastle.util.if$do, reason: invalid class name */
    public static class Cdo implements PrivilegedAction {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ String f32659do;

        public Cdo(String str) {
            this.f32659do = str;
        }

        @Override // java.security.PrivilegedAction
        public Object run() {
            Map map = (Map) Cif.f32658do.get();
            return map != null ? map.get(this.f32659do) : System.getProperty(this.f32659do);
        }
    }

    private Cif() {
    }

    /* renamed from: case, reason: not valid java name */
    public static boolean m36364case(String str) {
        boolean zM36370try = m36370try(str);
        ThreadLocal threadLocal = f32658do;
        Map map = (Map) threadLocal.get();
        if (map == null) {
            return false;
        }
        map.remove(str);
        if (map.isEmpty()) {
            threadLocal.remove();
        } else {
            threadLocal.set(map);
        }
        return zM36370try;
    }

    /* renamed from: else, reason: not valid java name */
    public static boolean m36366else(String str, boolean z) {
        boolean zM36370try = m36370try(str);
        ThreadLocal threadLocal = f32658do;
        Map map = (Map) threadLocal.get();
        if (map == null) {
            map = new HashMap();
        }
        map.put(str, z ? b2.f23511if : b2.f23510do);
        threadLocal.set(map);
        return zM36370try;
    }

    /* renamed from: for, reason: not valid java name */
    public static Set<String> m36367for(String str) {
        HashSet hashSet = new HashSet();
        String strM36369new = m36369new(str);
        if (strM36369new != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(strM36369new, ",");
            while (stringTokenizer.hasMoreElements()) {
                hashSet.add(Cfor.m36349break(stringTokenizer.nextToken()).trim());
            }
        }
        return Collections.unmodifiableSet(hashSet);
    }

    /* renamed from: if, reason: not valid java name */
    public static BigInteger m36368if(String str) {
        String strM36369new = m36369new(str);
        if (strM36369new != null) {
            return new BigInteger(strM36369new);
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    private static String m36369new(String str) {
        return (String) AccessController.doPrivileged(new Cdo(str));
    }

    /* renamed from: try, reason: not valid java name */
    public static boolean m36370try(String str) {
        try {
            String strM36369new = m36369new(str);
            if (strM36369new != null) {
                return b2.f23511if.equals(Cfor.m36349break(strM36369new));
            }
        } catch (AccessControlException unused) {
        }
        return false;
    }
}
