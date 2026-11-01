package cn.bingoogolapple.qrcode.core;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.Rect;
import android.hardware.Camera;
import android.os.AsyncTask;
import android.support.v4.p6;
import android.support.v4.zr1;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import cn.bingoogolapple.qrcode.core.CameraPreview;

/* loaded from: classes.dex */
public abstract class QRCodeView extends RelativeLayout implements Camera.PreviewCallback {

    /* renamed from: import, reason: not valid java name */
    private static final int f9029import = 150;

    /* renamed from: native, reason: not valid java name */
    private static final int f9030native = 60;

    /* renamed from: throw, reason: not valid java name */
    private static final int f9031throw = -1;

    /* renamed from: while, reason: not valid java name */
    private static final long[] f9032while = {255, 255, 255, 255};

    /* renamed from: break, reason: not valid java name */
    public cn.bingoogolapple.qrcode.core.Cdo f9033break;

    /* renamed from: case, reason: not valid java name */
    public cn.bingoogolapple.qrcode.core.Cfor f9034case;

    /* renamed from: catch, reason: not valid java name */
    private long f9035catch;

    /* renamed from: class, reason: not valid java name */
    private ValueAnimator f9036class;

    /* renamed from: const, reason: not valid java name */
    private long f9037const;

    /* renamed from: do, reason: not valid java name */
    public Camera f9038do;

    /* renamed from: else, reason: not valid java name */
    public int f9039else;

    /* renamed from: final, reason: not valid java name */
    private long f9040final;

    /* renamed from: for, reason: not valid java name */
    public ScanBoxView f9041for;

    /* renamed from: goto, reason: not valid java name */
    private PointF[] f9042goto;

    /* renamed from: if, reason: not valid java name */
    public CameraPreview f9043if;

    /* renamed from: new, reason: not valid java name */
    public Delegate f9044new;

    /* renamed from: super, reason: not valid java name */
    private int f9045super;

    /* renamed from: this, reason: not valid java name */
    private Paint f9046this;

    /* renamed from: try, reason: not valid java name */
    public boolean f9047try;

    public interface Delegate {
        void onCameraAmbientBrightnessChanged(boolean z);

        void onScanQRCodeOpenCameraError();

        void onScanQRCodeSuccess(String str);
    }

    /* renamed from: cn.bingoogolapple.qrcode.core.QRCodeView$do, reason: invalid class name */
    public class Cdo implements CameraPreview.Delegate {
        public Cdo() {
        }

        @Override // cn.bingoogolapple.qrcode.core.CameraPreview.Delegate
        public void onStartPreview() {
            QRCodeView.this.m10804static();
        }
    }

    /* renamed from: cn.bingoogolapple.qrcode.core.QRCodeView$for, reason: invalid class name */
    public class Cfor implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f9049do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ int f9050for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ int f9051if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ String f9052new;

