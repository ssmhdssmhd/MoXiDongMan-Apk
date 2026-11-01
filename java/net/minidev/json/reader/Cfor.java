package net.minidev.json.reader;

import android.support.v4.o;
import android.support.v4.wo0;
import java.io.IOException;
import net.minidev.asm.Cdo;
import net.minidev.json.Cif;
import org.slf4j.helpers.MessageFormatter;

/* renamed from: net.minidev.json.reader.for, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfor implements JsonWriterI<Object> {
    @Override // net.minidev.json.reader.JsonWriterI
    public <E> void writeJSONString(E e, Appendable appendable, net.minidev.json.Cfor cfor) throws ClassNotFoundException, SecurityException, IOException {
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
                    Cif.writeJSONKV(oVar.m5430for(), objM31553if, appendable, cfor);
                }
            }
            appendable.append(MessageFormatter.DELIM_STOP);
        } catch (IOException e2) {
            throw e2;
        }
    }
}
