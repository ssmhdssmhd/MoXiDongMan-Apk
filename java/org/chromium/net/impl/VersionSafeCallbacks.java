package org.chromium.net.impl;

import android.support.v4.e31;
import android.support.v4.f31;
import android.support.v4.rs;
import android.support.v4.yc2;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.concurrent.Executor;
import org.chromium.net.Cfor;
import org.chromium.net.Cif;
import org.chromium.net.Cnative;
import org.chromium.net.Cpublic;
import org.chromium.net.Creturn;
import org.chromium.net.Cstatic;

/* loaded from: classes3.dex */
public class VersionSafeCallbacks {

    public static final class UrlRequestStatusListener extends Creturn.Cnew {

        /* renamed from: do, reason: not valid java name */
        private final Creturn.Cnew f33624do;

        public UrlRequestStatusListener(Creturn.Cnew cnew) {
            this.f33624do = cnew;
        }

        @Override // org.chromium.net.Creturn.Cnew
        /* renamed from: do, reason: not valid java name */
        public void mo37638do(int i) {
            this.f33624do.mo37638do(i);
        }
    }

    /* renamed from: org.chromium.net.impl.VersionSafeCallbacks$case, reason: invalid class name */
    public static final class Ccase extends Cpublic {

        /* renamed from: do, reason: not valid java name */
        private final Cpublic f33625do;

        public Ccase(Cpublic cpublic) {
            this.f33625do = cpublic;
        }

        @Override // org.chromium.net.Cpublic, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f33625do.close();
        }

        @Override // org.chromium.net.Cpublic
        /* renamed from: do */
        public long mo37419do() throws IOException {
            return this.f33625do.mo37419do();
        }

        @Override // org.chromium.net.Cpublic
        /* renamed from: for */
        public void mo37420for(yc2 yc2Var) throws IOException {
            this.f33625do.mo37420for(yc2Var);
        }

