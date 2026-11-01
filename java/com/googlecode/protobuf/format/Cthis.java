package com.googlecode.protobuf.format;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.dataformat.smile.SmileFactory;
import com.fasterxml.jackson.dataformat.smile.SmileGenerator;
import com.google.protobuf.Cprotected;
import com.google.protobuf.Message;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;

/* renamed from: com.googlecode.protobuf.format.this, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cthis extends Celse {

    /* renamed from: try, reason: not valid java name */
    private static SmileFactory f18010try = new SmileFactory();

    @Override // com.googlecode.protobuf.format.Celse
    /* renamed from: const */
    public JsonGenerator mo22569const(OutputStream outputStream) throws IOException {
        SmileGenerator smileGeneratorCreateGenerator = f18010try.createGenerator(outputStream);
        smileGeneratorCreateGenerator.enable(SmileGenerator.Feature.WRITE_HEADER);
        smileGeneratorCreateGenerator.enable(SmileGenerator.Feature.WRITE_END_MARKER);
        smileGeneratorCreateGenerator.disable(JsonGenerator.Feature.AUTO_CLOSE_TARGET);
        return smileGeneratorCreateGenerator;
    }

    @Override // com.googlecode.protobuf.format.Celse, com.googlecode.protobuf.format.Cgoto
    /* renamed from: new */
    public void mo22557new(InputStream inputStream, Charset charset, Cprotected cprotected, Message.Builder builder) throws IOException, JsonParseException {
        m22571import(f18010try.createParser(inputStream), cprotected, builder);
    }
}
