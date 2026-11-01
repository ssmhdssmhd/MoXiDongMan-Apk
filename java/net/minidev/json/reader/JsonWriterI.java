package net.minidev.json.reader;

import java.io.IOException;
import net.minidev.json.Cfor;

/* loaded from: classes3.dex */
public interface JsonWriterI<T> {
    <E extends T> void writeJSONString(E e, Appendable appendable, Cfor cfor) throws IOException;
}
