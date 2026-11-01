package com.qmuiteam.qmui.widget.webview;

import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.support.v4.ih1;
import android.support.v4.ph1;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.WindowInsets;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.qmuiteam.qmui.util.Cnew;
import com.qmuiteam.qmui.widget.IWindowInsetLayout;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class QMUIWebView extends WebView implements IWindowInsetLayout {

    /* renamed from: break, reason: not valid java name */
    private static boolean f20012break = false;

    /* renamed from: this, reason: not valid java name */
    private static final String f20013this = "QMUIWebView";

    /* renamed from: case, reason: not valid java name */
    private Callback f20014case;

    /* renamed from: do, reason: not valid java name */
    private Object f20015do;

    /* renamed from: else, reason: not valid java name */
    private List<OnScrollChangeListener> f20016else;

    /* renamed from: for, reason: not valid java name */
    private Method f20017for;

    /* renamed from: goto, reason: not valid java name */
    private Cnew f20018goto;

    /* renamed from: if, reason: not valid java name */
    private Object f20019if;

    /* renamed from: new, reason: not valid java name */
    private Rect f20020new;

    /* renamed from: try, reason: not valid java name */
    private boolean f20021try;

    public interface Callback {
        void onSureNotSupportChangeCssEnv();
    }

    public interface OnScrollChangeListener {
        void onScrollChange(WebView webView, int i, int i2, int i3, int i4);
    }

    public QMUIWebView(Context context) {
        super(context);
        this.f20021try = false;
        this.f20016else = new ArrayList();
        m24253this();
    }

    /* renamed from: do, reason: not valid java name */
    private void m24249do() {
        f20012break = true;
        Callback callback = this.f20014case;
        if (callback != null) {
            callback.onSureNotSupportChangeCssEnv();
        }
    }

    /* renamed from: else, reason: not valid java name */
    private Method m24250else(Object obj) throws NoSuchMethodException, SecurityException {
        try {
            Method declaredMethod = obj.getClass().getDeclaredMethod("setDisplayCutoutSafeArea", Rect.class);
            if (declaredMethod != null) {
                return declaredMethod;
            }
        } catch (NoSuchMethodException unused) {
        }
        for (Method method : obj.getClass().getDeclaredMethods()) {
            if (method.getReturnType() == Void.TYPE && method.getParameterTypes().length == 1 && method.getParameterTypes()[0] == Rect.class) {
                return method;
            }
        }
        return null;
    }

    /* renamed from: goto, reason: not valid java name */
    private Object m24251goto(Object obj) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        try {
            Field declaredField = obj.getClass().getDeclaredField("mWebContents");
            if (declaredField != null) {
                declaredField.setAccessible(true);
                return declaredField.get(obj);
            }
        } catch (NoSuchFieldException unused) {
        }
        for (Field field : obj.getClass().getDeclaredFields()) {
            field.setAccessible(true);
            Object obj2 = field.get(obj);
            if (obj2 != null && obj2.getClass().getSimpleName().equals("WebContentsImpl")) {
                return obj2;
            }
        }
        return null;
    }

    /* renamed from: if, reason: not valid java name */
    private Object m24252if(Object obj) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        try {
            Field declaredField = obj.getClass().getDeclaredField("mAwContents");
            if (declaredField != null) {
                declaredField.setAccessible(true);
                return declaredField.get(obj);
            }
        } catch (NoSuchFieldException unused) {
        }
        for (Field field : obj.getClass().getDeclaredFields()) {
            field.setAccessible(true);
            Object obj2 = field.get(obj);
            if (obj2 != null && obj2.getClass().getSimpleName().equals("AwContents")) {
                return obj2;
            }
        }
        return null;
    }

    private void setStyleDisplayCutoutSafeArea(@NonNull Rect rect) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException, InvocationTargetException {
        Rect rect2;
        if (f20012break || Build.VERSION.SDK_INT <= 24 || rect == (rect2 = this.f20020new)) {
            return;
        }
        if (rect2 == null) {
            this.f20020new = new Rect(rect);
        } else {
            rect2.set(rect);
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (this.f20015do == null || this.f20019if == null || this.f20017for == null) {
            try {
                Field declaredField = WebView.class.getDeclaredField("mProvider");
                declaredField.setAccessible(true);
                Object objM24252if = m24252if(declaredField.get(this));
                this.f20015do = objM24252if;
                if (objM24252if == null) {
                    return;
                }
                Object objM24251goto = m24251goto(objM24252if);
                this.f20019if = objM24251goto;
                if (objM24251goto == null) {
                    return;
                }
                Method methodM24250else = m24250else(objM24251goto);
                this.f20017for = methodM24250else;
                if (methodM24250else == null) {
                    m24249do();
                    return;
                }
            } catch (Exception e) {
                m24249do();
                StringBuilder sb = new StringBuilder();
                sb.append("setStyleDisplayCutoutSafeArea error: ");
                sb.append(e);
            }
        }
        try {
            this.f20017for.setAccessible(true);
            this.f20017for.invoke(this.f20019if, rect);
        } catch (Exception e2) {
            f20012break = true;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("setStyleDisplayCutoutSafeArea error: ");
            sb2.append(e2);
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append("setDisplayCutoutSafeArea speed time: ");
        sb3.append(System.currentTimeMillis() - jCurrentTimeMillis);
    }

    /* renamed from: this, reason: not valid java name */
    private void m24253this() {
        removeJavascriptInterface("searchBoxJavaBridge_");
        removeJavascriptInterface("accessibility");
        removeJavascriptInterface("accessibilityTraversal");
        this.f20018goto = new Cnew(this, this);
    }

    public void addCustomOnScrollChangeListener(OnScrollChangeListener onScrollChangeListener) {
        if (this.f20016else.contains(onScrollChangeListener)) {
            return;
        }
        this.f20016else.add(onScrollChangeListener);
    }

    @Override // android.webkit.WebView
    public void addJavascriptInterface(Object obj, String str) {
    }

    @Override // com.qmuiteam.qmui.widget.IWindowInsetLayout
    public boolean applySystemWindowInsets19(Rect rect) {
        return false;
    }

    @Override // com.qmuiteam.qmui.widget.IWindowInsetLayout
    public boolean applySystemWindowInsets21(Object obj) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException, InvocationTargetException {
        int systemWindowInsetLeft;
        int systemWindowInsetTop;
        int systemWindowInsetRight;
        int systemWindowInsetBottom;
        if (!this.f20021try) {
            return false;
        }
        float fM3443goto = ih1.m3443goto(getContext());
        if (ph1.m6059interface()) {
            WindowInsets windowInsets = (WindowInsets) obj;
            systemWindowInsetLeft = windowInsets.getSystemWindowInsetLeft();
            systemWindowInsetTop = windowInsets.getSystemWindowInsetTop();
            systemWindowInsetRight = windowInsets.getSystemWindowInsetRight();
            systemWindowInsetBottom = windowInsets.getSystemWindowInsetBottom();
        } else {
            WindowInsetsCompat windowInsetsCompat = (WindowInsetsCompat) obj;
            systemWindowInsetLeft = windowInsetsCompat.getSystemWindowInsetLeft();
            systemWindowInsetTop = windowInsetsCompat.getSystemWindowInsetTop();
            systemWindowInsetRight = windowInsetsCompat.getSystemWindowInsetRight();
            systemWindowInsetBottom = windowInsetsCompat.getSystemWindowInsetBottom();
        }
        setStyleDisplayCutoutSafeArea(new Rect((int) ((systemWindowInsetLeft / fM3443goto) + m24259new(fM3443goto)), (int) ((systemWindowInsetTop / fM3443goto) + m24255case(fM3443goto)), (int) ((systemWindowInsetRight / fM3443goto) + m24260try(fM3443goto)), (int) ((systemWindowInsetBottom / fM3443goto) + m24258for(fM3443goto))));
        return true;
    }

    /* renamed from: break, reason: not valid java name */
    public boolean m24254break() {
        return this.f20021try;
    }

    /* renamed from: case, reason: not valid java name */
    public int m24255case(float f) {
        return 0;
    }

    /* renamed from: catch, reason: not valid java name */
    public boolean m24256catch() {
        return f20012break;
    }

    /* renamed from: class, reason: not valid java name */
    public void m24257class() {
        this.f20016else.clear();
    }

    @Override // android.webkit.WebView
    public void destroy() {
        this.f20015do = null;
        this.f20019if = null;
        this.f20017for = null;
        stopLoading();
        super.destroy();
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    /* renamed from: for, reason: not valid java name */
    public int m24258for(float f) {
        return 0;
    }

    /* renamed from: new, reason: not valid java name */
    public int m24259new(float f) {
        return 0;
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewCompat.requestApplyInsets(this);
    }

    @Override // android.webkit.WebView, android.view.View
    public void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        Iterator<OnScrollChangeListener> it = this.f20016else.iterator();
        while (it.hasNext()) {
            it.next().onScrollChange(this, i, i2, i3, i4);
        }
    }

    public void removeOnScrollChangeListener(OnScrollChangeListener onScrollChangeListener) {
        this.f20016else.remove(onScrollChangeListener);
    }

    public void setCallback(Callback callback) {
        this.f20014case = callback;
    }

    @Deprecated
    public void setCustomOnScrollChangeListener(OnScrollChangeListener onScrollChangeListener) {
        addCustomOnScrollChangeListener(onScrollChangeListener);
    }

    public void setNeedDispatchSafeAreaInset(boolean z) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException, InvocationTargetException {
        if (this.f20021try != z) {
            this.f20021try = z;
            if (ViewCompat.isAttachedToWindow(this)) {
                if (z) {
                    ViewCompat.requestApplyInsets(this);
                } else {
                    setStyleDisplayCutoutSafeArea(new Rect());
                }
            }
        }
    }

    @Override // android.webkit.WebView
    public void setWebViewClient(WebViewClient webViewClient) {
        if (webViewClient != null && !(webViewClient instanceof Cdo)) {
            throw new IllegalArgumentException("must use the instance of QMUIWebViewClient");
        }
        super.setWebViewClient(webViewClient);
    }

    /* renamed from: try, reason: not valid java name */
    public int m24260try(float f) {
        return 0;
    }

    public QMUIWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f20021try = false;
        this.f20016else = new ArrayList();
        m24253this();
    }

    public QMUIWebView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f20021try = false;
        this.f20016else = new ArrayList();
        m24253this();
    }
}
