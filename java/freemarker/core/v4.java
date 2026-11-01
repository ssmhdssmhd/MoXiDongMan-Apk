package freemarker.core;

import android.support.v4.k52;
import android.support.v4.s52;
import freemarker.template.utility.Csuper;
import java.io.IOException;
import java.io.Writer;

/* loaded from: classes.dex */
public class v4 extends p<s52> {

    /* renamed from: do, reason: not valid java name */
    public static final v4 f24252do = new v4();

    @Override // freemarker.core.y1
    /* renamed from: case */
    public String mo28134case(String str) {
        return Csuper.m29304const(str);
    }

    @Override // freemarker.core.y1
    /* renamed from: const */
    public boolean mo28135const(String str) {
        return str.equals("xml");
    }

    @Override // android.support.v4.e91
    /* renamed from: do */
    public String mo887do() {
        return "application/xml";
    }

    @Override // android.support.v4.e91
    /* renamed from: if */
    public String mo889if() {
        return "XML";
    }

    @Override // freemarker.core.p, freemarker.core.y1
    /* renamed from: super */
    public void mo28137super(String str, Writer writer) throws k52, IOException {
        Csuper.m29310final(str, writer);
    }

    @Override // freemarker.core.p
    /* renamed from: throws, reason: merged with bridge method [inline-methods] */
    public s52 mo28136static(String str, String str2) {
        return new s52(str, str2);
    }
}
