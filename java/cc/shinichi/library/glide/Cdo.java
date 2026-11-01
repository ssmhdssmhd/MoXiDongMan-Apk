package cc.shinichi.library.glide;

import android.app.Activity;
import android.content.Context;
import android.support.v4.b70;
import android.support.v4.ow;
import android.support.v4.qr1;
import com.bumptech.glide.Glide;
import com.bumptech.glide.disklrucache.Cdo;
import com.bumptech.glide.load.engine.cache.DiskCache;
import com.bumptech.glide.load.model.Cif;
import java.io.File;

/* renamed from: cc.shinichi.library.glide.do, reason: invalid class name */
/* loaded from: classes.dex */
public class Cdo {

    /* renamed from: cc.shinichi.library.glide.do$do, reason: invalid class name and collision with other inner class name */
    public class RunnableC0006do implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Context f8737do;

        public RunnableC0006do(Context context) {
            this.f8737do = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            Glide.m11040new(this.f8737do.getApplicationContext()).m11059if();
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static void m10422do(Context context) {
        new Thread(new RunnableC0006do(context)).start();
    }

    /* renamed from: for, reason: not valid java name */
    public static File m10423for(Context context, String str) {
        try {
            Cdo.Ctry ctryM11124native = com.bumptech.glide.disklrucache.Cdo.m11118throws(new File(context.getCacheDir(), DiskCache.Factory.DEFAULT_DISK_CACHE_DIR), 1, 1, 262144000L).m11124native(new qr1().m6659do(new ow(new Cif(str), b70.m459do())));
            if (ctryM11124native != null) {
                return ctryM11124native.m11156if(0);
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m10424if(Activity activity) {
        Glide.m11040new(activity.getApplicationContext()).m11057for();
    }
}
