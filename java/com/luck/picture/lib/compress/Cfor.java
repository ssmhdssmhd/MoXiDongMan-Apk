package com.luck.picture.lib.compress;

import java.io.IOException;
import java.io.InputStream;

/* renamed from: com.luck.picture.lib.compress.for, reason: invalid class name */
/* loaded from: classes2.dex */
public abstract class Cfor implements InputStreamProvider {

    /* renamed from: do, reason: not valid java name */
    private InputStream f18628do;

    @Override // com.luck.picture.lib.compress.InputStreamProvider
    public void close() {
        InputStream inputStream = this.f18628do;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            } catch (Throwable th) {
                this.f18628do = null;
                throw th;
            }
            this.f18628do = null;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public abstract InputStream mo22982do() throws IOException;

    @Override // com.luck.picture.lib.compress.InputStreamProvider
    public InputStream open() throws IOException {
        close();
        InputStream inputStreamMo22982do = mo22982do();
        this.f18628do = inputStreamMo22982do;
        return inputStreamMo22982do;
    }
}
