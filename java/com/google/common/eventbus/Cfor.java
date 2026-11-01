package com.google.common.eventbus;

import android.support.v4.a32;
import android.support.v4.af1;
import android.support.v4.dx;
import android.support.v4.o8;
import com.google.common.base.Csuper;
import com.google.common.util.concurrent.Cimplements;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.Executor;
import java.util.logging.Level;
import java.util.logging.Logger;

@o8
/* renamed from: com.google.common.eventbus.for, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cfor {

    /* renamed from: case, reason: not valid java name */
    private static final Logger f14929case = Logger.getLogger(Cfor.class.getName());

    /* renamed from: do, reason: not valid java name */
    private final String f14930do;

    /* renamed from: for, reason: not valid java name */
    private final SubscriberExceptionHandler f14931for;

    /* renamed from: if, reason: not valid java name */
    private final Executor f14932if;

    /* renamed from: new, reason: not valid java name */
    private final Ctry f14933new;

    /* renamed from: try, reason: not valid java name */
    private final Cif f14934try;

    /* renamed from: com.google.common.eventbus.for$do, reason: invalid class name */
    public static final class Cdo implements SubscriberExceptionHandler {

        /* renamed from: do, reason: not valid java name */
        public static final Cdo f14935do = new Cdo();

        /* renamed from: do, reason: not valid java name */
        private static Logger m16623do(a32 a32Var) {
            return Logger.getLogger(Cfor.class.getName() + "." + a32Var.m31if().m16619for());
        }

        /* renamed from: if, reason: not valid java name */
        private static String m16624if(a32 a32Var) {
            Method methodM32new = a32Var.m32new();
            return "Exception thrown by subscriber method " + methodM32new.getName() + '(' + methodM32new.getParameterTypes()[0].getName() + ") on subscriber " + a32Var.m30for() + " when dispatching event: " + a32Var.m29do();
        }

        @Override // com.google.common.eventbus.SubscriberExceptionHandler
        public void handleException(Throwable th, a32 a32Var) {
            Logger loggerM16623do = m16623do(a32Var);
            Level level = Level.SEVERE;
            if (loggerM16623do.isLoggable(level)) {
                loggerM16623do.log(level, m16624if(a32Var), th);
            }
        }
    }

    public Cfor() {
        this("default");
    }

    /* renamed from: case, reason: not valid java name */
    public void m16617case(Object obj) {
        this.f14933new.m16651this(obj);
    }

    /* renamed from: do, reason: not valid java name */
    public final Executor m16618do() {
        return this.f14932if;
    }

    /* renamed from: for, reason: not valid java name */
    public final String m16619for() {
        return this.f14930do;
    }

    /* renamed from: if, reason: not valid java name */
    public void m16620if(Throwable th, a32 a32Var) {
        af1.m205continue(th);
        af1.m205continue(a32Var);
        try {
            this.f14931for.handleException(th, a32Var);
        } catch (Throwable th2) {
            f14929case.log(Level.SEVERE, String.format(Locale.ROOT, "Exception %s thrown while handling exception: %s", th2, th), th2);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public void m16621new(Object obj) {
        Iterator<Cnew> itM16648case = this.f14933new.m16648case(obj);
        if (itM16648case.hasNext()) {
            this.f14934try.mo16628do(obj, itM16648case);
        } else {
            if (obj instanceof dx) {
                return;
            }
            m16621new(new dx(this, obj));
        }
    }

    public String toString() {
        return Csuper.m15184for(this).m15202throw(this.f14930do).toString();
    }

    /* renamed from: try, reason: not valid java name */
    public void m16622try(Object obj) {
        this.f14933new.m16650goto(obj);
    }

    public Cfor(String str) {
        this(str, Cimplements.m18221for(), Cif.m16627new(), Cdo.f14935do);
    }

    public Cfor(SubscriberExceptionHandler subscriberExceptionHandler) {
        this("default", Cimplements.m18221for(), Cif.m16627new(), subscriberExceptionHandler);
    }

    public Cfor(String str, Executor executor, Cif cif, SubscriberExceptionHandler subscriberExceptionHandler) {
        this.f14933new = new Ctry(this);
        this.f14930do = (String) af1.m205continue(str);
        this.f14932if = (Executor) af1.m205continue(executor);
        this.f14934try = (Cif) af1.m205continue(cif);
        this.f14931for = (SubscriberExceptionHandler) af1.m205continue(subscriberExceptionHandler);
    }
}
