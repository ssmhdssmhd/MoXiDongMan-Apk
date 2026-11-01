package freemarker.core;

import android.support.v4.k52;
import android.support.v4.r52;
import freemarker.template.utility.Csuper;
import java.io.IOException;
import java.io.Writer;

/* loaded from: classes.dex */
public class u4 extends v4 {

    /* renamed from: if, reason: not valid java name */
    public static final u4 f24242if = new u4();

    @Override // freemarker.core.v4, freemarker.core.y1
    /* renamed from: case */
    public String mo28134case(String str) {
        return Csuper.m29302catch(str);
    }

    @Override // freemarker.core.v4, freemarker.core.y1
    /* renamed from: const */
    public boolean mo28135const(String str) {
        return str.equals("html") || str.equals("xml") || str.equals("xhtml");
    }

    @Override // freemarker.core.v4
    /* renamed from: default, reason: not valid java name and merged with bridge method [inline-methods] */
    public r52 mo28136static(String str, String str2) {
        return new r52(str, str2);
    }

    @Override // freemarker.core.v4, android.support.v4.e91
    /* renamed from: do */
    public String mo887do() {
        return "application/xhtml+xml";
    }

    @Override // freemarker.core.v4, android.support.v4.e91
    /* renamed from: if */
    public String mo889if() {
        return "XHTML";
    }

    @Override // freemarker.core.v4, freemarker.core.p, freemarker.core.y1
    /* renamed from: super */
    public void mo28137super(String str, Writer writer) throws k52, IOException {
        Csuper.m29303class(str, writer);
    }
}
