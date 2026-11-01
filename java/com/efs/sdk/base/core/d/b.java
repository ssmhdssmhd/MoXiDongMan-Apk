package com.efs.sdk.base.core.d;

import com.efs.sdk.base.protocol.ILogProtocol;
import java.io.File;

/* loaded from: classes.dex */
public final class b {
    public a a;
    public c b = new c();
    public byte[] c;
    public File d;

    public b(String str, byte b) {
        this.a = new a(str, b);
    }

    private void d() {
        byte[] bArr;
        a aVar = this.a;
        int i = aVar.c;
        if (i == 0 && (bArr = this.c) != null) {
            aVar.f = bArr.length;
        } else if (i == 1 && this.d.exists()) {
            this.a.f = this.d.length();
        }
    }

    public final long a() {
        d();
        return this.a.f;
    }

    public final boolean b() {
        return !"none".equals(this.a.d);
    }

    public final void c() {
        this.b.a = true;
    }

    public final void b(int i) {
        this.a.c = i;
    }

    public final void a(String str) {
        this.a.d = str;
    }

    public final void a(int i) {
        this.a.e = i;
        d();
    }

    public final void a(byte[] bArr) {
        this.c = bArr;
        d();
    }

    public static b a(ILogProtocol iLogProtocol) {
        b bVar;
        b bVar2 = null;
        try {
            bVar = new b(iLogProtocol.getLogType(), iLogProtocol.getLogProtocol());
        } catch (Exception e) {
            e = e;
        }
        try {
            int bodyType = iLogProtocol.getBodyType();
            if (bodyType == 0) {
                bVar.b(0);
                bVar.a(iLogProtocol.generate());
            } else if (bodyType != 1) {
                com.efs.sdk.base.core.util.d.a("efs.base", "Can not support body type: " + iLogProtocol.getBodyType(), null);
            } else {
                bVar.b(1);
                bVar.d = new File(iLogProtocol.getFilePath());
            }
            return bVar;
        } catch (Exception e2) {
            e = e2;
            bVar2 = bVar;
            com.efs.sdk.base.core.util.d.b("efs.base", "log send error", e);
            return bVar2;
        }
    }
}
