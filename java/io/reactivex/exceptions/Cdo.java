package io.reactivex.exceptions;

import android.support.v4.b41;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;

/* renamed from: io.reactivex.exceptions.do, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cdo extends RuntimeException {
    private static final long serialVersionUID = 3026362227162912146L;
    private Throwable cause;
    private final List<Throwable> exceptions;
    private final String message;

    /* renamed from: io.reactivex.exceptions.do$do, reason: invalid class name and collision with other inner class name */
    public static final class C0268do extends RuntimeException {
        public static final String MESSAGE = "Chain of Causes for CompositeException In Order Received =>";
        private static final long serialVersionUID = 3875212506787802066L;

        @Override // java.lang.Throwable
        public String getMessage() {
            return "Chain of Causes for CompositeException In Order Received =>";
        }
    }

    /* renamed from: io.reactivex.exceptions.do$for, reason: invalid class name */
    public static final class Cfor extends Cif {

        /* renamed from: do, reason: not valid java name */
        private final PrintStream f25270do;

        public Cfor(PrintStream printStream) {
            this.f25270do = printStream;
        }

        @Override // io.reactivex.exceptions.Cdo.Cif
        /* renamed from: do, reason: not valid java name */
        public void mo29373do(Object obj) {
            this.f25270do.println(obj);
        }
    }

    /* renamed from: io.reactivex.exceptions.do$if, reason: invalid class name */
    public static abstract class Cif {
        /* renamed from: do */
        public abstract void mo29373do(Object obj);
    }

    /* renamed from: io.reactivex.exceptions.do$new, reason: invalid class name */
    public static final class Cnew extends Cif {

        /* renamed from: do, reason: not valid java name */
        private final PrintWriter f25271do;

        public Cnew(PrintWriter printWriter) {
            this.f25271do = printWriter;
        }

        @Override // io.reactivex.exceptions.Cdo.Cif
        /* renamed from: do */
        public void mo29373do(Object obj) {
            this.f25271do.println(obj);
        }
    }

    public Cdo(@b41 Throwable... thArr) {
        this(thArr == null ? Collections.singletonList(new NullPointerException("exceptions was null")) : Arrays.asList(thArr));
    }

    /* renamed from: do, reason: not valid java name */
    private void m29370do(StringBuilder sb, Throwable th, String str) {
        sb.append(str);
        sb.append(th);
        sb.append('\n');
        for (StackTraceElement stackTraceElement : th.getStackTrace()) {
            sb.append("\t\tat ");
            sb.append(stackTraceElement);
            sb.append('\n');
        }
        if (th.getCause() != null) {
            sb.append("\tCaused by: ");
            m29370do(sb, th.getCause(), "");
        }
    }

    /* renamed from: for, reason: not valid java name */
    private void m29371for(Cif cif) {
        StringBuilder sb = new StringBuilder(128);
        sb.append(this);
        sb.append('\n');
        for (StackTraceElement stackTraceElement : getStackTrace()) {
            sb.append("\tat ");
            sb.append(stackTraceElement);
            sb.append('\n');
        }
        int i = 1;
        for (Throwable th : this.exceptions) {
            sb.append("  ComposedException ");
            sb.append(i);
            sb.append(" :\n");
            m29370do(sb, th, "\t");
            i++;
        }
        cif.mo29373do(sb.toString());
    }

    /* renamed from: if, reason: not valid java name */
    private List<Throwable> m29372if(Throwable th) {
        ArrayList arrayList = new ArrayList();
        Throwable cause = th.getCause();
        if (cause != null && cause != th) {
            while (true) {
                arrayList.add(cause);
                Throwable cause2 = cause.getCause();
                if (cause2 == null || cause2 == cause) {
                    break;
                }
                cause = cause2;
            }
        }
        return arrayList;
    }

    @Override // java.lang.Throwable
    @b41
    public synchronized Throwable getCause() {
        if (this.cause == null) {
            C0268do c0268do = new C0268do();
            HashSet hashSet = new HashSet();
            Iterator<Throwable> it = this.exceptions.iterator();
            Throwable rootCause = c0268do;
            while (it.hasNext()) {
                Throwable next = it.next();
                if (!hashSet.contains(next)) {
                    hashSet.add(next);
                    for (Throwable th : m29372if(next)) {
                        if (hashSet.contains(th)) {
                            next = new RuntimeException("Duplicate found in causal chain so cropping to prevent loop ...");
                        } else {
                            hashSet.add(th);
                        }
                    }
                    try {
                        rootCause.initCause(next);
                    } catch (Throwable unused) {
                    }
                    rootCause = getRootCause(rootCause);
                }
            }
            this.cause = c0268do;
        }
        return this.cause;
    }

    @b41
    public List<Throwable> getExceptions() {
        return this.exceptions;
    }

    @Override // java.lang.Throwable
    @b41
    public String getMessage() {
        return this.message;
    }

    public Throwable getRootCause(Throwable th) {
        Throwable cause = th.getCause();
        if (cause == null || th == cause) {
            return th;
        }
        while (true) {
            Throwable cause2 = cause.getCause();
            if (cause2 == null || cause2 == cause) {
                break;
            }
            cause = cause2;
        }
        return cause;
    }

    @Override // java.lang.Throwable
    public void printStackTrace() {
        printStackTrace(System.err);
    }

    public int size() {
        return this.exceptions.size();
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream printStream) {
        m29371for(new Cfor(printStream));
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter printWriter) {
        m29371for(new Cnew(printWriter));
    }

    public Cdo(@b41 Iterable<? extends Throwable> iterable) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        ArrayList arrayList = new ArrayList();
        if (iterable != null) {
            for (Throwable th : iterable) {
                if (th instanceof Cdo) {
                    linkedHashSet.addAll(((Cdo) th).getExceptions());
                } else if (th != null) {
                    linkedHashSet.add(th);
                } else {
                    linkedHashSet.add(new NullPointerException("Throwable was null!"));
                }
            }
        } else {
            linkedHashSet.add(new NullPointerException("errors was null"));
        }
        if (!linkedHashSet.isEmpty()) {
            arrayList.addAll(linkedHashSet);
            List<Throwable> listUnmodifiableList = Collections.unmodifiableList(arrayList);
            this.exceptions = listUnmodifiableList;
            this.message = listUnmodifiableList.size() + " exceptions occurred. ";
            return;
        }
        throw new IllegalArgumentException("errors is empty");
    }
}
