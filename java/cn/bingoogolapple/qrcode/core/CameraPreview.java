package cn.bingoogolapple.qrcode.core;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.hardware.Camera;
import android.support.v4.p6;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import java.io.IOException;
import java.util.Collections;

/* loaded from: classes.dex */
public class CameraPreview extends SurfaceView implements SurfaceHolder.Callback {

    /* renamed from: case, reason: not valid java name */
    private Cif f9021case;

    /* renamed from: do, reason: not valid java name */
    private Camera f9022do;

    /* renamed from: else, reason: not valid java name */
    private Delegate f9023else;

    /* renamed from: for, reason: not valid java name */
    private boolean f9024for;

    /* renamed from: if, reason: not valid java name */
    private boolean f9025if;

    /* renamed from: new, reason: not valid java name */
    private boolean f9026new;

    /* renamed from: try, reason: not valid java name */
    private float f9027try;

    public interface Delegate {
        void onStartPreview();
    }

    /* renamed from: cn.bingoogolapple.qrcode.core.CameraPreview$do, reason: invalid class name */
    public class Cdo implements Camera.AutoFocusCallback {
        public Cdo() {
        }

        @Override // android.hardware.Camera.AutoFocusCallback
        public void onAutoFocus(boolean z, Camera camera) {
            if (z) {
                p6.m5895try("对焦测光成功");
            } else {
                p6.m5889goto("对焦测光失败");
            }
            CameraPreview.this.m10785catch();
        }
    }

    public CameraPreview(Context context) {
        super(context);
        this.f9025if = true;
        this.f9024for = false;
        this.f9026new = false;
        this.f9027try = 1.0f;
    }

