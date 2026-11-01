package freemarker.template.utility;

import freemarker.template.TemplateTransformModel;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.util.Map;

/* renamed from: freemarker.template.utility.this, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cthis implements TemplateTransformModel {

    /* renamed from: freemarker.template.utility.this$do, reason: invalid class name */
    public class Cdo extends Writer {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ StringBuilder f25243do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Writer f25245if;

        public Cdo(StringBuilder sb, Writer writer) {
            this.f25243do = sb;
            this.f25245if = writer;
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            StringReader stringReader = new StringReader(this.f25243do.toString());
            StringWriter stringWriter = new StringWriter();
            Cthis.this.m29338do(stringReader, stringWriter);
            this.f25245if.write(stringWriter.toString());
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() throws IOException {
            this.f25245if.flush();
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i, int i2) {
            this.f25243do.append(cArr, i, i2);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public void m29338do(Reader reader, Writer writer) throws IOException {
        BufferedReader bufferedReader = reader instanceof BufferedReader ? (BufferedReader) reader : new BufferedReader(reader);
        PrintWriter printWriter = writer instanceof PrintWriter ? (PrintWriter) writer : new PrintWriter(writer);
        String line = bufferedReader.readLine();
        if (line != null && line.length() > 0) {
            printWriter.println(line);
        }
        while (true) {
            String line2 = bufferedReader.readLine();
            if (line2 == null) {
                return;
            } else {
                printWriter.println(line2);
            }
        }
    }

    @Override // freemarker.template.TemplateTransformModel
    public Writer getWriter(Writer writer, Map map) {
        return new Cdo(new StringBuilder(), writer);
    }
}
