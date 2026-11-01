package com.efs.sdk.base.core.util.b;

import androidx.annotation.Nullable;
import com.efs.sdk.base.http.HttpEnv;
import com.efs.sdk.base.http.HttpResponse;
import java.io.File;
import java.util.Map;

/* loaded from: classes.dex */
public final class b implements com.efs.sdk.base.core.util.a.c<HttpResponse> {
    public String a;
    public Map<String, String> b;
    public byte[] c;
    public File d;
    public String e;
    public Map<String, String> f;
    public boolean g = false;

    @Override // com.efs.sdk.base.core.util.a.c
    @Nullable
    public final /* synthetic */ HttpResponse a() {
        String str = this.e;
        str.hashCode();
        if (str.equals("get")) {
            return HttpEnv.getInstance().getHttpUtil().get(this.a, this.b);
        }
        if (str.equals("post")) {
            byte[] bArr = this.c;
            return (bArr == null || bArr.length <= 0) ? HttpEnv.getInstance().getHttpUtil().post(this.a, this.b, this.d) : this.g ? HttpEnv.getInstance().getHttpUtil().postAsFile(this.a, this.b, this.c) : HttpEnv.getInstance().getHttpUtil().post(this.a, this.b, this.c);
        }
        com.efs.sdk.base.core.util.d.b("efs.util.http", "request not support method '" + this.e + "'", null);
        return null;
    }
}
