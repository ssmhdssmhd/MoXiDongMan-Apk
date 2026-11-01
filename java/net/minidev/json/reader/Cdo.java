package net.minidev.json.reader;

import java.io.IOException;
import net.minidev.json.Cfor;
import net.minidev.json.Cnew;

/* renamed from: net.minidev.json.reader.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo implements JsonWriterI<Object> {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // net.minidev.json.reader.JsonWriterI
    public <E> void writeJSONString(E e, Appendable appendable, Cfor cfor) throws IOException {
        cfor.m31580for(appendable);
        boolean z = false;
        for (Object obj : (Object[]) e) {
            if (z) {
                cfor.m31579final(appendable);
            } else {
                z = true;
            }
            Cnew.b(obj, appendable, cfor);
        }
        cfor.m31585new(appendable);
    }
}
