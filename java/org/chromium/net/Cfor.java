package org.chromium.net;

import android.content.Context;
import android.util.Log;
import androidx.annotation.VisibleForTesting;
import java.io.IOException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLStreamHandlerFactory;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
import org.chromium.net.Creturn;

/* renamed from: org.chromium.net.for, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cfor {

    /* renamed from: do, reason: not valid java name */
    private static final String f33455do = "for";

    /* renamed from: org.chromium.net.for$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: for, reason: not valid java name */
        public static final int f33456for = 1;

        /* renamed from: if, reason: not valid java name */
        public static final int f33457if = 0;

        /* renamed from: new, reason: not valid java name */
        public static final int f33458new = 2;

        /* renamed from: try, reason: not valid java name */
        public static final int f33459try = 3;

        /* renamed from: do, reason: not valid java name */
        public final Ccatch f33460do;

        /* renamed from: org.chromium.net.for$do$do, reason: invalid class name and collision with other inner class name */
        public class C0479do implements Comparator<Cnew> {
            @Override // java.util.Comparator
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public int compare(Cnew cnew, Cnew cnew2) {
                if (Cnew.f33702for.equals(cnew.mo37637try())) {
                    return 1;
                }
                if (Cnew.f33702for.equals(cnew2.mo37637try())) {
                    return -1;
                }
                return -Cdo.m37507new(cnew.mo37634case(), cnew2.mo37634case());
            }
        }

        /* renamed from: org.chromium.net.for$do$if, reason: invalid class name */
        public static abstract class Cif {
            /* renamed from: do, reason: not valid java name */
            public abstract void mo37512do(String str);
        }

        public Cdo(Context context) {
            this(m37508try(context));
        }

        @VisibleForTesting
        /* renamed from: const, reason: not valid java name */
        public static List<Cnew> m37506const(Context context, List<Cnew> list) {
            if (list.size() == 0) {
                throw new RuntimeException("Unable to find any Cronet provider. Have you included all necessary jars?");
            }
            Iterator<Cnew> it = list.iterator();
            while (it.hasNext()) {
                if (!it.next().mo37635else()) {
                    it.remove();
                }
            }
            if (list.size() == 0) {
                throw new RuntimeException("All available Cronet providers are disabled. A provider should be enabled before it can be used.");
            }
            Collections.sort(list, new C0479do());
            return list;
        }

        @VisibleForTesting
        /* renamed from: new, reason: not valid java name */
        public static int m37507new(String str, String str2) throws NumberFormatException {
            if (str == null || str2 == null) {
                throw new IllegalArgumentException("The input values cannot be null");
            }
            String[] strArrSplit = str.split("\\.");
            String[] strArrSplit2 = str2.split("\\.");
            for (int i = 0; i < strArrSplit.length && i < strArrSplit2.length; i++) {
                try {
                    int i2 = Integer.parseInt(strArrSplit[i]);
                    int i3 = Integer.parseInt(strArrSplit2[i]);
                    if (i2 != i3) {
                        return Integer.signum(i2 - i3);
                    }
                } catch (NumberFormatException e) {
                    throw new IllegalArgumentException("Unable to convert version segments into integers: " + strArrSplit[i] + " & " + strArrSplit2[i], e);
                }
            }
            return Integer.signum(strArrSplit.length - strArrSplit2.length);
        }

        /* renamed from: try, reason: not valid java name */
        private static Ccatch m37508try(Context context) {
            Cnew cnew = m37506const(context, new ArrayList(Cnew.m37714new(context))).get(0);
            if (Log.isLoggable(Cfor.f33455do, 3)) {
                String unused = Cfor.f33455do;
                String.format("Using '%s' provider for creating CronetEngine.Builder.", cnew);
            }
            return cnew.mo37636for().f33460do;
        }

        /* renamed from: break */
        public Cdo mo37454break(boolean z) {
            this.f33460do.mo7253this(z);
            return this;
        }

        /* renamed from: case, reason: not valid java name */
        public Cdo m37509case(boolean z) {
            this.f33460do.mo7251new(z);
            return this;
        }

        @Deprecated
        /* renamed from: catch */
        public Cdo mo37455catch(boolean z) {
            return this;
        }

        /* renamed from: class, reason: not valid java name */
        public String m37510class() {
            return this.f33460do.mo37479catch();
        }

        /* renamed from: do */
        public Cdo mo37458do(String str, Set<byte[]> set, boolean z, Date date) {
            this.f33460do.mo7245do(str, set, z, date);
            return this;
        }

        /* renamed from: else */
        public Cdo mo37459else(boolean z) {
            this.f33460do.mo7255try(z);
            return this;
        }

        /* renamed from: final */
        public Cdo mo37461final(Cif cif) {
            this.f33460do.mo7244const(cif);
            return this;
        }

        /* renamed from: for */
        public Cfor mo37463for() {
            return this.f33460do.mo7248for();
        }

        /* renamed from: goto */
        public Cdo mo37464goto(int i, long j) {
            this.f33460do.mo7242case(i, j);
            return this;
        }

        /* renamed from: if */
        public Cdo mo37465if(String str, int i, int i2) {
            this.f33460do.mo7250if(str, i, i2);
            return this;
        }

        /* renamed from: super */
        public Cdo mo37473super(String str) {
            this.f33460do.mo7247final(str);
            return this;
        }

        /* renamed from: this */
        public Cdo mo37475this(boolean z) {
            this.f33460do.mo7249goto(z);
            return this;
        }

        /* renamed from: throw */
        public Cdo mo37476throw(String str) {
            this.f33460do.mo7254throw(str);
            return this;
        }

        public Cdo(Ccatch ccatch) {
            this.f33460do = ccatch;
        }
    }

    /* renamed from: case, reason: not valid java name */
    public abstract URLConnection mo37499case(URL url) throws IOException;

    /* renamed from: else, reason: not valid java name */
    public abstract void mo37500else();

    /* renamed from: for, reason: not valid java name */
    public abstract byte[] mo37501for();

    /* renamed from: goto, reason: not valid java name */
    public abstract void mo37502goto(String str, boolean z);

    /* renamed from: if, reason: not valid java name */
    public abstract URLStreamHandlerFactory mo37503if();

    /* renamed from: new, reason: not valid java name */
    public abstract String mo37504new();

    /* renamed from: this, reason: not valid java name */
    public abstract void mo37505this();

    /* renamed from: try */
    public abstract Creturn.Cdo mo6663try(String str, Creturn.Cif cif, Executor executor);
}
