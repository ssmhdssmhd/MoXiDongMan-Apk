package org.bouncycastle.jcajce;

import java.security.InvalidParameterException;
import java.security.cert.CertPathParameters;
import java.security.cert.PKIXBuilderParameters;
import java.security.cert.X509Certificate;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import org.bouncycastle.jcajce.Cnew;

/* renamed from: org.bouncycastle.jcajce.for, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfor implements CertPathParameters {

    /* renamed from: do, reason: not valid java name */
    private final Cnew f30946do;

    /* renamed from: for, reason: not valid java name */
    private final int f30947for;

    /* renamed from: if, reason: not valid java name */
    private final Set<X509Certificate> f30948if;

    /* renamed from: org.bouncycastle.jcajce.for$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        private final Cnew f30949do;

        /* renamed from: for, reason: not valid java name */
        private Set<X509Certificate> f30950for;

        /* renamed from: if, reason: not valid java name */
        private int f30951if;

        public Cif(PKIXBuilderParameters pKIXBuilderParameters) {
            this.f30951if = 5;
            this.f30950for = new HashSet();
            this.f30949do = new Cnew.Cif(pKIXBuilderParameters).m34634throw();
            this.f30951if = pKIXBuilderParameters.getMaxPathLength();
        }

        public Cif(Cnew cnew) {
            this.f30951if = 5;
            this.f30950for = new HashSet();
            this.f30949do = cnew;
        }

        /* renamed from: case, reason: not valid java name */
        public Cif m34575case(int i) {
            if (i < -1) {
                throw new InvalidParameterException("The maximum path length parameter can not be less than -1.");
            }
            this.f30951if = i;
            return this;
        }

        /* renamed from: new, reason: not valid java name */
        public Cif m34576new(Set<X509Certificate> set) {
            this.f30950for.addAll(set);
            return this;
        }

        /* renamed from: try, reason: not valid java name */
        public Cfor m34577try() {
            return new Cfor(this);
        }
    }

    private Cfor(Cif cif) {
        this.f30946do = cif.f30949do;
        this.f30948if = Collections.unmodifiableSet(cif.f30950for);
        this.f30947for = cif.f30951if;
    }

    @Override // java.security.cert.CertPathParameters
    public Object clone() {
        return this;
    }

    /* renamed from: do, reason: not valid java name */
    public Cnew m34569do() {
        return this.f30946do;
    }

    /* renamed from: for, reason: not valid java name */
    public int m34570for() {
        return this.f30947for;
    }

    /* renamed from: if, reason: not valid java name */
    public Set m34571if() {
        return this.f30948if;
    }
}
