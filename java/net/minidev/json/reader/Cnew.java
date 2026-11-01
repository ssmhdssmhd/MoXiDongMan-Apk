package net.minidev.json.reader;

import android.support.v4.o;
import android.support.v4.wo0;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import net.minidev.asm.Cdo;
import net.minidev.json.Cfor;
import net.minidev.json.Cif;
import org.slf4j.helpers.MessageFormatter;

/* renamed from: net.minidev.json.reader.new, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cnew implements JsonWriterI<Object> {

    /* renamed from: do, reason: not valid java name */
    private Map<String, String> f28268do = new HashMap();

    /* renamed from: do, reason: not valid java name */
    private String m31683do(String str) {
        String str2 = this.f28268do.get(str);
        return str2 != null ? str2 : str;
    }

    /* renamed from: if, reason: not valid java name */
    public void m31684if(String str, String str2) {
        this.f28268do.put(str, str2);
    }

    @Override // net.minidev.json.reader.JsonWriterI
    public <E> void writeJSONString(E e, Appendable appendable, Cfor cfor) throws ClassNotFoundException, SecurityException, IOException {
        try {
            Cdo cdoM31544try = Cdo.m31544try(e.getClass(), wo0.f7582do);
            appendable.append(MessageFormatter.DELIM_START);
            boolean z = false;
            for (o oVar : cdoM31544try.m31546case()) {
                Object objM31553if = cdoM31544try.m31553if(e, oVar.m5432if());
                if (objM31553if != null || !cfor.m31578else()) {
                    if (z) {
                        appendable.append(',');
                    } else {
                        z = true;
                    }
                    Cif.writeJSONKV(m31683do(oVar.m5430for()), objM31553if, appendable, cfor);
                }
            }
            appendable.append(MessageFormatter.DELIM_STOP);
        } catch (IOException e2) {
            throw e2;
        }
    }
}
