package freemarker.cache;

import java.io.IOException;
import java.util.Locale;

/* renamed from: freemarker.cache.return, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Creturn {

    /* renamed from: do, reason: not valid java name */
    private final String f23390do;

    /* renamed from: for, reason: not valid java name */
    private final Object f23391for;

    /* renamed from: if, reason: not valid java name */
    private final Locale f23392if;

    public Creturn(String str, Locale locale, Object obj) {
        this.f23390do = str;
        this.f23392if = locale;
        this.f23391for = obj;
    }

    /* renamed from: case */
    public abstract Cstatic mo27743case(String str, Locale locale) throws IOException;

    /* renamed from: do, reason: not valid java name */
    public Cstatic m27757do() {
        return Cstatic.m27761do();
    }

    /* renamed from: for, reason: not valid java name */
    public Locale m27758for() {
        return this.f23392if;
    }

    /* renamed from: if, reason: not valid java name */
    public Object m27759if() {
        return this.f23391for;
    }

    /* renamed from: new, reason: not valid java name */
    public String m27760new() {
        return this.f23390do;
    }

    /* renamed from: try */
    public abstract Cstatic mo27744try(String str) throws IOException;
}
