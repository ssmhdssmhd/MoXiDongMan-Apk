package com.efs.sdk.base.core.b;

import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.Base64;
import androidx.annotation.NonNull;
import com.efs.sdk.base.core.b.a;
import com.efs.sdk.base.core.controller.ControllerCenter;
import com.efs.sdk.base.core.f.f;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.commons.lang3.time.Cdo;

/* loaded from: classes.dex */
public final class g extends Handler implements e {
    private final ConcurrentHashMap<String, a> a;
    private com.efs.sdk.base.core.e.a.d b;
    private com.efs.sdk.base.core.e.a.c c;

    public static class a extends FileOutputStream {
        public long a;
        public File b;

        public a(@NonNull File file) {
            super(file);
            this.b = file;
            this.a = System.currentTimeMillis();
        }
    }

    public g() {
        super(com.efs.sdk.base.core.util.a.a.a.getLooper());
        this.a = new ConcurrentHashMap<>();
        this.b = new com.efs.sdk.base.core.e.a.d();
        this.c = new com.efs.sdk.base.core.e.a.c();
    }

    private static long b(String str) {
        Map<String, String> mapC = com.efs.sdk.base.core.config.a.c.a().c();
        String strConcat = "record_accumulation_time_".concat(String.valueOf(str));
        if (!mapC.containsKey(strConcat)) {
            return Cdo.f28827if;
        }
        String str2 = mapC.get(strConcat);
        if (TextUtils.isEmpty(str2)) {
            return Cdo.f28827if;
        }
        try {
            return Math.max(Long.parseLong(str2) * 1000, 1000L);
        } catch (Throwable th) {
            com.efs.sdk.base.core.util.d.b("efs.cache", "get cache interval error", th);
            return Cdo.f28827if;
        }
    }

    private void c(String str) {
        a aVar;
        if (this.a.containsKey(str) && (aVar = this.a.get(str)) != null) {
            try {
                aVar.flush();
                com.efs.sdk.base.core.util.b.a(aVar);
                a(aVar.b);
            } catch (Throwable th) {
                try {
                    th.printStackTrace();
                    this.a.remove(str);
                    if ("wa".equalsIgnoreCase(str)) {
                        return;
                    }
                    f.a.a.c.c();
                } finally {
                    this.a.remove(str);
                    if (!"wa".equalsIgnoreCase(str)) {
                        f.a.a.c.c();
                    }
                }
            }
        }
    }

    @Override // com.efs.sdk.base.core.b.e
    public final void a(com.efs.sdk.base.core.d.b bVar) {
        Message messageObtain = Message.obtain();
        messageObtain.obj = bVar;
        messageObtain.what = 0;
        sendMessage(messageObtain);
    }

    @Override // android.os.Handler
    public final void handleMessage(@NonNull Message message) {
        int i = message.what;
        if (i != 0) {
            if (i != 1) {
                return;
            }
            Object obj = message.obj;
            if (obj instanceof String) {
                c(obj.toString());
                return;
            }
            return;
        }
        com.efs.sdk.base.core.d.b bVar = (com.efs.sdk.base.core.d.b) message.obj;
        for (int i2 = 0; i2 < 3; i2++) {
            try {
                a aVarB = b(bVar);
                if (aVarB == null) {
                    com.efs.sdk.base.core.util.d.a("efs.cache", "writer is null for type " + bVar.a.a, null);
                    return;
                }
                if (aVarB.getChannel().position() + bVar.c.length > 819200) {
                    c(bVar.a.a);
                    aVarB = b(bVar);
                    if (aVarB == null) {
                        com.efs.sdk.base.core.util.d.a("efs.cache", "writer is null for type " + bVar.a.a, null);
                        return;
                    }
                }
                aVarB.write(Base64.encode(bVar.c, 11));
                aVarB.write("\n".getBytes());
                return;
            } catch (Throwable th) {
                com.efs.sdk.base.core.util.d.b("efs.cache", "cache file error", th);
            }
        }
    }

