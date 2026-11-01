package com.bumptech.glide.load.engine;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.Key;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.bumptech.glide.load.engine.catch, reason: invalid class name */
/* loaded from: classes.dex */
public final class Ccatch extends Exception {

    /* renamed from: do, reason: not valid java name */
    private static final StackTraceElement[] f9739do = new StackTraceElement[0];
    private static final long serialVersionUID = 1;
    private final List<Throwable> causes;
    private Class<?> dataClass;
    private com.bumptech.glide.load.Cdo dataSource;
    private String detailMessage;

    @Nullable
    private Exception exception;
    private Key key;

    public Ccatch(String str) {
        this(str, (List<Throwable>) Collections.emptyList());
    }

    /* renamed from: do, reason: not valid java name */
    private void m11459do(Throwable th, List<Throwable> list) {
        if (!(th instanceof Ccatch)) {
            list.add(th);
            return;
        }
        Iterator<Throwable> it = ((Ccatch) th).getCauses().iterator();
        while (it.hasNext()) {
            m11459do(it.next(), list);
        }
    }

    /* renamed from: for, reason: not valid java name */
    private static void m11460for(List<Throwable> list, Appendable appendable) throws IOException {
        int size = list.size();
        int i = 0;
        while (i < size) {
            int i2 = i + 1;
            appendable.append("Cause (").append(String.valueOf(i2)).append(" of ").append(String.valueOf(size)).append("): ");
            Throwable th = list.get(i);
            if (th instanceof Ccatch) {
                ((Ccatch) th).m11463try(appendable);
            } else {
                m11462new(th, appendable);
            }
            i = i2;
        }
    }

    /* renamed from: if, reason: not valid java name */
    private static void m11461if(List<Throwable> list, Appendable appendable) {
        try {
            m11460for(list, appendable);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: new, reason: not valid java name */
    private static void m11462new(Throwable th, Appendable appendable) throws IOException {
        try {
            appendable.append(th.getClass().toString()).append(": ").append(th.getMessage()).append('\n');
        } catch (IOException unused) {
            throw new RuntimeException(th);
        }
    }

    /* renamed from: try, reason: not valid java name */
    private void m11463try(Appendable appendable) throws IOException {
        m11462new(this, appendable);
        m11461if(getCauses(), new Cdo(appendable));
    }

    @Override // java.lang.Throwable
    public Throwable fillInStackTrace() {
        return this;
    }

    public List<Throwable> getCauses() {
        return this.causes;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        StringBuilder sb = new StringBuilder(71);
        sb.append(this.detailMessage);
        sb.append(this.dataClass != null ? ", " + this.dataClass : "");
        sb.append(this.dataSource != null ? ", " + this.dataSource : "");
        sb.append(this.key != null ? ", " + this.key : "");
        List<Throwable> rootCauses = getRootCauses();
        if (rootCauses.isEmpty()) {
            return sb.toString();
        }
        if (rootCauses.size() == 1) {
            sb.append("\nThere was 1 cause:");
        } else {
            sb.append("\nThere were ");
            sb.append(rootCauses.size());
            sb.append(" causes:");
        }
        for (Throwable th : rootCauses) {
            sb.append('\n');
            sb.append(th.getClass().getName());
            sb.append('(');
            sb.append(th.getMessage());
            sb.append(')');
        }
        sb.append("\n call GlideException#logRootCauses(String) for more detail");
        return sb.toString();
    }

    @Nullable
    public Exception getOrigin() {
        return this.exception;
    }

    public List<Throwable> getRootCauses() {
        ArrayList arrayList = new ArrayList();
        m11459do(this, arrayList);
        return arrayList;
    }

    public void logRootCauses(String str) {
        List<Throwable> rootCauses = getRootCauses();
        int size = rootCauses.size();
        int i = 0;
        while (i < size) {
            StringBuilder sb = new StringBuilder();
            sb.append("Root cause (");
            int i2 = i + 1;
            sb.append(i2);
            sb.append(" of ");
            sb.append(size);
            sb.append(")");
            rootCauses.get(i);
            i = i2;
        }
    }

    @Override // java.lang.Throwable
    public void printStackTrace() throws IOException {
        printStackTrace(System.err);
    }

    public void setLoggingDetails(Key key, com.bumptech.glide.load.Cdo cdo) {
        setLoggingDetails(key, cdo, null);
    }

    public void setOrigin(@Nullable Exception exc) {
        this.exception = exc;
    }

    public Ccatch(String str, Throwable th) {
        this(str, (List<Throwable>) Collections.singletonList(th));
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream printStream) throws IOException {
        m11463try(printStream);
    }

    public void setLoggingDetails(Key key, com.bumptech.glide.load.Cdo cdo, Class<?> cls) {
        this.key = key;
        this.dataSource = cdo;
        this.dataClass = cls;
    }

    public Ccatch(String str, List<Throwable> list) {
        this.detailMessage = str;
        setStackTrace(f9739do);
        this.causes = list;
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter printWriter) throws IOException {
        m11463try(printWriter);
    }

    /* renamed from: com.bumptech.glide.load.engine.catch$do, reason: invalid class name */
    public static final class Cdo implements Appendable {

        /* renamed from: for, reason: not valid java name */
        private static final String f9740for = "";

        /* renamed from: new, reason: not valid java name */
        private static final String f9741new = "  ";

        /* renamed from: do, reason: not valid java name */
        private final Appendable f9742do;

        /* renamed from: if, reason: not valid java name */
        private boolean f9743if = true;

        public Cdo(Appendable appendable) {
            this.f9742do = appendable;
        }

        @NonNull
        /* renamed from: do, reason: not valid java name */
        private CharSequence m11464do(@Nullable CharSequence charSequence) {
            return charSequence == null ? "" : charSequence;
        }

        @Override // java.lang.Appendable
        public Appendable append(char c) throws IOException {
            if (this.f9743if) {
                this.f9743if = false;
                this.f9742do.append(f9741new);
            }
            this.f9743if = c == '\n';
            this.f9742do.append(c);
            return this;
        }

        @Override // java.lang.Appendable
        public Appendable append(@Nullable CharSequence charSequence) throws IOException {
            CharSequence charSequenceM11464do = m11464do(charSequence);
            return append(charSequenceM11464do, 0, charSequenceM11464do.length());
        }

        @Override // java.lang.Appendable
        public Appendable append(@Nullable CharSequence charSequence, int i, int i2) throws IOException {
            CharSequence charSequenceM11464do = m11464do(charSequence);
            boolean z = false;
            if (this.f9743if) {
                this.f9743if = false;
                this.f9742do.append(f9741new);
            }
            if (charSequenceM11464do.length() > 0 && charSequenceM11464do.charAt(i2 - 1) == '\n') {
                z = true;
            }
            this.f9743if = z;
            this.f9742do.append(charSequenceM11464do, i, i2);
            return this;
        }
    }
}
