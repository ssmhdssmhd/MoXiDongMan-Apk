package freemarker.template;

import freemarker.core.d0;

/* loaded from: classes3.dex */
public interface AttemptExceptionReporter {
    public static final AttemptExceptionReporter LOG_ERROR_REPORTER = new Csuper(false);
    public static final AttemptExceptionReporter LOG_WARN_REPORTER = new Csuper(true);

    void report(TemplateException templateException, d0 d0Var);
}
