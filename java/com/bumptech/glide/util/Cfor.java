package com.bumptech.glide.util;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.io.InputStream;
import java.util.Queue;

/* renamed from: com.bumptech.glide.util.for, reason: invalid class name */
/* loaded from: classes.dex */
public class Cfor extends InputStream {

    /* renamed from: for, reason: not valid java name */
    private static final Queue<Cfor> f10481for = Ccase.m12039case(0);

    /* renamed from: do, reason: not valid java name */
    private InputStream f10482do;

    /* renamed from: if, reason: not valid java name */
    private IOException f10483if;

    /* renamed from: do, reason: not valid java name */
    public static void m12069do() {
        while (true) {
            Queue<Cfor> queue = f10481for;
            if (queue.isEmpty()) {
                return;
            } else {
                queue.remove();
            }
        }
    }

    @NonNull
    /* renamed from: for, reason: not valid java name */
    public static Cfor m12070for(@NonNull InputStream inputStream) {
        Cfor cforPoll;
        Queue<Cfor> queue = f10481for;
        synchronized (queue) {
            cforPoll = queue.poll();
        }
        if (cforPoll == null) {
            cforPoll = new Cfor();
        }
        cforPoll.m12073try(inputStream);
        return cforPoll;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.f10482do.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f10482do.close();
    }

    @Nullable
    /* renamed from: if, reason: not valid java name */
    public IOException m12071if() {
        return this.f10483if;
    }

    @Override // java.io.InputStream
    public void mark(int i) {
        this.f10482do.mark(i);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.f10482do.markSupported();
    }

    /* renamed from: new, reason: not valid java name */
    public void m12072new() {
        this.f10483if = null;
        this.f10482do = null;
        Queue<Cfor> queue = f10481for;
        synchronized (queue) {
            queue.offer(this);
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        try {
            return this.f10482do.read(bArr);
        } catch (IOException e) {
            this.f10483if = e;
            return -1;
        }
    }

    @Override // java.io.InputStream
    public synchronized void reset() throws IOException {
        this.f10482do.reset();
    }

    @Override // java.io.InputStream
    public long skip(long j) {
        try {
            return this.f10482do.skip(j);
        } catch (IOException e) {
            this.f10483if = e;
            return 0L;
        }
    }

    /* renamed from: try, reason: not valid java name */
    public void m12073try(@NonNull InputStream inputStream) {
        this.f10482do = inputStream;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        try {
            return this.f10482do.read(bArr, i, i2);
        } catch (IOException e) {
            this.f10483if = e;
            return -1;
        }
    }

    @Override // java.io.InputStream
    public int read() {
        try {
            return this.f10482do.read();
        } catch (IOException e) {
            this.f10483if = e;
            return -1;
        }
    }
}
