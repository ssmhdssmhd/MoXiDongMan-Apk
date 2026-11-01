package cn.bingoogolapple.qrcode.core;

import android.graphics.Bitmap;
import android.hardware.Camera;
import android.os.AsyncTask;
import android.support.v4.p6;
import android.support.v4.zr1;
import android.text.TextUtils;
import java.lang.ref.WeakReference;

/* renamed from: cn.bingoogolapple.qrcode.core.for, reason: invalid class name */
/* loaded from: classes.dex */
class Cfor extends AsyncTask<Void, Void, zr1> {

    /* renamed from: else, reason: not valid java name */
    private static long f9098else;

    /* renamed from: case, reason: not valid java name */
    private WeakReference<QRCodeView> f9099case;

    /* renamed from: do, reason: not valid java name */
    private Camera f9100do;

    /* renamed from: for, reason: not valid java name */
    private boolean f9101for;

    /* renamed from: if, reason: not valid java name */
    private byte[] f9102if;

    /* renamed from: new, reason: not valid java name */
    private String f9103new;

    /* renamed from: try, reason: not valid java name */
    private Bitmap f9104try;

    public Cfor(Camera camera, byte[] bArr, QRCodeView qRCodeView, boolean z) {
        this.f9100do = camera;
        this.f9102if = bArr;
        this.f9099case = new WeakReference<>(qRCodeView);
        this.f9101for = z;
    }

    /* renamed from: try, reason: not valid java name */
    private zr1 m10852try(QRCodeView qRCodeView) {
        Exception e;
        int i;
        int i2;
        byte[] bArr = this.f9102if;
        if (bArr == null) {
            return null;
        }
        try {
            Camera.Size previewSize = this.f9100do.getParameters().getPreviewSize();
            i2 = previewSize.width;
            try {
                i = previewSize.height;
            } catch (Exception e2) {
                e = e2;
                i = 0;
            }
        } catch (Exception e3) {
            e = e3;
            i = 0;
            i2 = 0;
        }
        try {
            if (this.f9101for) {
                bArr = new byte[this.f9102if.length];
                for (int i3 = 0; i3 < i; i3++) {
                    for (int i4 = 0; i4 < i2; i4++) {
                        bArr[(((i4 * i) + i) - i3) - 1] = this.f9102if[(i3 * i2) + i4];
                    }
                }
                i2 = i;
                i = i2;
            }
            return qRCodeView.mo10822return(bArr, i2, i, false);
        } catch (Exception e4) {
            e = e4;
            e.printStackTrace();
            if (i2 != 0 && i != 0) {
                try {
                    p6.m5895try("识别失败重试");
                    return qRCodeView.mo10822return(bArr, i2, i, true);
                } catch (Exception e5) {
                    e5.printStackTrace();
                    return null;
                }
            }
            return null;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public void m10853do() {
        if (getStatus() != AsyncTask.Status.FINISHED) {
            cancel(true);
        }
    }

    @Override // android.os.AsyncTask
    /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
    public void onPostExecute(zr1 zr1Var) {
        QRCodeView qRCodeView = this.f9099case.get();
        if (qRCodeView == null) {
            return;
        }
        if (this.f9103new == null && this.f9104try == null) {
            qRCodeView.m10830while(zr1Var);
        } else {
            this.f9104try = null;
            qRCodeView.m10826throw(zr1Var);
        }
    }

    @Override // android.os.AsyncTask
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public zr1 doInBackground(Void... voidArr) {
        QRCodeView qRCodeView = this.f9099case.get();
        if (qRCodeView == null) {
            return null;
        }
        String str = this.f9103new;
        if (str != null) {
            return qRCodeView.mo10821public(p6.m5893this(str));
        }
        Bitmap bitmap = this.f9104try;
        if (bitmap != null) {
            zr1 zr1VarMo10821public = qRCodeView.mo10821public(bitmap);
            this.f9104try = null;
            return zr1VarMo10821public;
        }
        if (p6.m5883class()) {
            p6.m5895try("两次任务执行的时间间隔：" + (System.currentTimeMillis() - f9098else));
            f9098else = System.currentTimeMillis();
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        zr1 zr1VarM10852try = m10852try(qRCodeView);
        if (p6.m5883class()) {
            long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
            if (zr1VarM10852try == null || TextUtils.isEmpty(zr1VarM10852try.f8635do)) {
                p6.m5889goto("识别失败时间为：" + jCurrentTimeMillis2);
            } else {
                p6.m5895try("识别成功时间为：" + jCurrentTimeMillis2);
            }
        }
        return zr1VarM10852try;
    }

    /* renamed from: new, reason: not valid java name */
    public Cfor m10856new() {
        executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        return this;
    }

    @Override // android.os.AsyncTask
    public void onCancelled() {
        super.onCancelled();
        this.f9099case.clear();
        this.f9104try = null;
        this.f9102if = null;
    }

    public Cfor(String str, QRCodeView qRCodeView) {
        this.f9103new = str;
        this.f9099case = new WeakReference<>(qRCodeView);
    }

    public Cfor(Bitmap bitmap, QRCodeView qRCodeView) {
        this.f9104try = bitmap;
        this.f9099case = new WeakReference<>(qRCodeView);
    }
}
