package freemarker.template;

import android.support.v4.vm;
import freemarker.core.b4;
import freemarker.core.d0;
import freemarker.core.h0;
import freemarker.core.h4;
import freemarker.core.y4;
import freemarker.core.z4;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.StringWriter;

/* loaded from: classes3.dex */
public class TemplateException extends Exception {

    /* renamed from: this, reason: not valid java name */
    private static final String f25080this = "FTL stack trace (\"~\" means nesting-related):";
    private String blamedExpressionString;
    private boolean blamedExpressionStringCalculated;

    /* renamed from: case, reason: not valid java name */
    private transient String f25081case;
    private Integer columnNumber;
    private String description;

    /* renamed from: do, reason: not valid java name */
    private transient z4 f25082do;

    /* renamed from: else, reason: not valid java name */
    private transient Object f25083else;
    private Integer endColumnNumber;
    private Integer endLineNumber;

    /* renamed from: for, reason: not valid java name */
    private final transient h0 f25084for;

    /* renamed from: goto, reason: not valid java name */
    private transient ThreadLocal f25085goto;

    /* renamed from: if, reason: not valid java name */
    private final transient d0 f25086if;
    private Integer lineNumber;

    /* renamed from: new, reason: not valid java name */
    private transient b4[] f25087new;
    private boolean positionsCalculated;
    private String renderedFtlInstructionStackSnapshot;
    private String renderedFtlInstructionStackSnapshotTop;
    private String templateName;
    private String templateSourceName;

    /* renamed from: try, reason: not valid java name */
    private transient String f25088try;

    public interface StackTraceWriter {
        void print(Object obj);

        void printStandardStackTrace(Throwable th);

        void println();

        void println(Object obj);
    }

    /* renamed from: freemarker.template.TemplateException$do, reason: invalid class name */
    public static class Cdo implements StackTraceWriter {

        /* renamed from: do, reason: not valid java name */
        private final PrintStream f25089do;

        public Cdo(PrintStream printStream) {
            this.f25089do = printStream;
        }

        @Override // freemarker.template.TemplateException.StackTraceWriter
        public void print(Object obj) {
            this.f25089do.print(obj);
        }

        @Override // freemarker.template.TemplateException.StackTraceWriter
        public void printStandardStackTrace(Throwable th) {
            if (th instanceof TemplateException) {
                ((TemplateException) th).printStandardStackTrace(this.f25089do);
            } else {
                th.printStackTrace(this.f25089do);
            }
        }

        @Override // freemarker.template.TemplateException.StackTraceWriter
        public void println(Object obj) {
            this.f25089do.println(obj);
        }

        @Override // freemarker.template.TemplateException.StackTraceWriter
        public void println() {
            this.f25089do.println();
        }
    }

    /* renamed from: freemarker.template.TemplateException$if, reason: invalid class name */
    public static class Cif implements StackTraceWriter {

        /* renamed from: do, reason: not valid java name */
        private final PrintWriter f25090do;

        public Cif(PrintWriter printWriter) {
            this.f25090do = printWriter;
        }

        @Override // freemarker.template.TemplateException.StackTraceWriter
        public void print(Object obj) {
            this.f25090do.print(obj);
        }

        @Override // freemarker.template.TemplateException.StackTraceWriter
        public void printStandardStackTrace(Throwable th) {
            if (th instanceof TemplateException) {
                ((TemplateException) th).printStandardStackTrace(this.f25090do);
            } else {
                th.printStackTrace(this.f25090do);
            }
        }

        @Override // freemarker.template.TemplateException.StackTraceWriter
        public void println(Object obj) {
            this.f25090do.println(obj);
        }

        @Override // freemarker.template.TemplateException.StackTraceWriter
        public void println() {
            this.f25090do.println();
        }
    }

    public TemplateException(d0 d0Var) {
        this((String) null, (Exception) null, d0Var);
    }

