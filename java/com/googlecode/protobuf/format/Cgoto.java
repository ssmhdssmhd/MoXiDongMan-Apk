package com.googlecode.protobuf.format;

import com.google.protobuf.Cprotected;
import com.google.protobuf.Message;
import com.google.protobuf.t1;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;

/* renamed from: com.googlecode.protobuf.format.goto, reason: invalid class name */
/* loaded from: classes2.dex */
public abstract class Cgoto {

    /* renamed from: do, reason: not valid java name */
    private Charset f18002do = Charset.defaultCharset();

    /* renamed from: com.googlecode.protobuf.format.goto$do, reason: invalid class name */
    public static class Cdo extends IOException {
        private static final long serialVersionUID = 1;

        public Cdo(String str) {
            super(str);
        }
    }

    /* renamed from: break, reason: not valid java name */
    public String m22577break(Message message) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            mo22553else(message, byteArrayOutputStream, this.f18002do);
            byteArrayOutputStream.flush();
            return byteArrayOutputStream.toString();
        } catch (IOException e) {
            throw new RuntimeException("Writing to a StringBuilder threw an IOException (should never happen).", e);
        }
    }

    /* renamed from: case, reason: not valid java name */
    public void m22578case(Message message, OutputStream outputStream) throws IOException {
        mo22553else(message, outputStream, this.f18002do);
    }

    /* renamed from: catch, reason: not valid java name */
    public String m22579catch(t1 t1Var) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            mo22561this(t1Var, byteArrayOutputStream, this.f18002do);
            byteArrayOutputStream.flush();
            return byteArrayOutputStream.toString();
        } catch (IOException e) {
            throw new RuntimeException("Writing to a StringBuilder threw an IOException (should never happen).", e);
        }
    }

    /* renamed from: class, reason: not valid java name */
    public void m22580class(Charset charset) {
        this.f18002do = charset;
    }

    /* renamed from: do, reason: not valid java name */
    public Charset m22581do() {
        return this.f18002do;
    }

    /* renamed from: else */
    public abstract void mo22553else(Message message, OutputStream outputStream, Charset charset) throws IOException;

    /* renamed from: for, reason: not valid java name */
    public void m22582for(InputStream inputStream, Message.Builder builder) throws IOException {
        mo22557new(inputStream, this.f18002do, Cprotected.m20974static(), builder);
    }

    /* renamed from: goto, reason: not valid java name */
    public void m22583goto(t1 t1Var, OutputStream outputStream) throws IOException {
        mo22561this(t1Var, outputStream, this.f18002do);
    }

    /* renamed from: if, reason: not valid java name */
    public void m22584if(InputStream inputStream, Cprotected cprotected, Message.Builder builder) throws IOException {
        mo22557new(inputStream, this.f18002do, cprotected, builder);
    }

    /* renamed from: new */
    public abstract void mo22557new(InputStream inputStream, Charset charset, Cprotected cprotected, Message.Builder builder) throws IOException;

    /* renamed from: this */
    public abstract void mo22561this(t1 t1Var, OutputStream outputStream, Charset charset) throws IOException;

    /* renamed from: try, reason: not valid java name */
    public void m22585try(InputStream inputStream, Charset charset, Message.Builder builder) throws IOException {
        mo22557new(inputStream, charset, Cprotected.m20974static(), builder);
    }
}
