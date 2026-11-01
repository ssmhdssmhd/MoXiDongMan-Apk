package cn.bingoogolapple.qrcode.core;

import android.content.Context;
import android.graphics.Point;
import android.hardware.Camera;
import android.support.v4.p6;
import android.view.WindowManager;
import com.scwang.smartrefresh.header.FunGameBattleCityHeader;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* renamed from: cn.bingoogolapple.qrcode.core.if, reason: invalid class name */
/* loaded from: classes.dex */
final class Cif {

    /* renamed from: do, reason: not valid java name */
    private final Context f9105do;

    /* renamed from: for, reason: not valid java name */
    private Point f9106for;

    /* renamed from: if, reason: not valid java name */
    private Point f9107if;

    public Cif(Context context) {
        this.f9105do = context;
    }

    /* renamed from: catch, reason: not valid java name */
    private int[] m10857catch(Camera camera, float f) {
        int i = (int) (f * 1000.0f);
        int[] iArr = null;
        int i2 = Integer.MAX_VALUE;
        for (int[] iArr2 : camera.getParameters().getSupportedPreviewFpsRange()) {
            int iAbs = Math.abs(i - iArr2[0]) + Math.abs(i - iArr2[1]);
            if (iAbs < i2) {
                iArr = iArr2;
                i2 = iAbs;
            }
        }
        return iArr;
    }

    /* renamed from: do, reason: not valid java name */
    private static boolean m10858do(Camera camera) {
        return m10863try(camera.getParameters().getSupportedFocusModes(), freemarker.log.Cif.f25066new) != null;
    }

    /* renamed from: else, reason: not valid java name */
    private int m10859else() {
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        int i = 0;
        Camera.getCameraInfo(0, cameraInfo);
        WindowManager windowManager = (WindowManager) this.f9105do.getSystemService("window");
        if (windowManager == null) {
            return 0;
        }
        int rotation = windowManager.getDefaultDisplay().getRotation();
        if (rotation != 0) {
            if (rotation == 1) {
                i = 90;
            } else if (rotation == 2) {
                i = 180;
            } else if (rotation == 3) {
                i = 270;
            }
        }
        return cameraInfo.facing == 1 ? (360 - ((cameraInfo.orientation + i) % FunGameBattleCityHeader.u)) % FunGameBattleCityHeader.u : ((cameraInfo.orientation - i) + FunGameBattleCityHeader.u) % FunGameBattleCityHeader.u;
    }

    /* renamed from: for, reason: not valid java name */
    private void m10860for(Camera camera, boolean z) {
        Camera.Parameters parameters = camera.getParameters();
        String strM10863try = z ? m10863try(parameters.getSupportedFlashModes(), "torch", "on") : m10863try(parameters.getSupportedFlashModes(), "off");
        if (strM10863try != null) {
            parameters.setFlashMode(strM10863try);
        }
        camera.setParameters(parameters);
    }

    /* renamed from: goto, reason: not valid java name */
    private static Point m10861goto(Camera.Parameters parameters, Point point) {
        Point pointM10862new = m10862new(parameters.getSupportedPreviewSizes(), point);
        return pointM10862new == null ? new Point((point.x >> 3) << 3, (point.y >> 3) << 3) : pointM10862new;
    }

    /* renamed from: new, reason: not valid java name */
    private static Point m10862new(List<Camera.Size> list, Point point) {
        Iterator<Camera.Size> it = list.iterator();
        int i = 0;
        int i2 = 0;
        int i3 = Integer.MAX_VALUE;
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Camera.Size next = it.next();
            int i4 = next.width;
            int i5 = next.height;
            int iAbs = Math.abs(i4 - point.x) + Math.abs(i5 - point.y);
            if (iAbs == 0) {
                i2 = i5;
                i = i4;
                break;
            }
            if (iAbs < i3) {
                i2 = i5;
                i = i4;
                i3 = iAbs;
            }
        }
        if (i <= 0 || i2 <= 0) {
            return null;
        }
        return new Point(i, i2);
    }

    /* renamed from: try, reason: not valid java name */
    private static String m10863try(Collection<String> collection, String... strArr) {
        if (collection != null) {
            for (String str : strArr) {
                if (collection.contains(str)) {
                    return str;
                }
            }
        }
        return null;
    }

    /* renamed from: break, reason: not valid java name */
    public void m10864break(Camera camera) {
        m10860for(camera, true);
    }

    /* renamed from: case, reason: not valid java name */
    public Point m10865case() {
        return this.f9107if;
    }

    /* renamed from: class, reason: not valid java name */
    public void m10866class(Camera camera) {
        Camera.Parameters parameters = camera.getParameters();
        Point point = this.f9106for;
        parameters.setPreviewSize(point.x, point.y);
        int[] iArrM10857catch = m10857catch(camera, 60.0f);
        if (iArrM10857catch != null) {
            parameters.setPreviewFpsRange(iArrM10857catch[0], iArrM10857catch[1]);
        }
        camera.setDisplayOrientation(m10859else());
        camera.setParameters(parameters);
    }

    /* renamed from: if, reason: not valid java name */
    public void m10867if(Camera camera) {
        m10860for(camera, false);
    }

    /* renamed from: this, reason: not valid java name */
    public void m10868this(Camera camera) {
        Point pointM5880break = p6.m5880break(this.f9105do);
        Point point = new Point();
        point.x = pointM5880break.x;
        point.y = pointM5880break.y;
        if (p6.m5884const(this.f9105do)) {
            point.x = pointM5880break.y;
            point.y = pointM5880break.x;
        }
        this.f9106for = m10861goto(camera.getParameters(), point);
        if (!p6.m5884const(this.f9105do)) {
            this.f9107if = this.f9106for;
        } else {
            Point point2 = this.f9106for;
            this.f9107if = new Point(point2.y, point2.x);
        }
    }
}
