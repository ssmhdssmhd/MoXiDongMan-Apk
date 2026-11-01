package android.support.v4;

import freemarker.template.TemplateException;
import java.io.PrintStream;
import java.io.PrintWriter;

/* loaded from: classes.dex */
public class q12 extends TemplateException {
    public q12(freemarker.core.d0 d0Var) {
        super(d0Var);
    }

    @Override // freemarker.template.TemplateException, java.lang.Throwable
    public void printStackTrace(PrintWriter printWriter) {
        synchronized (printWriter) {
            String message = getMessage();
            printWriter.print("Encountered stop instruction");
            if (message == null || message.equals("")) {
                printWriter.println();
            } else {
                printWriter.println("\nCause given: " + message);
            }
            super.printStackTrace(printWriter);
        }
    }

    public q12(freemarker.core.d0 d0Var, String str) {
        super(str, d0Var);
    }

    @Override // freemarker.template.TemplateException, java.lang.Throwable
    public void printStackTrace(PrintStream printStream) {
        synchronized (printStream) {
            String message = getMessage();
            printStream.print("Encountered stop instruction");
            if (message != null && !message.equals("")) {
                printStream.println("\nCause given: " + message);
            } else {
                printStream.println();
            }
            super.printStackTrace(printStream);
        }
    }
}
