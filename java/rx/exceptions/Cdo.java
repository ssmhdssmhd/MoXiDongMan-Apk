package rx.exceptions;

import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;

/* renamed from: rx.exceptions.do, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Cdo extends RuntimeException {
    private static final long serialVersionUID = 3026362227162912146L;
    private Throwable cause;
    private final List<Throwable> exceptions;
    private final String message;

    /* renamed from: rx.exceptions.do$do, reason: invalid class name and collision with other inner class name */
    public static final class C0504do extends RuntimeException {
        public static final String MESSAGE = "Chain of Causes for CompositeException In Order Received =>";
        private static final long serialVersionUID = 3875212506787802066L;

        @Override // java.lang.Throwable
        public String getMessage() {
            return "Chain of Causes for CompositeException In Order Received =>";
        }
    }

    /* renamed from: rx.exceptions.do$for, reason: invalid class name */
    public static final class Cfor extends Cif {

        /* renamed from: do, reason: not valid java name */
        private final PrintStream f34358do;

        public Cfor(PrintStream printStream) {
            this.f34358do = printStream;
        }

        @Override // rx.exceptions.Cdo.Cif
        /* renamed from: do, reason: not valid java name */
        public Object mo38326do() {
            return this.f34358do;
        }

        @Override // rx.exceptions.Cdo.Cif
        /* renamed from: if, reason: not valid java name */
        public void mo38327if(Object obj) {
            this.f34358do.println(obj);
        }
    }

    /* renamed from: rx.exceptions.do$if, reason: invalid class name */
    public static abstract class Cif {
        /* renamed from: do */
        public abstract Object mo38326do();

        /* renamed from: if */
        public abstract void mo38327if(Object obj);
    }

    /* renamed from: rx.exceptions.do$new, reason: invalid class name */
    public static final class Cnew extends Cif {

        /* renamed from: do, reason: not valid java name */
        private final PrintWriter f34359do;

        public Cnew(PrintWriter printWriter) {
            this.f34359do = printWriter;
        }

        @Override // rx.exceptions.Cdo.Cif
        /* renamed from: do */
        public Object mo38326do() {
            return this.f34359do;
        }

        @Override // rx.exceptions.Cdo.Cif
        /* renamed from: if */
        public void mo38327if(Object obj) {
            this.f34359do.println(obj);
        }
    }

    @Deprecated
    public Cdo(String str, Collection<? extends Throwable> collection) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        ArrayList arrayList = new ArrayList();
        if (collection != null) {
            for (Throwable th : collection) {
                if (th instanceof Cdo) {
                    linkedHashSet.addAll(((Cdo) th).getExceptions());
                } else if (th != null) {
                    linkedHashSet.add(th);
                } else {
                    linkedHashSet.add(new NullPointerException());
                }
            }
        } else {
            linkedHashSet.add(new NullPointerException());
        }
        arrayList.addAll(linkedHashSet);
        List<Throwable> listUnmodifiableList = Collections.unmodifiableList(arrayList);
        this.exceptions = listUnmodifiableList;
        this.message = listUnmodifiableList.size() + " exceptions occurred. ";
    }

    /* renamed from: do, reason: not valid java name */
    private void m38322do(StringBuilder sb, Throwable th, String str) {
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
            m38322do(sb, th.getCause(), "");
        }
    }

    /* renamed from: for, reason: not valid java name */
    private Throwable m38323for(Throwable th) {
        Throwable cause = th.getCause();
        if (cause == null || cause == th) {
            return th;
        }
        while (true) {
            Throwable cause2 = cause.getCause();
            if (cause2 == null || cause2 == cause) {
                break;
            }
            cause = cause.getCause();
        }
        return cause;
    }

    /* renamed from: if, reason: not valid java name */
    private List<Throwable> m38324if(Throwable th) {
        ArrayList arrayList = new ArrayList();
        Throwable cause = th.getCause();
        if (cause != null && cause != th) {
            while (true) {
                arrayList.add(cause);
                Throwable cause2 = cause.getCause();
                if (cause2 == null || cause2 == cause) {
                    break;
                }
                cause = cause.getCause();
            }
        }
        return arrayList;
    }

    /* renamed from: new, reason: not valid java name */
    private void m38325new(Cif cif) {
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
            m38322do(sb, th, "\t");
            i++;
        }
        synchronized (cif.mo38326do()) {
            cif.mo38327if(sb.toString());
        }
    }

    @Override // java.lang.Throwable
    public synchronized Throwable getCause() {
        if (this.cause == null) {
            C0504do c0504do = new C0504do();
            HashSet hashSet = new HashSet();
            Iterator<Throwable> it = this.exceptions.iterator();
            Throwable thM38323for = c0504do;
            while (it.hasNext()) {
                Throwable next = it.next();
                if (!hashSet.contains(next)) {
                    hashSet.add(next);
                    for (Throwable th : m38324if(next)) {
                        if (hashSet.contains(th)) {
                            next = new RuntimeException("Duplicate found in causal chain so cropping to prevent loop ...");
                        } else {
                            hashSet.add(th);
                        }
                    }
                    try {
                        thM38323for.initCause(next);
                    } catch (Throwable unused) {
                    }
                    thM38323for = m38323for(thM38323for);
                }
            }
            this.cause = c0504do;
        }
        return this.cause;
    }

    public List<Throwable> getExceptions() {
        return this.exceptions;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.message;
    }

    @Override // java.lang.Throwable
    public void printStackTrace() {
        printStackTrace(System.err);
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream printStream) {
        m38325new(new Cfor(printStream));
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter printWriter) {
        m38325new(new Cnew(printWriter));
    }

    public Cdo(Collection<? extends Throwable> collection) {
        this(null, collection);
    }

    public Cdo(Throwable... thArr) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        ArrayList arrayList = new ArrayList();
        if (thArr != null) {
            for (Throwable th : thArr) {
                if (th instanceof Cdo) {
                    linkedHashSet.addAll(((Cdo) th).getExceptions());
                } else if (th != null) {
                    linkedHashSet.add(th);
                } else {
                    linkedHashSet.add(new NullPointerException());
                }
            }
        } else {
            linkedHashSet.add(new NullPointerException());
        }
        arrayList.addAll(linkedHashSet);
        List<Throwable> listUnmodifiableList = Collections.unmodifiableList(arrayList);
        this.exceptions = listUnmodifiableList;
        this.message = listUnmodifiableList.size() + " exceptions occurred. ";
    }
}