    @Override // com.efs.sdk.base.core.b.e
    public final boolean a(File file, com.efs.sdk.base.core.d.b bVar) {
        if (!bVar.b()) {
            a(file);
            return false;
        }
        if (!file.exists()) {
            return false;
        }
        bVar.d = file;
        bVar.c();
        bVar.b(1);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0078  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private a b(com.efs.sdk.base.core.d.b bVar) {
        a aVar;
        Throwable th;
        a aVarPutIfAbsent;
        if (this.a.containsKey(bVar.a.a)) {
            return this.a.get(bVar.a.a);
        }
        File file = new File(com.efs.sdk.base.core.util.a.e(ControllerCenter.getGlobalEnvStruct().mAppContext, ControllerCenter.getGlobalEnvStruct().getAppid()), com.efs.sdk.base.core.util.b.a(bVar));
        try {
            aVar = new a(file);
            try {
                aVarPutIfAbsent = this.a.putIfAbsent(bVar.a.a, aVar);
            } catch (Throwable th2) {
                th = th2;
                th.printStackTrace();
                if (!"wa".equalsIgnoreCase(bVar.a.a)) {
                }
                return aVar;
            }
        } catch (Throwable th3) {
            aVar = null;
            th = th3;
        }
        if (aVarPutIfAbsent != null) {
            com.efs.sdk.base.core.util.b.a(aVar);
            com.efs.sdk.base.core.util.b.b(file);
            return aVarPutIfAbsent;
        }
        Message messageObtain = Message.obtain();
        String str = bVar.a.a;
        messageObtain.obj = str;
        messageObtain.what = 1;
        sendMessageDelayed(messageObtain, b(str));
        if (!"wa".equalsIgnoreCase(bVar.a.a)) {
            f.a.a.c.b();
        }
        return aVar;
    }

    @Override // com.efs.sdk.base.core.b.e
    public final void a(@NonNull String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Message messageObtain = Message.obtain();
        messageObtain.obj = str;
        messageObtain.what = 1;
        sendMessage(messageObtain);
    }

    @Override // com.efs.sdk.base.core.b.e
    public final void a(File file) {
        byte[] bArr;
        com.efs.sdk.base.core.d.b bVarB = com.efs.sdk.base.core.util.b.b(file.getName());
        if (bVarB == null) {
            com.efs.sdk.base.core.b.a unused = a.b.a;
            com.efs.sdk.base.core.b.a.b(file);
        } else if (!a(bVarB, file) || (bArr = bVarB.c) == null || bArr.length <= 0) {
            com.efs.sdk.base.core.b.a unused2 = a.b.a;
            com.efs.sdk.base.core.b.a.b(file);
        } else {
            com.efs.sdk.base.core.util.b.a(new File(com.efs.sdk.base.core.util.a.f(ControllerCenter.getGlobalEnvStruct().mAppContext, ControllerCenter.getGlobalEnvStruct().getAppid()), com.efs.sdk.base.core.util.b.a(bVarB)), bVarB.c);
            com.efs.sdk.base.core.util.b.b(file);
        }
    }

    private boolean a(com.efs.sdk.base.core.d.b bVar, File file) {
        BufferedReader bufferedReader;
        FileReader fileReader;
        StringBuilder sb = new StringBuilder();
        FileReader fileReader2 = null;
        try {
            fileReader = new FileReader(file);
            try {
                bufferedReader = new BufferedReader(fileReader);
            } catch (Throwable th) {
                th = th;
                bufferedReader = null;
            }
        } catch (Throwable th2) {
            th = th2;
            bufferedReader = null;
        }
        try {
            for (String line = bufferedReader.readLine(); line != null; line = bufferedReader.readLine()) {
                String strB = com.efs.sdk.base.core.util.c.b.b(line.getBytes());
                if (!TextUtils.isEmpty(strB)) {
                    sb.append(strB);
                    sb.append("\n");
                }
            }
            bVar.a(sb.toString().getBytes());
            bVar.c();
            this.c.a(bVar);
            bVar.d = file;
            com.efs.sdk.base.core.util.b.a(bufferedReader);
            com.efs.sdk.base.core.util.b.a(fileReader);
            return true;
        } catch (Throwable th3) {
            th = th3;
            fileReader2 = fileReader;
            try {
                com.efs.sdk.base.core.util.d.b("efs.cache", "local decode error", th);
                com.efs.sdk.base.core.util.b.a(bufferedReader);
                com.efs.sdk.base.core.util.b.a(fileReader2);
                return false;
            } catch (Throwable th4) {
                com.efs.sdk.base.core.util.b.a(bufferedReader);
                com.efs.sdk.base.core.util.b.a(fileReader2);
                throw th4;
            }
        }
    }
}
