package cc.shinichi.library.tool.image;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Environment;
import android.support.v4.on0;
import android.support.v4.pw0;
import android.support.v4.za0;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import cc.shinichi.library.tool.file.FileUtil;
import cc.shinichi.library.tool.file.SingleMediaScanner;
import com.bumptech.glide.Glide;
import com.bumptech.glide.request.transition.Transition;
import java.io.File;

/* renamed from: cc.shinichi.library.tool.image.do, reason: invalid class name */
/* loaded from: classes.dex */
public class Cdo {

    /* renamed from: cc.shinichi.library.tool.image.do$do, reason: invalid class name and collision with other inner class name */
    public class C0010do extends za0 {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Context f8756do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ String f8757if;

        /* renamed from: cc.shinichi.library.tool.image.do$do$do, reason: invalid class name and collision with other inner class name */
        public class C0011do implements SingleMediaScanner.ScanListener {
            public C0011do() {
            }

            @Override // cc.shinichi.library.tool.file.SingleMediaScanner.ScanListener
            public void onScanFinish() {
            }
        }

        public C0010do(Context context, String str) {
            this.f8756do = context;
            this.f8757if = str;
        }

        @Override // android.support.v4.za0, com.bumptech.glide.request.target.Target
        /* renamed from: do */
        public void onResourceReady(@NonNull File file, @Nullable Transition<? super File> transition) {
            String strM6232for;
            super.onResourceReady(file, transition);
            String str = Environment.getExternalStorageDirectory() + on0.f4694final + cc.shinichi.library.Cdo.m10382break().m10391else() + on0.f4694final;
            try {
                String str2 = this.f8757if;
                String strSubstring = str2.substring(str2.lastIndexOf(on0.f4694final) + 1, this.f8757if.length());
                if (strSubstring.contains(".")) {
                    strSubstring = strSubstring.substring(0, strSubstring.lastIndexOf("."));
                }
                strM6232for = pw0.m6232for(strSubstring);
            } catch (Exception e) {
                e.printStackTrace();
                strM6232for = System.currentTimeMillis() + "";
            }
            String str3 = strM6232for + "." + Cif.m10497try(file.getAbsolutePath());
            FileUtil.m10475while(str + str3);
            if (!FileUtil.m10469this(file, str, str3)) {
                cc.shinichi.library.tool.ui.Cdo.m10499for().m10501if(this.f8756do, "保存失败");
            } else {
                cc.shinichi.library.tool.ui.Cdo.m10499for().m10501if(this.f8756do, "成功保存到 ".concat(str).concat(str3));
                new SingleMediaScanner(this.f8756do, str.concat(str3), new C0011do());
            }
        }

        @Override // android.support.v4.za0, com.bumptech.glide.request.target.Target
        public void onLoadFailed(@Nullable Drawable drawable) {
            super.onLoadFailed(drawable);
            cc.shinichi.library.tool.ui.Cdo.m10499for().m10501if(this.f8756do, "保存失败");
        }

        @Override // android.support.v4.za0, com.bumptech.glide.request.target.Target
        public void onLoadStarted(@Nullable Drawable drawable) {
            super.onLoadStarted(drawable);
            cc.shinichi.library.tool.ui.Cdo.m10499for().m10501if(this.f8756do, "开始下载...");
            super.onLoadStarted(drawable);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static void m10476do(Context context, String str) {
        Glide.m11032abstract(context).mo6022catch().load(str).j0(new C0010do(context, str));
    }
}
