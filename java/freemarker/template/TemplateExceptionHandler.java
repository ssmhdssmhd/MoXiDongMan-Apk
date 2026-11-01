package freemarker.template;

import freemarker.core.d0;
import freemarker.template.utility.Csuper;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;

/* loaded from: classes3.dex */
public interface TemplateExceptionHandler {
    public static final TemplateExceptionHandler IGNORE_HANDLER = new Cdo();
    public static final TemplateExceptionHandler RETHROW_HANDLER = new Cif();
    public static final TemplateExceptionHandler DEBUG_HANDLER = new Cfor();
    public static final TemplateExceptionHandler HTML_DEBUG_HANDLER = new Cnew();

    /* renamed from: freemarker.template.TemplateExceptionHandler$do, reason: invalid class name */
    public static class Cdo implements TemplateExceptionHandler {
        @Override // freemarker.template.TemplateExceptionHandler
        public void handleTemplateException(TemplateException templateException, d0 d0Var, Writer writer) {
        }
    }

    /* renamed from: freemarker.template.TemplateExceptionHandler$for, reason: invalid class name */
    public static class Cfor implements TemplateExceptionHandler {
        @Override // freemarker.template.TemplateExceptionHandler
        public void handleTemplateException(TemplateException templateException, d0 d0Var, Writer writer) throws TemplateException {
            if (d0Var.V2()) {
                throw templateException;
            }
            PrintWriter printWriter = writer instanceof PrintWriter ? (PrintWriter) writer : new PrintWriter(writer);
            printWriter.print("FreeMarker template error (DEBUG mode; use RETHROW in production!):\n");
            templateException.printStackTrace(printWriter, false, true, true);
            printWriter.flush();
            throw templateException;
        }
    }

    /* renamed from: freemarker.template.TemplateExceptionHandler$if, reason: invalid class name */
    public static class Cif implements TemplateExceptionHandler {
        @Override // freemarker.template.TemplateExceptionHandler
        public void handleTemplateException(TemplateException templateException, d0 d0Var, Writer writer) throws TemplateException {
            throw templateException;
        }
    }

    /* renamed from: freemarker.template.TemplateExceptionHandler$new, reason: invalid class name */
    public static class Cnew implements TemplateExceptionHandler {

        /* renamed from: do, reason: not valid java name */
        private static final String f25091do = "color:#A80000; font-size:12px; font-style:normal; font-variant:normal; font-weight:normal; text-decoration:none; text-transform: none";

        @Override // freemarker.template.TemplateExceptionHandler
        public void handleTemplateException(TemplateException templateException, d0 d0Var, Writer writer) throws TemplateException {
            if (d0Var.V2()) {
                throw templateException;
            }
            boolean z = writer instanceof PrintWriter;
            PrintWriter printWriter = z ? (PrintWriter) writer : new PrintWriter(writer);
            try {
                printWriter.print("<!-- FREEMARKER ERROR MESSAGE STARTS HERE --><!-- ]]> --><script language=javascript>//\"></script><script language=javascript>//'></script><script language=javascript>//\"></script><script language=javascript>//'></script></title></xmp></script></noscript></style></object></head></pre></table></form></table></table></table></a></u></i></b><div align='left' style='background-color:#FFFF7C; display:block; border-top:double; padding:4px; margin:0; font-family:Arial,sans-serif; ");
                printWriter.print(f25091do);
                printWriter.print("'><b style='font-size:12px; font-style:normal; font-weight:bold; text-decoration:none; text-transform: none;'>FreeMarker template error  (HTML_DEBUG mode; use RETHROW in production!)</b><pre style='display:block; background: none; border: 0; margin:0; padding: 0;font-family:monospace; ");
                printWriter.print(f25091do);
                printWriter.println("; white-space: pre-wrap; white-space: -moz-pre-wrap; white-space: -pre-wrap; white-space: -o-pre-wrap; word-wrap: break-word;'>");
                StringWriter stringWriter = new StringWriter();
                PrintWriter printWriter2 = new PrintWriter(stringWriter);
                templateException.printStackTrace(printWriter2, false, true, true);
                printWriter2.close();
                printWriter.println();
                printWriter.println(Csuper.m29332throw(stringWriter.toString()));
                printWriter.println("</pre></div></html>");
                printWriter.flush();
                if (!z) {
                    throw templateException;
                }
                throw templateException;
            } finally {
                if (!z) {
                    printWriter.close();
                }
            }
        }
    }

    void handleTemplateException(TemplateException templateException, d0 d0Var, Writer writer) throws TemplateException;
}
