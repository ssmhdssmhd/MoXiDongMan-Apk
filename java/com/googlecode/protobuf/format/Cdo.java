package com.googlecode.protobuf.format;

import android.support.v4.i62;
import com.google.protobuf.Cprotected;
import com.google.protobuf.Message;
import com.google.protobuf.t1;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;

/* renamed from: com.googlecode.protobuf.format.do, reason: invalid class name */
/* loaded from: classes2.dex */
public abstract class Cdo extends Cgoto {
    /* renamed from: const */
    public abstract void mo22469const(CharSequence charSequence, Cprotected cprotected, Message.Builder builder) throws IOException;

    @Override // com.googlecode.protobuf.format.Cgoto
    /* renamed from: else */
    public void mo22553else(Message message, OutputStream outputStream, Charset charset) throws IOException {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(outputStream, charset);
        mo22471super(message, outputStreamWriter);
        outputStreamWriter.flush();
    }

    /* renamed from: final, reason: not valid java name */
    public void m22562final(Readable readable, Cprotected cprotected, Message.Builder builder) throws IOException {
        mo22469const(i62.m3298throw(readable), cprotected, builder);
    }

    @Override // com.googlecode.protobuf.format.Cgoto
    /* renamed from: new */
    public void mo22557new(InputStream inputStream, Charset charset, Cprotected cprotected, Message.Builder builder) throws IOException {
        m22562final(new InputStreamReader(inputStream, charset), cprotected, builder);
    }

    /* renamed from: super */
    public abstract void mo22471super(Message message, Appendable appendable) throws IOException;

    @Override // com.googlecode.protobuf.format.Cgoto
    /* renamed from: this */
    public void mo22561this(t1 t1Var, OutputStream outputStream, Charset charset) throws IOException {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(outputStream, charset);
        mo22472throw(t1Var, outputStreamWriter);
        outputStreamWriter.flush();
    }

    /* renamed from: throw */
    public abstract void mo22472throw(t1 t1Var, Appendable appendable) throws IOException;
}
