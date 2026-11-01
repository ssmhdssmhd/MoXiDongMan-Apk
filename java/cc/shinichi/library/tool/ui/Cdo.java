package cc.shinichi.library.tool.ui;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.widget.Toast;

/* renamed from: cc.shinichi.library.tool.ui.do, reason: invalid class name */
/* loaded from: classes.dex */
public class Cdo {

    /* renamed from: do, reason: not valid java name */
    private static final Handler f8760do = new Handler(Looper.getMainLooper());

    /* renamed from: cc.shinichi.library.tool.ui.do$do, reason: invalid class name and collision with other inner class name */
    public class RunnableC0012do implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Context f8761do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ String f8763if;

        public RunnableC0012do(Context context, String str) {
            this.f8761do = context;
            this.f8763if = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            Toast.makeText(this.f8761do.getApplicationContext(), this.f8763if, 0).show();
        }
    }

    /* renamed from: cc.shinichi.library.tool.ui.do$for, reason: invalid class name */
    public static class Cfor {

        /* renamed from: do, reason: not valid java name */
        private static Cdo f8764do = new Cdo();

        private Cfor() {
        }
    }

    /* renamed from: cc.shinichi.library.tool.ui.do$if, reason: invalid class name */
    public class Cif implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Context f8765do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ String f8767if;

        public Cif(Context context, String str) {
            this.f8765do = context;
            this.f8767if = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            Toast.makeText(this.f8765do.getApplicationContext(), this.f8767if, 1).show();
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static Cdo m10499for() {
        return Cfor.f8764do;
    }

    /* renamed from: do, reason: not valid java name */
    public void m10500do(Context context, String str) {
        f8760do.post(new Cif(context, str));
    }

    /* renamed from: if, reason: not valid java name */
    public void m10501if(Context context, String str) {
        f8760do.post(new RunnableC0012do(context, str));
    }
}
