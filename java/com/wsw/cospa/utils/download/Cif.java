package com.wsw.cospa.utils.download;

import java.io.IOException;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okio.Buffer;
import okio.BufferedSink;
import okio.ForwardingSink;
import okio.Okio;
import okio.Sink;

/* renamed from: com.wsw.cospa.utils.download.if, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cif extends RequestBody {

    /* renamed from: do, reason: not valid java name */
    private RequestBody f22617do;

    /* renamed from: for, reason: not valid java name */
    private BufferedSink f22618for;

    /* renamed from: if, reason: not valid java name */
    private ProgressRequestListener f22619if;

    /* renamed from: com.wsw.cospa.utils.download.if$do, reason: invalid class name */
    public class Cdo extends ForwardingSink {

        /* renamed from: do, reason: not valid java name */
        public long f22620do;

        /* renamed from: if, reason: not valid java name */
        public long f22622if;

        public Cdo(Sink sink) {
            super(sink);
            this.f22620do = 0L;
            this.f22622if = 0L;
        }

        @Override // okio.ForwardingSink, okio.Sink
        public void write(Buffer buffer, long j) throws IOException {
            super.write(buffer, j);
            if (this.f22622if == 0) {
                this.f22622if = Cif.this.contentLength();
            }
            this.f22620do += j;
            if (Cif.this.f22619if != null) {
                ProgressRequestListener progressRequestListener = Cif.this.f22619if;
                long j2 = this.f22620do;
                long j3 = this.f22622if;
                progressRequestListener.onRequestProgress(j2, j3, j2 == j3);
            }
        }
    }

    public Cif(RequestBody requestBody, ProgressRequestListener progressRequestListener) {
        this.f22617do = requestBody;
        this.f22619if = progressRequestListener;
    }

    /* renamed from: if, reason: not valid java name */
    private Sink m26861if(Sink sink) {
        return new Cdo(sink);
    }

    @Override // okhttp3.RequestBody
    public long contentLength() throws IOException {
        return this.f22617do.contentLength();
    }

    @Override // okhttp3.RequestBody
    public MediaType contentType() {
        return this.f22617do.contentType();
    }

    @Override // okhttp3.RequestBody
    public void writeTo(BufferedSink bufferedSink) throws IOException {
        if (this.f22618for == null) {
            this.f22618for = Okio.buffer(m26861if(bufferedSink));
        }
        this.f22617do.writeTo(this.f22618for);
        this.f22618for.flush();
    }
}
