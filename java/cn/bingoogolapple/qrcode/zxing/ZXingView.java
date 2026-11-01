package cn.bingoogolapple.qrcode.zxing;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.PointF;
import android.graphics.Rect;
import android.support.v4.di1;
import android.support.v4.p6;
import android.support.v4.th0;
import android.support.v4.tk0;
import android.support.v4.wn1;
import android.support.v4.xd1;
import android.support.v4.yn1;
import android.support.v4.zr1;
import android.text.TextUtils;
import android.util.AttributeSet;
import cn.bingoogolapple.qrcode.core.QRCodeView;
import com.google.zxing.Ccase;
import com.google.zxing.Cdo;
import com.google.zxing.Cfor;
import com.google.zxing.Cnew;
import java.util.Map;

/* loaded from: classes.dex */
public class ZXingView extends QRCodeView {

    /* renamed from: public, reason: not valid java name */
    private Ccase f9108public;

    /* renamed from: return, reason: not valid java name */
    private Map<Cnew, Object> f9109return;

    public ZXingView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* renamed from: transient, reason: not valid java name */
    private boolean m10869transient(Cdo cdo) {
        return m10809const() && cdo == Cdo.QR_CODE;
    }

    /* renamed from: implements, reason: not valid java name */
    public void m10870implements(cn.bingoogolapple.qrcode.core.Cdo cdo, Map<Cnew, Object> map) {
        this.f9033break = cdo;
        this.f9109return = map;
        if (cdo == cn.bingoogolapple.qrcode.core.Cdo.CUSTOM && (map == null || map.isEmpty())) {
            throw new RuntimeException("barcodeType 为 BarcodeType.CUSTOM 时 hintMap 不能为空");
        }
        mo10825switch();
    }

    @Override // cn.bingoogolapple.qrcode.core.QRCodeView
    /* renamed from: public */
    public zr1 mo10821public(Bitmap bitmap) {
        return new zr1(di1.m1339do(bitmap));
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0077 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0078  */
    @Override // cn.bingoogolapple.qrcode.core.QRCodeView
    /* renamed from: return */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public zr1 mo10822return(byte[] bArr, int i, int i2, boolean z) {
        wn1 wn1VarM21782if;
        Rect rectM10845goto;
        try {
            try {
                rectM10845goto = this.f9041for.m10845goto(i2);
                try {
                    xd1 xd1Var = rectM10845goto != null ? new xd1(bArr, i, i2, rectM10845goto.left, rectM10845goto.top, rectM10845goto.width(), rectM10845goto.height(), false) : new xd1(bArr, i, i2, 0, 0, i, i2, false);
                    wn1VarM21782if = this.f9108public.m21782if(new Cfor(new th0(xd1Var)));
                    if (wn1VarM21782if == null) {
                        try {
                            wn1VarM21782if = this.f9108public.m21782if(new Cfor(new tk0(xd1Var)));
                            if (wn1VarM21782if != null) {
                                p6.m5895try("GlobalHistogramBinarizer 没识别到，HybridBinarizer 能识别到");
                            }
                        } catch (Exception e) {
                            e = e;
                            e.printStackTrace();
                            if (wn1VarM21782if != null) {
                            }
                        }
                    }
                } catch (Exception e2) {
                    e = e2;
                    wn1VarM21782if = null;
                }
            } catch (Exception e3) {
                e = e3;
                wn1VarM21782if = null;
                rectM10845goto = null;
            }
            if (wn1VarM21782if != null) {
                return null;
            }
            String strM9245else = wn1VarM21782if.m9245else();
            if (TextUtils.isEmpty(strM9245else)) {
                return null;
            }
            Cdo cdoM9248if = wn1VarM21782if.m9248if();
            p6.m5895try("格式为：" + cdoM9248if.name());
            boolean zM10869transient = m10869transient(cdoM9248if);
            if (m10813final() || zM10869transient) {
                yn1[] yn1VarArrM9243case = wn1VarM21782if.m9243case();
                PointF[] pointFArr = new PointF[yn1VarArrM9243case.length];
                int i3 = 0;
                for (yn1 yn1Var : yn1VarArrM9243case) {
                    pointFArr[i3] = new PointF(yn1Var.m9911for(), yn1Var.m9912new());
                    i3++;
                }
                if (m10820protected(pointFArr, rectM10845goto, zM10869transient, strM9245else)) {
                    return null;
                }
            }
            return new zr1(strM9245else);
        } finally {
            this.f9108public.reset();
        }
    }

    @Override // cn.bingoogolapple.qrcode.core.QRCodeView
    /* renamed from: switch */
    public void mo10825switch() {
        Ccase ccase = new Ccase();
        this.f9108public = ccase;
        cn.bingoogolapple.qrcode.core.Cdo cdo = this.f9033break;
        if (cdo == cn.bingoogolapple.qrcode.core.Cdo.ONE_DIMENSION) {
            ccase.m21781for(di1.f1055if);
            return;
        }
        if (cdo == cn.bingoogolapple.qrcode.core.Cdo.TWO_DIMENSION) {
            ccase.m21781for(di1.f1054for);
            return;
        }
        if (cdo == cn.bingoogolapple.qrcode.core.Cdo.ONLY_QR_CODE) {
            ccase.m21781for(di1.f1056new);
            return;
        }
        if (cdo == cn.bingoogolapple.qrcode.core.Cdo.ONLY_CODE_128) {
            ccase.m21781for(di1.f1057try);
            return;
        }
        if (cdo == cn.bingoogolapple.qrcode.core.Cdo.ONLY_EAN_13) {
            ccase.m21781for(di1.f1051case);
            return;
        }
        if (cdo == cn.bingoogolapple.qrcode.core.Cdo.HIGH_FREQUENCY) {
            ccase.m21781for(di1.f1053else);
        } else if (cdo == cn.bingoogolapple.qrcode.core.Cdo.CUSTOM) {
            ccase.m21781for(this.f9109return);
        } else {
            ccase.m21781for(di1.f1052do);
        }
    }

    public ZXingView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
