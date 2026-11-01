package com.google.common.net;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ik0;
import android.support.v4.li0;
import android.support.v4.o8;
import android.support.v4.pn0;
import java.net.InetAddress;
import java.text.ParseException;

@li0
@o8
/* renamed from: com.google.common.net.do, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cdo {

    /* renamed from: do, reason: not valid java name */
    private final String f15432do;

    private Cdo(String str) {
        this.f15432do = str;
    }

    /* renamed from: do, reason: not valid java name */
    public static Cdo m17383do(String str) throws ParseException {
        try {
            return m17385if(str);
        } catch (IllegalArgumentException e) {
            ParseException parseException = new ParseException("Invalid host specifier: " + str, 0);
            parseException.initCause(e);
            throw parseException;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static boolean m17384for(String str) {
        try {
            m17385if(str);
            return true;
        } catch (IllegalArgumentException unused) {
            return false;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static Cdo m17385if(String str) throws NumberFormatException {
        ik0 ik0VarFromString = ik0.fromString(str);
        af1.m220new(!ik0VarFromString.hasPort());
        String host = ik0VarFromString.getHost();
        InetAddress inetAddressM17432else = null;
        try {
            inetAddressM17432else = Cif.m17432else(host);
        } catch (IllegalArgumentException unused) {
        }
        if (inetAddressM17432else != null) {
            return new Cdo(Cif.b(inetAddressM17432else));
        }
        pn0 pn0VarM6131new = pn0.m6131new(host);
        if (pn0VarM6131new.m6137case()) {
            return new Cdo(pn0VarM6131new.toString());
        }
        throw new IllegalArgumentException("Domain name does not have a recognized public suffix: " + host);
    }

    public boolean equals(@b51 Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Cdo) {
            return this.f15432do.equals(((Cdo) obj).f15432do);
        }
        return false;
    }

    public int hashCode() {
        return this.f15432do.hashCode();
    }

    public String toString() {
        return this.f15432do;
    }
}
