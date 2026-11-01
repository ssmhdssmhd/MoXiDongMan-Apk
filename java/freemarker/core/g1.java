package freemarker.core;

import android.support.v4.k52;
import android.support.v4.ob2;
import freemarker.template.TemplateNumberModel;
import java.text.NumberFormat;

/* loaded from: classes.dex */
final class g1 extends Cconst {

    /* renamed from: do, reason: not valid java name */
    private final String f23796do;

    /* renamed from: if, reason: not valid java name */
    private final NumberFormat f23797if;

    public g1(NumberFormat numberFormat, String str) {
        this.f23796do = str;
        this.f23797if = numberFormat;
    }

    @Override // freemarker.core.Cconst
    /* renamed from: case */
    public String mo27939case(Number number) throws ob2 {
        try {
            return this.f23797if.format(number);
        } catch (ArithmeticException e) {
            throw new ob2("This format can't format the " + number + " number. Reason: " + e.getMessage(), e);
        }
    }

    @Override // android.support.v4.o52
    /* renamed from: do */
    public String mo5485do() {
        return this.f23796do;
    }

    /* renamed from: else, reason: not valid java name */
    public NumberFormat m28038else() {
        return this.f23797if;
    }

    @Override // freemarker.core.f4
    /* renamed from: for */
    public String mo28033for(TemplateNumberModel templateNumberModel) throws k52, ob2 {
        return mo27939case(e4.m27983for(templateNumberModel));
    }

    @Override // freemarker.core.f4
    /* renamed from: new */
    public boolean mo28035new() {
        return true;
    }
}