    /* renamed from: break, reason: not valid java name */
    private void m10784break() throws IOException {
        if (this.f9022do != null) {
            try {
                this.f9025if = true;
                SurfaceHolder holder = getHolder();
                holder.setKeepScreenOn(true);
                this.f9022do.setPreviewDisplay(holder);
                this.f9021case.m10866class(this.f9022do);
                this.f9022do.startPreview();
                Delegate delegate = this.f9023else;
                if (delegate != null) {
                    delegate.onStartPreview();
                }
                m10785catch();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: catch, reason: not valid java name */
    public void m10785catch() {
        this.f9026new = false;
        Camera camera = this.f9022do;
        if (camera == null) {
            return;
        }
        try {
            Camera.Parameters parameters = camera.getParameters();
            parameters.setFocusMode("continuous-picture");
            this.f9022do.setParameters(parameters);
            this.f9022do.cancelAutoFocus();
        } catch (Exception unused) {
            p6.m5889goto("连续对焦失败");
        }
    }

    /* renamed from: for, reason: not valid java name */
    private boolean m10787for() {
        return m10790case() && getContext().getPackageManager().hasSystemFeature("android.hardware.camera.flash");
    }

    /* renamed from: new, reason: not valid java name */
    private void m10788new(float f, float f2, int i, int i2) {
        boolean z;
        try {
            Camera.Parameters parameters = this.f9022do.getParameters();
            Camera.Size previewSize = parameters.getPreviewSize();
            boolean z2 = true;
            if (parameters.getMaxNumFocusAreas() > 0) {
                p6.m5895try("支持设置对焦区域");
                Rect rectM5888for = p6.m5888for(1.0f, f, f2, i, i2, previewSize.width, previewSize.height);
                p6.m5892super("对焦区域", rectM5888for);
                parameters.setFocusAreas(Collections.singletonList(new Camera.Area(rectM5888for, 1000)));
                parameters.setFocusMode("macro");
                z = true;
            } else {
                p6.m5895try("不支持设置对焦区域");
                z = false;
            }
            if (parameters.getMaxNumMeteringAreas() > 0) {
                p6.m5895try("支持设置测光区域");
                Rect rectM5888for2 = p6.m5888for(1.5f, f, f2, i, i2, previewSize.width, previewSize.height);
                p6.m5892super("测光区域", rectM5888for2);
                parameters.setMeteringAreas(Collections.singletonList(new Camera.Area(rectM5888for2, 1000)));
            } else {
                p6.m5895try("不支持设置测光区域");
                z2 = z;
            }
            if (!z2) {
                this.f9026new = false;
                return;
            }
            this.f9022do.cancelAutoFocus();
            this.f9022do.setParameters(parameters);
            this.f9022do.autoFocus(new Cdo());
        } catch (Exception e) {
            e.printStackTrace();
            p6.m5889goto("对焦测光失败：" + e.getMessage());
            m10785catch();
        }
    }

    /* renamed from: try, reason: not valid java name */
    private static void m10789try(boolean z, Camera camera) {
        Camera.Parameters parameters = camera.getParameters();
        if (!parameters.isZoomSupported()) {
            p6.m5895try("不支持缩放");
            return;
        }
        int zoom = parameters.getZoom();
        if (z && zoom < parameters.getMaxZoom()) {
            p6.m5895try("放大");
            zoom++;
        } else if (z || zoom <= 0) {
            p6.m5895try("既不放大也不缩小");
        } else {
            p6.m5895try("缩小");
            zoom--;
        }
        parameters.setZoom(zoom);
        camera.setParameters(parameters);
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m10790case() {
        return this.f9022do != null && this.f9025if && this.f9024for;
    }

    /* renamed from: class, reason: not valid java name */
    public void m10791class() {
        Camera camera = this.f9022do;
        if (camera != null) {
            try {
                this.f9025if = false;
                camera.cancelAutoFocus();
                this.f9022do.setOneShotPreviewCallback(null);
                this.f9022do.stopPreview();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: else, reason: not valid java name */
    public void m10792else(Rect rect) {
        if (this.f9022do == null || rect == null || rect.left <= 0 || rect.top <= 0) {
            return;
        }
        int iCenterX = rect.centerX();
        int iCenterY = rect.centerY();
        int iWidth = rect.width() / 2;
        int iHeight = rect.height() / 2;
        p6.m5892super("转换前", rect);
        if (p6.m5884const(getContext())) {
            iCenterY = iCenterX;
            iCenterX = iCenterY;
            iHeight = iWidth;
            iWidth = iHeight;
        }
        Rect rect2 = new Rect(iCenterX - iWidth, iCenterY - iHeight, iCenterX + iWidth, iCenterY + iHeight);
        p6.m5892super("转换后", rect2);
        p6.m5895try("扫码框发生变化触发对焦测光");
        m10788new(rect2.centerX(), rect2.centerY(), rect2.width(), rect2.height());
    }

    /* renamed from: goto, reason: not valid java name */
    public void m10793goto() {
        if (m10787for()) {
            this.f9021case.m10864break(this.f9022do);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public void m10794if() {
        if (m10787for()) {
            this.f9021case.m10867if(this.f9022do);
        }
    }

    @Override // android.view.SurfaceView, android.view.View
    public void onMeasure(int i, int i2) {
        int defaultSize = SurfaceView.getDefaultSize(getSuggestedMinimumWidth(), i);
        int defaultSize2 = SurfaceView.getDefaultSize(getSuggestedMinimumHeight(), i2);
        Cif cif = this.f9021case;
        if (cif != null && cif.m10865case() != null) {
            Point pointM10865case = this.f9021case.m10865case();
            float f = defaultSize;
            float f2 = defaultSize2;
            float f3 = (f * 1.0f) / f2;
            float f4 = pointM10865case.x;
            float f5 = pointM10865case.y;
            float f6 = (f4 * 1.0f) / f5;
            if (f3 < f6) {
                defaultSize = (int) ((f2 / ((f5 * 1.0f) / f4)) + 0.5f);
            } else {
                defaultSize2 = (int) ((f / f6) + 0.5f);
            }
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(defaultSize, 1073741824), View.MeasureSpec.makeMeasureSpec(defaultSize2, 1073741824));
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!m10790case()) {
            return super.onTouchEvent(motionEvent);
        }
        if (motionEvent.getPointerCount() == 1 && (motionEvent.getAction() & 255) == 1) {
            if (this.f9026new) {
                return true;
            }
            this.f9026new = true;
            p6.m5895try("手指触摸触发对焦测光");
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            if (p6.m5884const(getContext())) {
                y = x;
                x = y;
            }
            int iM5886else = p6.m5886else(getContext(), 120.0f);
            m10788new(x, y, iM5886else, iM5886else);
        }
        if (motionEvent.getPointerCount() == 2) {
            int action = motionEvent.getAction() & 255;
            if (action == 2) {
                float fM5890if = p6.m5890if(motionEvent);
                float f = this.f9027try;
                if (fM5890if > f) {
                    m10789try(true, this.f9022do);
                } else if (fM5890if < f) {
                    m10789try(false, this.f9022do);
                }
            } else if (action == 5) {
                this.f9027try = p6.m5890if(motionEvent);
            }
        }
        return true;
    }

    public void setCamera(Camera camera) throws IOException {
        this.f9022do = camera;
        if (camera != null) {
            Cif cif = new Cif(getContext());
            this.f9021case = cif;
            cif.m10868this(this.f9022do);
            getHolder().addCallback(this);
            if (this.f9025if) {
                requestLayout();
            } else {
                m10784break();
            }
        }
    }

    public void setDelegate(Delegate delegate) {
        this.f9023else = delegate;
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) throws IOException {
        if (surfaceHolder.getSurface() == null) {
            return;
        }
        m10791class();
        m10784break();
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        this.f9024for = true;
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        this.f9024for = false;
        m10791class();
    }

    /* renamed from: this, reason: not valid java name */
    public void m10795this() throws IOException {
        if (getHolder() == null || getHolder().getSurface() == null) {
            return;
        }
        m10791class();
        m10784break();
    }
}
