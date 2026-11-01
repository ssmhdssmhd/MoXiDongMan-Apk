package freemarker.core;

import android.support.v4.g52;
import android.support.v4.k52;
import java.io.IOException;
import java.io.Writer;

/* loaded from: classes.dex */
public final class n extends p<g52> {

    /* renamed from: do, reason: not valid java name */
    private final String f24009do;

    /* renamed from: for, reason: not valid java name */
    private final y1 f24010for;

    /* renamed from: if, reason: not valid java name */
    private final y1 f24011if;

    public n(y1 y1Var, y1 y1Var2) {
        this(null, y1Var, y1Var2);
    }

    @Override // freemarker.core.y1
    /* renamed from: case */
    public String mo28134case(String str) throws k52 {
        return this.f24011if.mo28134case(this.f24010for.mo28134case(str));
    }

    @Override // freemarker.core.p, freemarker.core.y1
    /* renamed from: catch, reason: not valid java name */
    public boolean mo28182catch() {
        return this.f24011if.mo28182catch();
    }

    @Override // freemarker.core.y1
    /* renamed from: const */
    public boolean mo28135const(String str) throws k52 {
        return this.f24011if.mo28135const(str);
    }

    /* renamed from: default, reason: not valid java name */
    public y1 m28183default() {
        return this.f24011if;
    }

    @Override // android.support.v4.e91
    /* renamed from: do */
    public String mo887do() {
        return this.f24011if.mo887do();
    }

    @Override // freemarker.core.p
    /* renamed from: extends, reason: not valid java name and merged with bridge method [inline-methods] */
    public g52 mo28136static(String str, String str2) {
        return new g52(str, str2, this);
    }

    @Override // freemarker.core.p, android.support.v4.e91
    /* renamed from: for */
    public boolean mo888for() {
        return this.f24011if.mo888for();
    }

    @Override // android.support.v4.e91
    /* renamed from: if */
    public String mo889if() {
        return this.f24009do;
    }

    @Override // freemarker.core.p, freemarker.core.y1
    /* renamed from: super */
    public void mo28137super(String str, Writer writer) throws k52, IOException {
        this.f24011if.mo28137super(this.f24010for.mo28134case(str), writer);
    }

    /* renamed from: throws, reason: not valid java name */
    public y1 m28185throws() {
        return this.f24010for;
    }

    public n(String str, y1 y1Var, y1 y1Var2) {
        String str2;
        if (str != null) {
            str2 = null;
        } else {
            str2 = y1Var.mo889if() + "{" + y1Var2.mo889if() + "}";
        }
        this.f24009do = str2;
        this.f24011if = y1Var;
        this.f24010for = y1Var2;
    }
}