        @Override // org.chromium.net.Cpublic
        /* renamed from: if */
        public void mo37421if(yc2 yc2Var, ByteBuffer byteBuffer) throws IOException {
            this.f33625do.mo37421if(yc2Var, byteBuffer);
        }
    }

    /* renamed from: org.chromium.net.impl.VersionSafeCallbacks$do, reason: invalid class name */
    public static final class Cdo extends Cif.AbstractC0480if {

        /* renamed from: do, reason: not valid java name */
        private final Cif.AbstractC0480if f33626do;

        public Cdo(Cif.AbstractC0480if abstractC0480if) {
            this.f33626do = abstractC0480if;
        }

        @Override // org.chromium.net.Cif.AbstractC0480if
        /* renamed from: case */
        public void mo37522case(org.chromium.net.Cif cif) {
            this.f33626do.mo37522case(cif);
        }

        @Override // org.chromium.net.Cif.AbstractC0480if
        /* renamed from: do */
        public void mo37523do(org.chromium.net.Cif cif, Cstatic cstatic) {
            this.f33626do.mo37523do(cif, cstatic);
        }

        @Override // org.chromium.net.Cif.AbstractC0480if
        /* renamed from: else */
        public void mo37524else(org.chromium.net.Cif cif, Cstatic cstatic) {
            this.f33626do.mo37524else(cif, cstatic);
        }

        @Override // org.chromium.net.Cif.AbstractC0480if
        /* renamed from: for */
        public void mo37525for(org.chromium.net.Cif cif, Cstatic cstatic, ByteBuffer byteBuffer, boolean z) {
            this.f33626do.mo37525for(cif, cstatic, byteBuffer, z);
        }

        @Override // org.chromium.net.Cif.AbstractC0480if
        /* renamed from: goto */
        public void mo37526goto(org.chromium.net.Cif cif, Cstatic cstatic, ByteBuffer byteBuffer, boolean z) {
            this.f33626do.mo37526goto(cif, cstatic, byteBuffer, z);
        }

        @Override // org.chromium.net.Cif.AbstractC0480if
        /* renamed from: if */
        public void mo37527if(org.chromium.net.Cif cif, Cstatic cstatic, rs rsVar) {
            this.f33626do.mo37527if(cif, cstatic, rsVar);
        }

        @Override // org.chromium.net.Cif.AbstractC0480if
        /* renamed from: new */
        public void mo37528new(org.chromium.net.Cif cif, Cstatic cstatic) {
            this.f33626do.mo37528new(cif, cstatic);
        }

        @Override // org.chromium.net.Cif.AbstractC0480if
        /* renamed from: try */
        public void mo37529try(org.chromium.net.Cif cif, Cstatic cstatic, Cstatic.Cdo cdo) {
            this.f33626do.mo37529try(cif, cstatic, cdo);
        }
    }

    /* renamed from: org.chromium.net.impl.VersionSafeCallbacks$else, reason: invalid class name */
    public static final class Celse extends Creturn.Cif {

        /* renamed from: do, reason: not valid java name */
        private final Creturn.Cif f33627do;

        public Celse(Creturn.Cif cif) {
            this.f33627do = cif;
        }

        @Override // org.chromium.net.Creturn.Cif
        /* renamed from: case */
        public void mo26745case(Creturn creturn, Cstatic cstatic) {
            this.f33627do.mo26745case(creturn, cstatic);
        }

        @Override // org.chromium.net.Creturn.Cif
        /* renamed from: do */
        public void mo26746do(Creturn creturn, Cstatic cstatic) {
            this.f33627do.mo26746do(creturn, cstatic);
        }

        @Override // org.chromium.net.Creturn.Cif
        /* renamed from: for */
        public void mo26747for(Creturn creturn, Cstatic cstatic, ByteBuffer byteBuffer) throws Exception {
            this.f33627do.mo26747for(creturn, cstatic, byteBuffer);
        }

        @Override // org.chromium.net.Creturn.Cif
        /* renamed from: if */
        public void mo26748if(Creturn creturn, Cstatic cstatic, rs rsVar) {
            this.f33627do.mo26748if(creturn, cstatic, rsVar);
        }

        @Override // org.chromium.net.Creturn.Cif
        /* renamed from: new */
        public void mo26749new(Creturn creturn, Cstatic cstatic, String str) throws Exception {
            this.f33627do.mo26749new(creturn, cstatic, str);
        }

        @Override // org.chromium.net.Creturn.Cif
        /* renamed from: try */
        public void mo26750try(Creturn creturn, Cstatic cstatic) throws Exception {
            this.f33627do.mo26750try(creturn, cstatic);
        }
    }

    /* renamed from: org.chromium.net.impl.VersionSafeCallbacks$for, reason: invalid class name */
    public static final class Cfor extends e31 {

        /* renamed from: if, reason: not valid java name */
        private final e31 f33628if;

        public Cfor(e31 e31Var) {
            super(e31Var.mo1641do());
            this.f33628if = e31Var;
        }

        @Override // android.support.v4.e31
        /* renamed from: do */
        public Executor mo1641do() {
            return this.f33628if.mo1641do();
        }

        public boolean equals(Object obj) {
            if (obj == null || !(obj instanceof Cfor)) {
                return false;
            }
            return this.f33628if.equals(((Cfor) obj).f33628if);
        }

        public int hashCode() {
            return this.f33628if.hashCode();
        }

        @Override // android.support.v4.e31
        /* renamed from: if */
        public void mo1642if(int i, long j, int i2) {
            this.f33628if.mo1642if(i, j, i2);
        }
    }

    /* renamed from: org.chromium.net.impl.VersionSafeCallbacks$if, reason: invalid class name */
    public static final class Cif extends Cfor.Cdo.Cif {

        /* renamed from: do, reason: not valid java name */
        private final Cfor.Cdo.Cif f33629do;

        public Cif(Cfor.Cdo.Cif cif) {
            this.f33629do = cif;
        }

        @Override // org.chromium.net.Cfor.Cdo.Cif
        /* renamed from: do */
        public void mo37512do(String str) {
            this.f33629do.mo37512do(str);
        }
    }

    /* renamed from: org.chromium.net.impl.VersionSafeCallbacks$new, reason: invalid class name */
    public static final class Cnew extends f31 {

        /* renamed from: if, reason: not valid java name */
        private final f31 f33630if;

        public Cnew(f31 f31Var) {
            super(f31Var.mo2130do());
            this.f33630if = f31Var;
        }

        @Override // android.support.v4.f31
        /* renamed from: do */
        public Executor mo2130do() {
            return this.f33630if.mo2130do();
        }

        public boolean equals(Object obj) {
            if (obj == null || !(obj instanceof Cnew)) {
                return false;
            }
            return this.f33630if.equals(((Cnew) obj).f33630if);
        }

        public int hashCode() {
            return this.f33630if.hashCode();
        }

        @Override // android.support.v4.f31
        /* renamed from: if */
        public void mo2131if(int i, long j, int i2) {
            this.f33630if.mo2131if(i, j, i2);
        }
    }

    /* renamed from: org.chromium.net.impl.VersionSafeCallbacks$try, reason: invalid class name */
    public static final class Ctry extends Cnative.Cdo {

        /* renamed from: if, reason: not valid java name */
        private final Cnative.Cdo f33631if;

        public Ctry(Cnative.Cdo cdo) {
            super(cdo.mo37639do());
            this.f33631if = cdo;
        }

        @Override // org.chromium.net.Cnative.Cdo
        /* renamed from: do, reason: not valid java name */
        public Executor mo37639do() {
            return this.f33631if.mo37639do();
        }

        @Override // org.chromium.net.Cnative.Cdo
        /* renamed from: if */
        public void mo26740if(Cnative cnative) {
            this.f33631if.mo26740if(cnative);
        }
    }
}