    /* renamed from: case, reason: not valid java name */
    private void m29209case(StackTraceWriter stackTraceWriter, boolean z, boolean z2, boolean z3) {
        synchronized (stackTraceWriter) {
            if (z) {
                try {
                    stackTraceWriter.println("FreeMarker template error:");
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (z2) {
                String fTLInstructionStack = getFTLInstructionStack();
                if (fTLInstructionStack != null) {
                    stackTraceWriter.println(getMessageWithoutStackTop());
                    stackTraceWriter.println();
                    stackTraceWriter.println(y4.f24312do);
                    stackTraceWriter.println(f25080this);
                    stackTraceWriter.print(fTLInstructionStack);
                    stackTraceWriter.println(y4.f24312do);
                } else {
                    z2 = false;
                    z3 = true;
                }
            }
            if (z3) {
                if (z2) {
                    stackTraceWriter.println();
                    stackTraceWriter.println("Java stack trace (for programmers):");
                    stackTraceWriter.println(y4.f24312do);
                    synchronized (this.f25083else) {
                        if (this.f25085goto == null) {
                            this.f25085goto = new ThreadLocal();
                        }
                        this.f25085goto.set(Boolean.TRUE);
                    }
                    try {
                        stackTraceWriter.printStandardStackTrace(this);
                        this.f25085goto.set(Boolean.FALSE);
                    } catch (Throwable th2) {
                        this.f25085goto.set(Boolean.FALSE);
                        throw th2;
                    }
                } else {
                    stackTraceWriter.printStandardStackTrace(this);
                }
                if (getCause() != null && getCause().getCause() == null) {
                    try {
                        Throwable th3 = (Throwable) getCause().getClass().getMethod("getRootCause", vm.f7296if).invoke(getCause(), vm.f7294do);
                        if (th3 != null) {
                            stackTraceWriter.println("ServletException root cause: ");
                            stackTraceWriter.printStandardStackTrace(th3);
                        }
                    } catch (Throwable unused) {
                    }
                }
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    private void m29210do() {
        synchronized (this.f25083else) {
            if (!this.positionsCalculated) {
                h4 h4Var = this.f25084for;
                if (h4Var == null) {
                    h4[] h4VarArr = this.f25087new;
                    h4Var = (h4VarArr == null || h4VarArr.length == 0) ? null : h4VarArr[0];
                }
                if (h4Var != null && h4Var.getBeginLine() > 0) {
                    Cstatic template = h4Var.getTemplate();
                    this.templateName = template != null ? template.h1() : null;
                    this.templateSourceName = template != null ? template.q1() : null;
                    this.lineNumber = Integer.valueOf(h4Var.getBeginLine());
                    this.columnNumber = Integer.valueOf(h4Var.getBeginColumn());
                    this.endLineNumber = Integer.valueOf(h4Var.getEndLine());
                    this.endColumnNumber = Integer.valueOf(h4Var.getEndColumn());
                }
                this.positionsCalculated = true;
                m29213if();
            }
        }
    }

    /* renamed from: else, reason: not valid java name */
    private void m29211else() {
        String strM29212for = m29212for();
        if (strM29212for != null && strM29212for.length() != 0) {
            this.f25088try = strM29212for;
        } else if (getCause() != null) {
            this.f25088try = "No error description was specified for this error; low-level message: " + getCause().getClass().getName() + ": " + getCause().getMessage();
        } else {
            this.f25088try = "[No error description was available.]";
        }
        String strM29214new = m29214new();
        if (strM29214new == null) {
            this.f25081case = this.f25088try;
            return;
        }
        String str = this.f25088try + "\n\n" + y4.f24312do + "\n" + f25080this + "\n" + strM29214new + y4.f24312do;
        this.f25081case = str;
        this.f25088try = str.substring(0, this.f25088try.length());
    }

    /* renamed from: for, reason: not valid java name */
    private String m29212for() {
        String str;
        z4 z4Var;
        synchronized (this.f25083else) {
            if (this.description == null && (z4Var = this.f25082do) != null) {
                b4 b4VarM29215try = m29215try();
                d0 d0Var = this.f25086if;
                this.description = z4Var.m28399class(b4VarM29215try, d0Var != null ? d0Var.e() : true);
                this.f25082do = null;
            }
            str = this.description;
        }
        return str;
    }

    /* renamed from: if, reason: not valid java name */
    private void m29213if() {
        if (this.renderedFtlInstructionStackSnapshot == null || this.renderedFtlInstructionStackSnapshotTop == null) {
            return;
        }
        if (this.positionsCalculated || this.f25084for != null) {
            this.f25087new = null;
        }
    }

    /* renamed from: new, reason: not valid java name */
    private String m29214new() {
        String string;
        synchronized (this.f25083else) {
            b4[] b4VarArr = this.f25087new;
            if (b4VarArr == null && this.renderedFtlInstructionStackSnapshotTop == null) {
                return null;
            }
            if (this.renderedFtlInstructionStackSnapshotTop == null) {
                if (b4VarArr.length == 0) {
                    string = "";
                } else {
                    StringWriter stringWriter = new StringWriter();
                    y4.m28377const(this.f25087new, true, stringWriter);
                    string = stringWriter.toString();
                }
                if (this.renderedFtlInstructionStackSnapshotTop == null) {
                    this.renderedFtlInstructionStackSnapshotTop = string;
                    m29213if();
                }
            }
            return this.renderedFtlInstructionStackSnapshotTop.length() != 0 ? this.renderedFtlInstructionStackSnapshotTop : null;
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        this.f25083else = new Object();
        objectInputStream.defaultReadObject();
    }

    /* renamed from: try, reason: not valid java name */
    private b4 m29215try() {
        b4[] b4VarArr = this.f25087new;
        if (b4VarArr == null || b4VarArr.length <= 0) {
            return null;
        }
        return b4VarArr[0];
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException, ClassNotFoundException {
        getFTLInstructionStack();
        m29214new();
        m29212for();
        m29210do();
        getBlamedExpressionString();
        objectOutputStream.defaultWriteObject();
    }

    public h0 getBlamedExpression() {
        return this.f25084for;
    }

    public String getBlamedExpressionString() {
        String str;
        synchronized (this.f25083else) {
            if (!this.blamedExpressionStringCalculated) {
                h0 h0Var = this.f25084for;
                if (h0Var != null) {
                    this.blamedExpressionString = h0Var.mo27815for();
                }
                this.blamedExpressionStringCalculated = true;
            }
            str = this.blamedExpressionString;
        }
        return str;
    }

    @Deprecated
    public Exception getCauseException() {
        if (getCause() instanceof Exception) {
            return (Exception) getCause();
        }
        return new Exception("Wrapped to Exception: " + getCause(), getCause());
    }

    public Integer getColumnNumber() {
        Integer num;
        synchronized (this.f25083else) {
            if (!this.positionsCalculated) {
                m29210do();
            }
            num = this.columnNumber;
        }
        return num;
    }

    public Integer getEndColumnNumber() {
        Integer num;
        synchronized (this.f25083else) {
            if (!this.positionsCalculated) {
                m29210do();
            }
            num = this.endColumnNumber;
        }
        return num;
    }

    public Integer getEndLineNumber() {
        Integer num;
        synchronized (this.f25083else) {
            if (!this.positionsCalculated) {
                m29210do();
            }
            num = this.endLineNumber;
        }
        return num;
    }

    public d0 getEnvironment() {
        return this.f25086if;
    }

    public String getFTLInstructionStack() {
        synchronized (this.f25083else) {
            if (this.f25087new == null && this.renderedFtlInstructionStackSnapshot == null) {
                return null;
            }
            if (this.renderedFtlInstructionStackSnapshot == null) {
                StringWriter stringWriter = new StringWriter();
                PrintWriter printWriter = new PrintWriter(stringWriter);
                y4.m28377const(this.f25087new, false, printWriter);
                printWriter.close();
                if (this.renderedFtlInstructionStackSnapshot == null) {
                    this.renderedFtlInstructionStackSnapshot = stringWriter.toString();
                    m29213if();
                }
            }
            return this.renderedFtlInstructionStackSnapshot;
        }
    }

    public Integer getLineNumber() {
        Integer num;
        synchronized (this.f25083else) {
            if (!this.positionsCalculated) {
                m29210do();
            }
            num = this.lineNumber;
        }
        return num;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        String str;
        ThreadLocal threadLocal = this.f25085goto;
        if (threadLocal != null && threadLocal.get() == Boolean.TRUE) {
            return "[... Exception message was already printed; see it above ...]";
        }
        synchronized (this.f25083else) {
            if (this.f25081case == null) {
                m29211else();
            }
            str = this.f25081case;
        }
        return str;
    }

    public String getMessageWithoutStackTop() {
        String str;
        synchronized (this.f25083else) {
            if (this.f25088try == null) {
                m29211else();
            }
            str = this.f25088try;
        }
        return str;
    }

    @Deprecated
    public String getTemplateName() {
        String str;
        synchronized (this.f25083else) {
            if (!this.positionsCalculated) {
                m29210do();
            }
            str = this.templateName;
        }
        return str;
    }

    public String getTemplateSourceName() {
        String str;
        synchronized (this.f25083else) {
            if (!this.positionsCalculated) {
                m29210do();
            }
            str = this.templateSourceName;
        }
        return str;
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream printStream) {
        printStackTrace(printStream, true, true, true);
    }

    public void printStandardStackTrace(PrintStream printStream) {
        super.printStackTrace(printStream);
    }

    public TemplateException(String str, d0 d0Var) {
        this(str, (Exception) null, d0Var);
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter printWriter) {
        printStackTrace(printWriter, true, true, true);
    }

    public void printStandardStackTrace(PrintWriter printWriter) {
        super.printStackTrace(printWriter);
    }

    public TemplateException(Exception exc, d0 d0Var) {
        this((String) null, exc, d0Var);
    }

    public void printStackTrace(PrintWriter printWriter, boolean z, boolean z2, boolean z3) {
        synchronized (printWriter) {
            m29209case(new Cif(printWriter), z, z2, z3);
        }
    }

    public TemplateException(Throwable th, d0 d0Var) {
        this((String) null, th, d0Var);
    }

    public TemplateException(String str, Exception exc, d0 d0Var) {
        this(str, exc, d0Var, null, null);
    }

    public TemplateException(String str, Throwable th, d0 d0Var) {
        this(str, th, d0Var, null, null);
    }

    public void printStackTrace(PrintStream printStream, boolean z, boolean z2, boolean z3) {
        synchronized (printStream) {
            m29209case(new Cdo(printStream), z, z2, z3);
        }
    }

    public TemplateException(Throwable th, d0 d0Var, h0 h0Var, z4 z4Var) {
        this(null, th, d0Var, h0Var, z4Var);
    }

    private TemplateException(String str, Throwable th, d0 d0Var, h0 h0Var, z4 z4Var) {
        super(th);
        this.f25083else = new Object();
        d0Var = d0Var == null ? d0.w1() : d0Var;
        this.f25086if = d0Var;
        this.f25084for = h0Var;
        this.f25082do = z4Var;
        this.description = str;
        if (d0Var != null) {
            this.f25087new = y4.m28386this(d0Var);
        }
    }
}
