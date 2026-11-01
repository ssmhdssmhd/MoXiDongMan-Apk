package org.bouncycastle.asn1.eac;

import java.util.Enumeration;
import java.util.Hashtable;
import org.apache.commons.lang3.Cclass;

/* renamed from: org.bouncycastle.asn1.eac.case, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ccase {

    /* renamed from: do, reason: not valid java name */
    public int f28996do;

    /* renamed from: org.bouncycastle.asn1.eac.case$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public String f28997do;

        /* renamed from: if, reason: not valid java name */
        public boolean f28999if = true;

        /* renamed from: for, reason: not valid java name */
        public StringBuffer f28998for = new StringBuffer();

        public Cdo(String str) {
            this.f28997do = str;
        }

        /* renamed from: do, reason: not valid java name */
        public void m32930do(String str) {
            if (this.f28999if) {
                this.f28999if = false;
            } else {
                this.f28998for.append(this.f28997do);
            }
            this.f28998for.append(str);
        }

        public String toString() {
            return this.f28998for.toString();
        }
    }

    public Ccase() {
        this.f28996do = 0;
    }

    public Ccase(int i) {
        this.f28996do = 0;
        this.f28996do = i;
    }

    /* renamed from: do, reason: not valid java name */
    public String m32926do(Hashtable hashtable) {
        Cdo cdo = new Cdo(Cclass.f28652do);
        Enumeration enumerationKeys = hashtable.keys();
        while (enumerationKeys.hasMoreElements()) {
            Integer num = (Integer) enumerationKeys.nextElement();
            if (m32927for(num.intValue())) {
                cdo.m32930do((String) hashtable.get(num));
            }
        }
        return cdo.toString();
    }

    /* renamed from: for, reason: not valid java name */
    public boolean m32927for(int i) {
        return (i & this.f28996do) != 0;
    }

    /* renamed from: if, reason: not valid java name */
    public int m32928if() {
        return this.f28996do;
    }

    /* renamed from: new, reason: not valid java name */
    public void m32929new(int i) {
        this.f28996do = i | this.f28996do;
    }
}
