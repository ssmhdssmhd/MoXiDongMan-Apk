package freemarker.core;

import android.support.v4.k52;
import android.support.v4.n52;
import freemarker.template.utility.Csuper;
import java.io.IOException;
import java.io.Writer;

/* loaded from: classes.dex */
public class j3 extends p<n52> {

    /* renamed from: do, reason: not valid java name */
    public static final j3 f23919do = new j3();

    @Override // freemarker.core.y1
    /* renamed from: case, reason: not valid java name */
    public String mo28134case(String str) {
        return Csuper.m29301case(str);
    }

    @Override // freemarker.core.y1
    /* renamed from: const, reason: not valid java name */
    public boolean mo28135const(String str) {
        return str.equals("rtf");
    }

    @Override // android.support.v4.e91
    /* renamed from: do */
    public String mo887do() {
        return "application/rtf";
    }

    @Override // android.support.v4.e91
    /* renamed from: if */
    public String mo889if() {
        return "RTF";
    }

    @Override // freemarker.core.p, freemarker.core.y1
    /* renamed from: super, reason: not valid java name */
    public void mo28137super(String str, Writer writer) throws k52, IOException {
        Csuper.m29308else(str, writer);
    }

    @Override // freemarker.core.p
    /* renamed from: throws, reason: not valid java name and merged with bridge method [inline-methods] */
    public n52 mo28136static(String str, String str2) {
        return new n52(str, str2);
    }
}
