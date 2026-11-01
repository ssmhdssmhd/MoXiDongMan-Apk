package com.wsw.cospa.utils;

import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.provider.MediaStore;
import android.support.v4.pk0;
import android.support.v4.rd1;
import android.support.v4.v72;
import android.support.v4.wq;
import android.text.TextUtils;
import androidx.core.content.FileProvider;
import com.wsw.cospa.bean.ComicContentImgBean;
import com.wsw.cospa.utils.Cthis;
import com.wsw.cospa.utils.download.Ctry;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;

/* renamed from: com.wsw.cospa.utils.this, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cthis {

    /* renamed from: com.wsw.cospa.utils.this$do, reason: invalid class name */
    public class Cdo extends Ctry {
        @Override // com.wsw.cospa.utils.download.Ctry
        /* renamed from: do */
        public void mo25368do(long j, long j2, boolean z) {
            StringBuilder sb = new StringBuilder();
            sb.append("bytesRead:");
            sb.append(j);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("contentLength:");
            sb2.append(j2);
            StringBuilder sb3 = new StringBuilder();
            sb3.append("done:");
            sb3.append(z);
            if (j2 != -1) {
                StringBuilder sb4 = new StringBuilder();
                sb4.append((j * 100) / j2);
                sb4.append("% done");
            }
        }
    }

    /* renamed from: com.wsw.cospa.utils.this$for, reason: invalid class name */
    public class Cfor extends Ctry {
        @Override // com.wsw.cospa.utils.download.Ctry
        /* renamed from: do */
        public void mo25368do(long j, long j2, boolean z) {
            StringBuilder sb = new StringBuilder();
            sb.append("bytesRead:");
            sb.append(j);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("contentLength:");
            sb2.append(j2);
            StringBuilder sb3 = new StringBuilder();
            sb3.append("done:");
            sb3.append(z);
            if (j2 != -1) {
                StringBuilder sb4 = new StringBuilder();
                sb4.append((j * 100) / j2);
                sb4.append("% done");
            }
        }
    }

    /* renamed from: com.wsw.cospa.utils.this$if, reason: invalid class name */
    public class Cif implements Callback {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ SaveImageCall f22737do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ Context f22738for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ File f22739if;

        /* renamed from: com.wsw.cospa.utils.this$if$do, reason: invalid class name */
        public class Cdo implements Runnable {
            public Cdo() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SaveImageCall saveImageCall = Cif.this.f22737do;
                if (saveImageCall != null) {
                    saveImageCall.onFault();
                }
            }
        }

        public Cif(SaveImageCall saveImageCall, File file, Context context) {
            this.f22737do = saveImageCall;
            this.f22739if = file;
            this.f22738for = context;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: case, reason: not valid java name */
        public static /* synthetic */ void m27115case(SaveImageCall saveImageCall) {
            if (saveImageCall != null) {
                saveImageCall.onFault();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: new, reason: not valid java name */
        public static /* synthetic */ void m27119new(Context context, String str, Uri uri) {
            Intent intent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
            intent.setData(uri);
            context.sendBroadcast(intent);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: try, reason: not valid java name */
        public static /* synthetic */ void m27120try(SaveImageCall saveImageCall) {
            if (saveImageCall != null) {
                saveImageCall.onSucce();
            }
        }

        @Override // okhttp3.Callback
        public void onFailure(Call call, IOException iOException) {
            new Handler(Looper.getMainLooper()).post(new Cdo());
        }

        @Override // okhttp3.Callback
        public void onResponse(Call call, Response response) throws Throwable {
            try {
                if (!response.isSuccessful()) {
                    Handler handler = new Handler(Looper.getMainLooper());
                    final SaveImageCall saveImageCall = this.f22737do;
                    handler.post(new Runnable() { // from class: com.wsw.cospa.utils.catch
                        @Override // java.lang.Runnable
                        public final void run() {
                            Cthis.Cif.m27115case(saveImageCall);
                        }
                    });
                    return;
                }
                boolean zM27106const = Cthis.m27106const(response.body(), this.f22739if);
                StringBuilder sb = new StringBuilder();
                sb.append("file download was a success? ");
                sb.append(zM27106const);
                ContentValues contentValues = new ContentValues();
                contentValues.put("_data", this.f22739if.getAbsolutePath());
                contentValues.put("mime_type", "image/jpeg");
                this.f22738for.getContentResolver().insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues);
                if (Build.VERSION.SDK_INT >= 19) {
                    Context context = this.f22738for;
                    String[] strArr = {this.f22739if.getAbsolutePath()};
                    final Context context2 = this.f22738for;
                    MediaScannerConnection.scanFile(context, strArr, null, new MediaScannerConnection.OnScanCompletedListener() { // from class: com.wsw.cospa.utils.break
                        @Override // android.media.MediaScannerConnection.OnScanCompletedListener
                        public final void onScanCompleted(String str, Uri uri) {
                            Cthis.Cif.m27119new(context2, str, uri);
                        }
                    });
                } else {
                    this.f22738for.sendBroadcast(new Intent("android.intent.action.MEDIA_MOUNTED", Uri.fromFile(new File(this.f22739if.getParent()).getAbsoluteFile())));
                }
                Handler handler2 = new Handler(Looper.getMainLooper());
                final SaveImageCall saveImageCall2 = this.f22737do;
                handler2.post(new Runnable() { // from class: com.wsw.cospa.utils.class
                    @Override // java.lang.Runnable
                    public final void run() {
                        Cthis.Cif.m27120try(saveImageCall2);
                    }
                });
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.wsw.cospa.utils.this$new, reason: invalid class name */
    public class Cnew implements Callback {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ File f22741do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Context f22742if;

        /* renamed from: com.wsw.cospa.utils.this$new$do, reason: invalid class name */
        public class Cdo implements Runnable {
            public Cdo() {
            }

            @Override // java.lang.Runnable
            public void run() {
                v72.m8769if("分享失败，请退出重试");
            }
        }

        /* renamed from: com.wsw.cospa.utils.this$new$if, reason: invalid class name */
        public class Cif implements Runnable {
            public Cif() {
            }

            @Override // java.lang.Runnable
            public void run() {
                v72.m8769if("分享失败，请退出重试");
            }
        }

        public Cnew(File file, Context context) {
            this.f22741do = file;
            this.f22742if = context;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: if, reason: not valid java name */
        public static /* synthetic */ void m27122if(Context context, String str, Uri uri) {
            Intent intent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
            intent.setData(uri);
            context.sendBroadcast(intent);
        }

        @Override // okhttp3.Callback
        public void onFailure(Call call, IOException iOException) {
            new Handler(Looper.getMainLooper()).post(new Cdo());
        }

        @Override // okhttp3.Callback
        public void onResponse(Call call, Response response) throws Throwable {
            if (!response.isSuccessful()) {
                new Handler(Looper.getMainLooper()).post(new Cif());
                return;
            }
            boolean zM27106const = Cthis.m27106const(response.body(), this.f22741do);
            StringBuilder sb = new StringBuilder();
            sb.append("file download was a success? ");
            sb.append(zM27106const);
            ContentValues contentValues = new ContentValues();
            contentValues.put("_data", this.f22741do.getAbsolutePath());
            contentValues.put("mime_type", "image/jpeg");
            this.f22742if.getContentResolver().insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues);
            int i = Build.VERSION.SDK_INT;
            if (i >= 19) {
                Context context = this.f22742if;
                String[] strArr = {this.f22741do.getAbsolutePath()};
                final Context context2 = this.f22742if;
                MediaScannerConnection.scanFile(context, strArr, null, new MediaScannerConnection.OnScanCompletedListener() { // from class: com.wsw.cospa.utils.const
                    @Override // android.media.MediaScannerConnection.OnScanCompletedListener
                    public final void onScanCompleted(String str, Uri uri) {
                        Cthis.Cnew.m27122if(context2, str, uri);
                    }
                });
            } else {
                this.f22742if.sendBroadcast(new Intent("android.intent.action.MEDIA_MOUNTED", Uri.fromFile(new File(this.f22741do.getParent()).getAbsoluteFile())));
            }
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setType("image/*");
            if (i >= 24) {
                intent.putExtra("android.intent.extra.STREAM", FileProvider.getUriForFile(this.f22742if, this.f22742if.getApplicationContext().getPackageName() + ".fileprovider", this.f22741do));
            } else {
                intent.putExtra("android.intent.extra.STREAM", Uri.fromFile(this.f22741do));
            }
            intent.setFlags(268435456);
            this.f22742if.startActivity(Intent.createChooser(intent, "分享"));
        }
    }

    /* renamed from: break, reason: not valid java name */
    public static void m27102break(final Context context, Bitmap bitmap) throws IOException {
        File file = new File(wq.f7618native);
        if (!file.exists()) {
            file.mkdir();
        }
        File file2 = new File(file, "donate.png");
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
            ContentValues contentValues = new ContentValues();
            contentValues.put("_data", file2.getAbsolutePath());
            contentValues.put("mime_type", "image/jpeg");
            context.getContentResolver().insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues);
            if (Build.VERSION.SDK_INT >= 19) {
                MediaScannerConnection.scanFile(context, new String[]{file2.getAbsolutePath()}, null, new MediaScannerConnection.OnScanCompletedListener() { // from class: android.support.v4.s9
                    @Override // android.media.MediaScannerConnection.OnScanCompletedListener
                    public final void onScanCompleted(String str, Uri uri) {
                        Cthis.m27110goto(context, str, uri);
                    }
                });
            } else {
                context.sendBroadcast(new Intent("android.intent.action.MEDIA_MOUNTED", Uri.fromFile(new File(file2.getParent()).getAbsoluteFile())));
            }
            v72.m8769if("保存成功");
        } catch (Exception unused) {
            v72.m8769if("保存失败");
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static void m27103case(Context context, String str, String str2, ComicContentImgBean comicContentImgBean, SaveImageCall saveImageCall) {
        File file = new File(wq.f7628switch);
        if (!file.exists()) {
            file.mkdir();
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (m27112new(str)) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: android.support.v4.u9
                @Override // java.lang.Runnable
                public final void run() {
                    v72.m8769if("你已经保存过！");
                }
            });
            return;
        }
        File file2 = new File(file, str);
        Cdo cdo = new Cdo();
        if (comicContentImgBean == null) {
            return;
        }
        Map<String, String> variableMap = comicContentImgBean.getVariableMap();
        Request.Builder builderAddHeader = new Request.Builder().url(str2).addHeader(pk0.f5041break, "identity");
        if (variableMap != null && !variableMap.isEmpty()) {
            builderAddHeader.headers(Headers.of(variableMap));
        }
        com.wsw.cospa.utils.download.Cdo.m26856if(cdo).newCall(builderAddHeader.build()).enqueue(new Cif(saveImageCall, file2, context));
    }

    /* renamed from: catch, reason: not valid java name */
    public static void m27104catch(final Context context, Bitmap bitmap, String str) {
        File file = new File(wq.f7628switch);
        if (!file.exists()) {
            file.mkdir();
        }
        File file2 = new File(file, str);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
            ContentValues contentValues = new ContentValues();
            contentValues.put("_data", file2.getAbsolutePath());
            contentValues.put("mime_type", "image/jpeg");
            context.getContentResolver().insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues);
            if (Build.VERSION.SDK_INT >= 19) {
                MediaScannerConnection.scanFile(context, new String[]{file2.getAbsolutePath()}, null, new MediaScannerConnection.OnScanCompletedListener() { // from class: android.support.v4.t9
                    @Override // android.media.MediaScannerConnection.OnScanCompletedListener
                    public final void onScanCompleted(String str2, Uri uri) {
                        Cthis.m27113this(context, str2, uri);
                    }
                });
            } else {
                context.sendBroadcast(new Intent("android.intent.action.MEDIA_MOUNTED", Uri.fromFile(new File(file2.getParent()).getAbsoluteFile())));
            }
            v72.m8769if("保存成功！以保存到" + wq.f7628switch + str);
        } catch (Exception unused) {
            v72.m8769if("保存失败");
        }
    }

    /* renamed from: class, reason: not valid java name */
    public static void m27105class(Context context, ComicContentImgBean comicContentImgBean) {
        if (comicContentImgBean == null) {
            return;
        }
        comicContentImgBean.getImgurl();
        String str = System.currentTimeMillis() + rd1.f5753if;
        File file = new File(wq.f7628switch);
        if (!file.exists()) {
            file.mkdir();
        }
        File fileM27114try = m27114try(str);
        if (fileM27114try == null) {
            File file2 = new File(file, str);
            Cfor cfor = new Cfor();
            Map<String, String> variableMap = comicContentImgBean.getVariableMap();
            Request.Builder builderAddHeader = new Request.Builder().url(comicContentImgBean.getImgurl()).addHeader(pk0.f5041break, "identity");
            if (variableMap != null && !variableMap.isEmpty()) {
                builderAddHeader.headers(Headers.of(variableMap));
            }
            com.wsw.cospa.utils.download.Cdo.m26856if(cfor).newCall(builderAddHeader.build()).enqueue(new Cnew(file2, context));
            return;
        }
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("image/*");
        if (Build.VERSION.SDK_INT >= 24) {
            intent.putExtra("android.intent.extra.STREAM", FileProvider.getUriForFile(context, context.getApplicationContext().getPackageName() + ".fileprovider", fileM27114try));
        } else {
            intent.putExtra("android.intent.extra.STREAM", Uri.fromFile(fileM27114try));
        }
        intent.setFlags(268435456);
        context.startActivity(Intent.createChooser(intent, "分享"));
    }

    /* renamed from: const, reason: not valid java name */
    public static boolean m27106const(ResponseBody responseBody, File file) throws Throwable {
        FileOutputStream fileOutputStream;
        InputStream inputStream = null;
        try {
            try {
                byte[] bArr = new byte[4096];
                long jContentLength = responseBody.contentLength();
                long j = 0;
                InputStream inputStreamByteStream = responseBody.byteStream();
                try {
                    fileOutputStream = new FileOutputStream(file);
                    while (true) {
                        try {
                            int i = inputStreamByteStream.read(bArr);
                            if (i == -1) {
                                fileOutputStream.flush();
                                inputStreamByteStream.close();
                                fileOutputStream.close();
                                return true;
                            }
                            fileOutputStream.write(bArr, 0, i);
                            j += i;
                            StringBuilder sb = new StringBuilder();
                            sb.append("file download: ");
                            sb.append(j);
                            sb.append(" of ");
                            sb.append(jContentLength);
                        } catch (IOException unused) {
                            inputStream = inputStreamByteStream;
                            if (inputStream != null) {
                                inputStream.close();
                            }
                            if (fileOutputStream != null) {
                                fileOutputStream.close();
                            }
                            return false;
                        } catch (Throwable th) {
                            th = th;
                            inputStream = inputStreamByteStream;
                            if (inputStream != null) {
                                inputStream.close();
                            }
                            if (fileOutputStream != null) {
                                fileOutputStream.close();
                            }
                            throw th;
                        }
                    }
                } catch (IOException unused2) {
                    fileOutputStream = null;
                } catch (Throwable th2) {
                    th = th2;
                    fileOutputStream = null;
                }
            } catch (IOException unused3) {
                return false;
            }
        } catch (IOException unused4) {
            fileOutputStream = null;
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: goto, reason: not valid java name */
    public static /* synthetic */ void m27110goto(Context context, String str, Uri uri) {
        Intent intent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
        intent.setData(uri);
        context.sendBroadcast(intent);
    }

    /* renamed from: new, reason: not valid java name */
    public static boolean m27112new(String str) {
        File[] fileArrListFiles;
        try {
            File file = new File(wq.f7628switch);
            if (file.isDirectory() && (fileArrListFiles = file.listFiles()) != null && fileArrListFiles.length > 0) {
                for (File file2 : fileArrListFiles) {
                    String name = file2.getName();
                    if (str != null && str.equals(name)) {
                        return true;
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: this, reason: not valid java name */
    public static /* synthetic */ void m27113this(Context context, String str, Uri uri) {
        Intent intent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
        intent.setData(uri);
        context.sendBroadcast(intent);
    }

    /* renamed from: try, reason: not valid java name */
    public static File m27114try(String str) {
        File[] fileArrListFiles;
        try {
            File file = new File(wq.f7628switch);
            if (!file.isDirectory() || (fileArrListFiles = file.listFiles()) == null || fileArrListFiles.length <= 0) {
                return null;
            }
            for (int i = 0; i < fileArrListFiles.length; i++) {
                String name = fileArrListFiles[i].getName();
                if (str != null && str.equals(name)) {
                    return fileArrListFiles[i];
                }
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