        public Cfor(int i, int i2, int i3, String str) {
            this.f9049do = i;
            this.f9051if = i2;
            this.f9050for = i3;
            this.f9052new = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            QRCodeView qRCodeView = QRCodeView.this;
            int i = this.f9049do;
            qRCodeView.m10798default(i, Math.min(this.f9051if + i, this.f9050for), this.f9052new);
        }
    }

    /* renamed from: cn.bingoogolapple.qrcode.core.QRCodeView$if, reason: invalid class name */
    public class Cif implements Runnable {
        public Cif() {
        }

        @Override // java.lang.Runnable
        public void run() {
            QRCodeView.this.f9043if.m10793goto();
        }
    }

    /* renamed from: cn.bingoogolapple.qrcode.core.QRCodeView$new, reason: invalid class name */
    public class Cnew implements ValueAnimator.AnimatorUpdateListener {
        public Cnew() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            CameraPreview cameraPreview = QRCodeView.this.f9043if;
            if (cameraPreview == null || !cameraPreview.m10790case()) {
                return;
            }
            int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            Camera.Parameters parameters = QRCodeView.this.f9038do.getParameters();
            parameters.setZoom(iIntValue);
            QRCodeView.this.f9038do.setParameters(parameters);
        }
    }

    /* renamed from: cn.bingoogolapple.qrcode.core.QRCodeView$try, reason: invalid class name */
    public class Ctry extends AnimatorListenerAdapter {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ String f9056do;

        public Ctry(String str) {
            this.f9056do = str;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            QRCodeView.this.m10830while(new zr1(this.f9056do));
        }
    }

    public QRCodeView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* renamed from: break, reason: not valid java name */
    private boolean m10796break(PointF[] pointFArr, String str) {
        if (this.f9038do == null || this.f9041for == null || pointFArr == null || pointFArr.length < 1) {
            return false;
        }
        ValueAnimator valueAnimator = this.f9036class;
        if ((valueAnimator != null && valueAnimator.isRunning()) || System.currentTimeMillis() - this.f9037const < 1200) {
            return true;
        }
        Camera.Parameters parameters = this.f9038do.getParameters();
        if (!parameters.isZoomSupported()) {
            return false;
        }
        float f = pointFArr[0].x;
        float f2 = pointFArr[0].y;
        float f3 = pointFArr[1].x;
        float f4 = pointFArr[1].y;
        float fAbs = Math.abs(f - f3);
        float fAbs2 = Math.abs(f2 - f4);
        if (((int) Math.sqrt((fAbs * fAbs) + (fAbs2 * fAbs2))) > this.f9041for.getRectWidth() / 4) {
            return false;
        }
        int maxZoom = parameters.getMaxZoom();
        post(new Cfor(parameters.getZoom(), maxZoom / 4, maxZoom, str));
        return true;
    }

    /* renamed from: class, reason: not valid java name */
    private void m10797class(Context context, AttributeSet attributeSet) {
        CameraPreview cameraPreview = new CameraPreview(context);
        this.f9043if = cameraPreview;
        cameraPreview.setDelegate(new Cdo());
        ScanBoxView scanBoxView = new ScanBoxView(context);
        this.f9041for = scanBoxView;
        scanBoxView.m10849this(this, attributeSet);
        this.f9043if.setId(R.id.bgaqrcode_camera_preview);
        addView(this.f9043if);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(context, attributeSet);
        layoutParams.addRule(6, this.f9043if.getId());
        layoutParams.addRule(8, this.f9043if.getId());
        addView(this.f9041for, layoutParams);
        Paint paint = new Paint();
        this.f9046this = paint;
        paint.setColor(getScanBoxView().getCornerColor());
        this.f9046this.setStyle(Paint.Style.FILL);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: default, reason: not valid java name */
    public void m10798default(int i, int i2, String str) {
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(i, i2);
        this.f9036class = valueAnimatorOfInt;
        valueAnimatorOfInt.addUpdateListener(new Cnew());
        this.f9036class.addListener(new Ctry(str));
        this.f9036class.setDuration(600L);
        this.f9036class.setRepeatCount(0);
        this.f9036class.start();
        this.f9037const = System.currentTimeMillis();
    }

    /* renamed from: goto, reason: not valid java name */
    private int m10800goto(int i) {
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        for (int i2 = 0; i2 < Camera.getNumberOfCameras(); i2++) {
            try {
                Camera.getCameraInfo(i2, cameraInfo);
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (cameraInfo.facing == i) {
                return i2;
            }
        }
        return -1;
    }

    /* renamed from: interface, reason: not valid java name */
    private PointF m10802interface(float f, float f2, float f3, float f4, boolean z, int i, Rect rect) {
        PointF pointF;
        int width = getWidth();
        int height = getHeight();
        if (p6.m5884const(getContext())) {
            float f5 = width;
            float f6 = height;
            pointF = new PointF((f4 - f) * (f5 / f4), (f3 - f2) * (f6 / f3));
            float f7 = f6 - pointF.y;
            pointF.y = f7;
            pointF.x = f5 - pointF.x;
            if (rect == null) {
                pointF.y = f7 + i;
            }
        } else {
            float f8 = width;
            pointF = new PointF(f * (f8 / f3), f2 * (height / f4));
            if (z) {
                pointF.x = f8 - pointF.x;
            }
        }
        if (rect != null) {
            pointF.y += rect.top;
            pointF.x += rect.left;
        }
        return pointF;
    }

    /* renamed from: package, reason: not valid java name */
    private void m10803package(int i) {
        try {
            this.f9039else = i;
            Camera cameraOpen = Camera.open(i);
            this.f9038do = cameraOpen;
            this.f9043if.setCamera(cameraOpen);
        } catch (Exception e) {
            e.printStackTrace();
            Delegate delegate = this.f9044new;
            if (delegate != null) {
                delegate.onScanQRCodeOpenCameraError();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: static, reason: not valid java name */
    public void m10804static() {
        if (this.f9047try && this.f9043if.m10790case()) {
            try {
                this.f9038do.setOneShotPreviewCallback(this);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: this, reason: not valid java name */
    private void m10805this(byte[] bArr, Camera camera) {
        CameraPreview cameraPreview = this.f9043if;
        if (cameraPreview == null || !cameraPreview.m10790case()) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.f9040final < 150) {
            return;
        }
        this.f9040final = jCurrentTimeMillis;
        long j = 0;
        long j2 = camera.getParameters().getPreviewSize().width * camera.getParameters().getPreviewSize().height;
        if (Math.abs(bArr.length - (j2 * 1.5f)) < 1.0E-5f) {
            boolean z = false;
            for (int i = 0; i < j2; i += 10) {
                j += bArr[i] & 255;
            }
            long j3 = j / (j2 / 10);
            long[] jArr = f9032while;
            int length = this.f9045super % jArr.length;
            this.f9045super = length;
            jArr[length] = j3;
            this.f9045super = length + 1;
            int length2 = jArr.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length2) {
                    z = true;
                    break;
                } else if (jArr[i2] > 60) {
                    break;
                } else {
                    i2++;
                }
            }
            p6.m5895try("摄像头环境亮度为：" + j3);
            Delegate delegate = this.f9044new;
            if (delegate != null) {
                delegate.onCameraAmbientBrightnessChanged(z);
            }
        }
    }

    /* renamed from: abstract, reason: not valid java name */
    public void m10806abstract() {
        m10819private();
        m10827throws();
    }

    /* renamed from: case, reason: not valid java name */
    public void m10807case(Bitmap bitmap) {
        this.f9034case = new cn.bingoogolapple.qrcode.core.Cfor(bitmap, this).m10856new();
    }

    /* renamed from: catch, reason: not valid java name */
    public void m10808catch() {
        ScanBoxView scanBoxView = this.f9041for;
        if (scanBoxView != null) {
            scanBoxView.setVisibility(8);
        }
    }

    /* renamed from: const, reason: not valid java name */
    public boolean m10809const() {
        ScanBoxView scanBoxView = this.f9041for;
        return scanBoxView != null && scanBoxView.m10841catch();
    }

    /* renamed from: continue, reason: not valid java name */
    public void m10810continue() {
        try {
            m10829volatile();
            if (this.f9038do != null) {
                this.f9043if.m10791class();
                this.f9043if.setCamera(null);
                this.f9038do.release();
                this.f9038do = null;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        PointF[] pointFArr;
        super.dispatchDraw(canvas);
        if (!m10813final() || (pointFArr = this.f9042goto) == null) {
            return;
        }
        for (PointF pointF : pointFArr) {
            canvas.drawCircle(pointF.x, pointF.y, 10.0f, this.f9046this);
        }
        this.f9042goto = null;
        postInvalidateDelayed(2000L);
    }

    /* renamed from: else, reason: not valid java name */
    public void m10811else(String str) {
        this.f9034case = new cn.bingoogolapple.qrcode.core.Cfor(str, this).m10856new();
    }

    /* renamed from: extends, reason: not valid java name */
    public void m10812extends() {
        m10814finally(this.f9039else);
    }

    /* renamed from: final, reason: not valid java name */
    public boolean m10813final() {
        ScanBoxView scanBoxView = this.f9041for;
        return scanBoxView != null && scanBoxView.m10850throw();
    }

    /* renamed from: finally, reason: not valid java name */
    public void m10814finally(int i) {
        if (this.f9038do != null || Camera.getNumberOfCameras() == 0) {
            return;
        }
        int iM10800goto = m10800goto(i);
        if (iM10800goto != -1) {
            m10803package(iM10800goto);
            return;
        }
        if (i == 0) {
            iM10800goto = m10800goto(1);
        } else if (i == 1) {
            iM10800goto = m10800goto(0);
        }
        if (iM10800goto != -1) {
            m10803package(iM10800goto);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public void m10815for() {
        if (this.f9041for.getIsBarcode()) {
            return;
        }
        this.f9041for.setIsBarcode(true);
    }

    public CameraPreview getCameraPreview() {
        return this.f9043if;
    }

    public boolean getIsScanBarcodeStyle() {
        return this.f9041for.getIsBarcode();
    }

    public ScanBoxView getScanBoxView() {
        return this.f9041for;
    }

    /* renamed from: import, reason: not valid java name */
    public void m10816import(Rect rect) {
        this.f9043if.m10792else(rect);
    }

    /* renamed from: native, reason: not valid java name */
    public void m10817native() {
        postDelayed(new Cif(), this.f9043if.m10790case() ? 0L : 500L);
    }

    /* renamed from: new, reason: not valid java name */
    public void m10818new() {
        if (this.f9041for.getIsBarcode()) {
            this.f9041for.setIsBarcode(false);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ValueAnimator valueAnimator = this.f9036class;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
    }

    @Override // android.hardware.Camera.PreviewCallback
    public void onPreviewFrame(byte[] bArr, Camera camera) {
        if (p6.m5883class()) {
            p6.m5895try("两次 onPreviewFrame 时间间隔：" + (System.currentTimeMillis() - this.f9035catch));
            this.f9035catch = System.currentTimeMillis();
        }
        CameraPreview cameraPreview = this.f9043if;
        if (cameraPreview != null && cameraPreview.m10790case()) {
            try {
                m10805this(bArr, camera);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (this.f9047try) {
            cn.bingoogolapple.qrcode.core.Cfor cfor = this.f9034case;
            if (cfor == null || !(cfor.getStatus() == AsyncTask.Status.PENDING || this.f9034case.getStatus() == AsyncTask.Status.RUNNING)) {
                this.f9034case = new cn.bingoogolapple.qrcode.core.Cfor(camera, bArr, this, p6.m5884const(getContext())).m10856new();
            }
        }
    }

    /* renamed from: private, reason: not valid java name */
    public void m10819private() {
        this.f9047try = true;
        m10812extends();
        m10804static();
    }

    /* renamed from: protected, reason: not valid java name */
    public boolean m10820protected(PointF[] pointFArr, Rect rect, boolean z, String str) {
        if (pointFArr != null && pointFArr.length != 0) {
            try {
                Camera.Size previewSize = this.f9038do.getParameters().getPreviewSize();
                boolean z2 = this.f9039else == 1;
                int iM5882catch = p6.m5882catch(getContext());
                PointF[] pointFArr2 = new PointF[pointFArr.length];
                int i = 0;
                for (PointF pointF : pointFArr) {
                    pointFArr2[i] = m10802interface(pointF.x, pointF.y, previewSize.width, previewSize.height, z2, iM5882catch, rect);
                    i++;
                }
                this.f9042goto = pointFArr2;
                postInvalidate();
                if (z) {
                    return m10796break(pointFArr2, str);
                }
                return false;
            } catch (Exception e) {
                this.f9042goto = null;
                e.printStackTrace();
            }
        }
        return false;
    }

    /* renamed from: public, reason: not valid java name */
    public abstract zr1 mo10821public(Bitmap bitmap);

    /* renamed from: return, reason: not valid java name */
    public abstract zr1 mo10822return(byte[] bArr, int i, int i2, boolean z);

    public void setDelegate(Delegate delegate) {
        this.f9044new = delegate;
    }

    /* renamed from: strictfp, reason: not valid java name */
    public void m10823strictfp() {
        this.f9047try = false;
        cn.bingoogolapple.qrcode.core.Cfor cfor = this.f9034case;
        if (cfor != null) {
            cfor.m10853do();
            this.f9034case = null;
        }
        Camera camera = this.f9038do;
        if (camera != null) {
            try {
                camera.setOneShotPreviewCallback(null);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: super, reason: not valid java name */
    public void m10824super() {
        m10810continue();
        this.f9044new = null;
    }

    /* renamed from: switch, reason: not valid java name */
    public abstract void mo10825switch();

    /* renamed from: throw, reason: not valid java name */
    public void m10826throw(zr1 zr1Var) {
        Delegate delegate = this.f9044new;
        if (delegate != null) {
            delegate.onScanQRCodeSuccess(zr1Var == null ? null : zr1Var.f8635do);
        }
    }

    /* renamed from: throws, reason: not valid java name */
    public void m10827throws() {
        ScanBoxView scanBoxView = this.f9041for;
        if (scanBoxView != null) {
            scanBoxView.setVisibility(0);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public void m10828try() {
        this.f9043if.m10794if();
    }

    /* renamed from: volatile, reason: not valid java name */
    public void m10829volatile() {
        m10823strictfp();
        m10808catch();
    }

    /* renamed from: while, reason: not valid java name */
    public void m10830while(zr1 zr1Var) {
        if (this.f9047try) {
            String str = zr1Var == null ? null : zr1Var.f8635do;
            if (TextUtils.isEmpty(str)) {
                try {
                    Camera camera = this.f9038do;
                    if (camera != null) {
                        camera.setOneShotPreviewCallback(this);
                        return;
                    }
                    return;
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
            }
            this.f9047try = false;
            try {
                Delegate delegate = this.f9044new;
                if (delegate != null) {
                    delegate.onScanQRCodeSuccess(str);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public QRCodeView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f9047try = false;
        this.f9039else = 0;
        this.f9033break = cn.bingoogolapple.qrcode.core.Cdo.HIGH_FREQUENCY;
        this.f9035catch = 0L;
        this.f9037const = 0L;
        this.f9040final = System.currentTimeMillis();
        this.f9045super = 0;
        m10797class(context, attributeSet);
        mo10825switch();
    }
}
