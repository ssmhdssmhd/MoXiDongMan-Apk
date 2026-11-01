package android.support.v4;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Locale;
import org.apache.commons.lang3.time.Cfor;
import org.seimicrawler.xpath.core.Function;

/* loaded from: classes.dex */
public class kd0 implements Function {
    @Override // org.seimicrawler.xpath.core.Function
    public dj2 call(es1 es1Var, List<dj2> list) {
        String strM1368else = list.get(0).m1368else();
        String strM1368else2 = list.get(1).m1368else();
        try {
            return (list.size() <= 2 || list.get(2) == null) ? dj2.m1362break(Cfor.getInstance(strM1368else2).parse(strM1368else)) : dj2.m1362break(new SimpleDateFormat(strM1368else2, Locale.forLanguageTag(list.get(2).m1368else())).parse(strM1368else));
        } catch (ParseException e) {
            throw new hj2("date format exception!", e);
        }
    }

    @Override // org.seimicrawler.xpath.core.Function
    public String name() {
        return "format-date";
    }
}
