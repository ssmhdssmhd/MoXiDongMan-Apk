package freemarker.core;

import android.support.v4.j52;
import android.support.v4.k52;
import fi.iki.elonen.NanoHTTPD;
import freemarker.template.utility.Csuper;
import java.io.IOException;
import java.io.Writer;

/* loaded from: classes.dex */
public class q0 extends p<j52> {

    /* renamed from: do, reason: not valid java name */
    public static final q0 f24076do = new q0();

    @Override // freemarker.core.y1
    /* renamed from: case */
    public String mo28134case(String str) {
        return Csuper.m29302catch(str);
    }

    @Override // freemarker.core.y1
    /* renamed from: const */
    public boolean mo28135const(String str) {
        return str.equals("html") || str.equals("xml") || str.equals("xhtml");
    }

    @Override // android.support.v4.e91
    /* renamed from: do */
    public String mo887do() {
        return NanoHTTPD.MIME_HTML;
    }

    @Override // android.support.v4.e91
    /* renamed from: if */
    public String mo889if() {
        return "HTML";
    }

    @Override // freemarker.core.p, freemarker.core.y1
    /* renamed from: super */
    public void mo28137super(String str, Writer writer) throws k52, IOException {
        Csuper.m29303class(str, writer);
    }

    @Override // freemarker.core.p
    /* renamed from: throws, reason: not valid java name and merged with bridge method [inline-methods] */
    public j52 mo28136static(String str, String str2) {
        return new j52(str, str2);
    }
}
