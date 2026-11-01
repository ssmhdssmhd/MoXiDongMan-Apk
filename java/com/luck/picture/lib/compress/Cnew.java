package com.luck.picture.lib.compress;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.v4.on0;
import android.support.v4.ps1;
import android.support.v4.rd1;
import android.support.v4.v9;
import android.text.TextUtils;
import android.util.Log;
import com.luck.picture.lib.entity.LocalMedia;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.luck.picture.lib.compress.new, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cnew implements Handler.Callback {

    /* renamed from: class, reason: not valid java name */
    private static final String f18634class = "Luban";

    /* renamed from: const, reason: not valid java name */
    private static final String f18635const = "luban_disk_cache";

    /* renamed from: final, reason: not valid java name */
    private static final int f18636final = 0;

    /* renamed from: super, reason: not valid java name */
    private static final int f18637super = 1;

    /* renamed from: throw, reason: not valid java name */
    private static final int f18638throw = 2;

    /* renamed from: while, reason: not valid java name */
    private static final int f18639while = 3;

    /* renamed from: break, reason: not valid java name */
    private int f18640break;

    /* renamed from: case, reason: not valid java name */
    private CompressionPredicate f18641case;

    /* renamed from: catch, reason: not valid java name */
    private Handler f18642catch;

    /* renamed from: do, reason: not valid java name */
    private String f18643do;

    /* renamed from: else, reason: not valid java name */
    private List<InputStreamProvider> f18644else;

    /* renamed from: for, reason: not valid java name */
    private int f18645for;

    /* renamed from: goto, reason: not valid java name */
    private List<String> f18646goto;

    /* renamed from: if, reason: not valid java name */
    private boolean f18647if;

    /* renamed from: new, reason: not valid java name */
    private OnRenameListener f18648new;

    /* renamed from: this, reason: not valid java name */
    private List<LocalMedia> f18649this;

    /* renamed from: try, reason: not valid java name */
    private OnCompressListener f18650try;

    /* renamed from: com.luck.picture.lib.compress.new$do, reason: invalid class name */
    public class Cdo implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Context f18651do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ InputStreamProvider f18653if;

        public Cdo(Context context, InputStreamProvider inputStreamProvider) {
            this.f18651do = context;
            this.f18653if = inputStreamProvider;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Cnew.m22992else(Cnew.this);
                boolean z = true;
                Cnew.this.f18642catch.sendMessage(Cnew.this.f18642catch.obtainMessage(1));
                File fileM23000this = Cnew.this.m23000this(this.f18651do, this.f18653if);
                if (Cnew.this.f18649this == null || Cnew.this.f18649this.size() <= 0) {
                    Cnew.this.f18642catch.sendMessage(Cnew.this.f18642catch.obtainMessage(2, new IOException()));
                } else {
                    LocalMedia localMedia = (LocalMedia) Cnew.this.f18649this.get(Cnew.this.f18640break);
                    boolean zM6913goto = rd1.m6913goto(fileM23000this.getAbsolutePath());
                    localMedia.m23090final(!zM6913goto);
                    localMedia.m23087const(zM6913goto ? "" : fileM23000this.getAbsolutePath());
                    if (Cnew.this.f18640break != Cnew.this.f18649this.size() - 1) {
                        z = false;
                    }
                    if (z) {
                        Cnew.this.f18642catch.sendMessage(Cnew.this.f18642catch.obtainMessage(3, Cnew.this.f18649this));
                    }
                }
                Cnew.this.f18642catch.sendMessage(Cnew.this.f18642catch.obtainMessage(0, fileM23000this));
            } catch (IOException e) {
                Cnew.this.f18642catch.sendMessage(Cnew.this.f18642catch.obtainMessage(2, e));
            }
        }
    }

    /* renamed from: com.luck.picture.lib.compress.new$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: case, reason: not valid java name */
        private OnCompressListener f18655case;

        /* renamed from: do, reason: not valid java name */
        private Context f18656do;

        /* renamed from: else, reason: not valid java name */
        private CompressionPredicate f18657else;

        /* renamed from: for, reason: not valid java name */
        private boolean f18658for;

        /* renamed from: if, reason: not valid java name */
        private String f18660if;

        /* renamed from: try, reason: not valid java name */
        private OnRenameListener f18663try;

        /* renamed from: new, reason: not valid java name */
        private int f18661new = 100;

        /* renamed from: this, reason: not valid java name */
        private List<String> f18662this = new ArrayList();

        /* renamed from: break, reason: not valid java name */
        private List<LocalMedia> f18654break = new ArrayList();

        /* renamed from: goto, reason: not valid java name */
        private List<InputStreamProvider> f18659goto = new ArrayList();

        /* renamed from: com.luck.picture.lib.compress.new$if$do, reason: invalid class name */
        public class Cdo extends com.luck.picture.lib.compress.Cfor {

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ File f18665if;

            public Cdo(File file) {
                this.f18665if = file;
            }

            @Override // com.luck.picture.lib.compress.Cfor
            /* renamed from: do */
            public InputStream mo22982do() throws IOException {
                return new FileInputStream(this.f18665if);
            }

            @Override // com.luck.picture.lib.compress.InputStreamProvider
            public String getPath() {
                return this.f18665if.getAbsolutePath();
            }
        }

        /* renamed from: com.luck.picture.lib.compress.new$if$for, reason: invalid class name */
        public class Cfor extends com.luck.picture.lib.compress.Cfor {

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ String f18667if;

            public Cfor(String str) {
                this.f18667if = str;
            }

            @Override // com.luck.picture.lib.compress.Cfor
            /* renamed from: do */
            public InputStream mo22982do() throws IOException {
                return new FileInputStream(this.f18667if);
            }

            @Override // com.luck.picture.lib.compress.InputStreamProvider
            public String getPath() {
                return this.f18667if;
            }
        }

        /* renamed from: com.luck.picture.lib.compress.new$if$if, reason: invalid class name and collision with other inner class name */
        public class C0175if extends com.luck.picture.lib.compress.Cfor {

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ LocalMedia f18669if;

            public C0175if(LocalMedia localMedia) {
                this.f18669if = localMedia;
            }

            @Override // com.luck.picture.lib.compress.Cfor
            /* renamed from: do */
            public InputStream mo22982do() throws IOException {
                String strM23093if;
                if (!ps1.m6218do()) {
                    return new FileInputStream(this.f18669if.m23085catch() ? this.f18669if.m23093if() : this.f18669if.m23084case());
                }
                if (this.f18669if.m23085catch()) {
                    strM23093if = this.f18669if.m23093if();
                } else {
                    Bitmap bitmapM8799do = v9.m8799do(Cif.this.f18656do, Uri.parse(this.f18669if.m23084case()));
                    String str = com.luck.picture.lib.tools.Cdo.m23297const(Cif.this.f18656do) + System.currentTimeMillis() + rd1.f5753if;
                    v9.m8800if(bitmapM8799do, str);
                    this.f18669if.m23087const(str);
                    strM23093if = str;
                }
                return new FileInputStream(strM23093if);
            }

            @Override // com.luck.picture.lib.compress.InputStreamProvider
            public String getPath() {
                return this.f18669if.m23085catch() ? this.f18669if.m23093if() : this.f18669if.m23088do();
            }
        }

        /* renamed from: com.luck.picture.lib.compress.new$if$new, reason: invalid class name and collision with other inner class name */
        public class C0176new extends com.luck.picture.lib.compress.Cfor {

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ Uri f18671if;

            public C0176new(Uri uri) {
                this.f18671if = uri;
            }

            @Override // com.luck.picture.lib.compress.Cfor
            /* renamed from: do */
            public InputStream mo22982do() throws IOException {
                return Cif.this.f18656do.getContentResolver().openInputStream(this.f18671if);
            }

            @Override // com.luck.picture.lib.compress.InputStreamProvider
            public String getPath() {
                return this.f18671if.getPath();
            }
        }

        /* renamed from: com.luck.picture.lib.compress.new$if$try, reason: invalid class name */
        public class Ctry extends com.luck.picture.lib.compress.Cfor {

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ String f18673if;

            public Ctry(String str) {
                this.f18673if = str;
            }

            @Override // com.luck.picture.lib.compress.Cfor
            /* renamed from: do */
            public InputStream mo22982do() throws IOException {
                return new FileInputStream(this.f18673if);
            }

            @Override // com.luck.picture.lib.compress.InputStreamProvider
            public String getPath() {
                return this.f18673if;
            }
        }

        public Cif(Context context) {
            this.f18656do = context;
        }

        /* renamed from: break, reason: not valid java name */
        private Cnew m23004break() {
            return new Cnew(this, null);
        }

        /* renamed from: import, reason: not valid java name */
        private Cif m23011import(LocalMedia localMedia) {
            this.f18659goto.add(new C0175if(localMedia));
            return this;
        }

        /* renamed from: catch, reason: not valid java name */
        public Cif m23015catch(CompressionPredicate compressionPredicate) {
            this.f18657else = compressionPredicate;
            return this;
        }

        /* renamed from: class, reason: not valid java name */
        public File m23016class(String str) throws IOException {
            return m23004break().m22988catch(new Ctry(str), this.f18656do);
        }

        /* renamed from: const, reason: not valid java name */
        public List<File> m23017const() throws IOException {
            return m23004break().m22989class(this.f18656do);
        }

        /* renamed from: default, reason: not valid java name */
        public Cif m23018default(boolean z) {
            this.f18658for = z;
            return this;
        }

        /* renamed from: extends, reason: not valid java name */
        public Cif m23019extends(OnRenameListener onRenameListener) {
            this.f18663try = onRenameListener;
            return this;
        }

        /* renamed from: final, reason: not valid java name */
        public Cif m23020final(int i) {
            this.f18661new = i;
            return this;
        }

        /* renamed from: finally, reason: not valid java name */
        public Cif m23021finally(String str) {
            this.f18660if = str;
            return this;
        }

        /* renamed from: native, reason: not valid java name */
        public Cif m23022native(File file) {
            this.f18659goto.add(new Cdo(file));
            return this;
        }

        /* renamed from: public, reason: not valid java name */
        public Cif m23023public(String str) {
            this.f18659goto.add(new Cfor(str));
            return this;
        }

        /* renamed from: return, reason: not valid java name */
        public <T> Cif m23024return(List<T> list) {
            for (T t : list) {
                if (t instanceof String) {
                    m23023public((String) t);
                } else if (t instanceof File) {
                    m23022native((File) t);
                } else {
                    if (!(t instanceof Uri)) {
                        throw new IllegalArgumentException("Incoming data type exception, it must be String, File, Uri or Bitmap");
                    }
                    m23028throw((Uri) t);
                }
            }
            return this;
        }

        /* renamed from: static, reason: not valid java name */
        public <T> Cif m23025static(List<LocalMedia> list) {
            this.f18654break = list;
            Iterator<LocalMedia> it = list.iterator();
            while (it.hasNext()) {
                m23011import(it.next());
            }
            return this;
        }

        /* renamed from: super, reason: not valid java name */
        public void m23026super() {
            m23004break().m23003while(this.f18656do);
        }

        /* renamed from: switch, reason: not valid java name */
        public Cif m23027switch(int i) {
            return this;
        }

        /* renamed from: throw, reason: not valid java name */
        public Cif m23028throw(Uri uri) {
            this.f18659goto.add(new C0176new(uri));
            return this;
        }

        /* renamed from: throws, reason: not valid java name */
        public Cif m23029throws(OnCompressListener onCompressListener) {
            this.f18655case = onCompressListener;
            return this;
        }

        /* renamed from: while, reason: not valid java name */
        public Cif m23030while(InputStreamProvider inputStreamProvider) {
            this.f18659goto.add(inputStreamProvider);
            return this;
        }
    }

    public /* synthetic */ Cnew(Cif cif, Cdo cdo) {
        this(cif);
    }

    /* renamed from: break, reason: not valid java name */
    private File m22986break(Context context, InputStreamProvider inputStreamProvider) throws IOException {
        com.luck.picture.lib.compress.Cdo cdo = com.luck.picture.lib.compress.Cdo.SINGLE;
        File fileM22999super = m22999super(context, cdo.extSuffix(inputStreamProvider));
        OnRenameListener onRenameListener = this.f18648new;
        if (onRenameListener != null) {
            fileM22999super = m23001throw(context, onRenameListener.rename(inputStreamProvider.getPath()));
        }
        CompressionPredicate compressionPredicate = this.f18641case;
        return compressionPredicate != null ? (compressionPredicate.apply(inputStreamProvider.getPath()) && cdo.needCompress(this.f18645for, inputStreamProvider.getPath())) ? new com.luck.picture.lib.compress.Cif(inputStreamProvider, fileM22999super, this.f18647if).m22985do() : new File(inputStreamProvider.getPath()) : cdo.needCompress(this.f18645for, inputStreamProvider.getPath()) ? new com.luck.picture.lib.compress.Cif(inputStreamProvider, fileM22999super, this.f18647if).m22985do() : new File(inputStreamProvider.getPath());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: catch, reason: not valid java name */
    public File m22988catch(InputStreamProvider inputStreamProvider, Context context) throws IOException {
        try {
            return new com.luck.picture.lib.compress.Cif(inputStreamProvider, m22999super(context, com.luck.picture.lib.compress.Cdo.SINGLE.extSuffix(inputStreamProvider)), this.f18647if).m22985do();
        } finally {
            inputStreamProvider.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: class, reason: not valid java name */
    public List<File> m22989class(Context context) throws IOException {
        ArrayList arrayList = new ArrayList();
        Iterator<InputStreamProvider> it = this.f18644else.iterator();
        while (it.hasNext()) {
            arrayList.add(m23000this(context, it.next()));
            it.remove();
        }
        return arrayList;
    }

    /* renamed from: const, reason: not valid java name */
    private File m22990const(Context context) {
        return m22993final(context, f18635const);
    }

    /* renamed from: else, reason: not valid java name */
    public static /* synthetic */ int m22992else(Cnew cnew) {
        int i = cnew.f18640break;
        cnew.f18640break = i + 1;
        return i;
    }

    /* renamed from: final, reason: not valid java name */
    private static File m22993final(Context context, String str) {
        File externalCacheDir = context.getExternalCacheDir();
        if (externalCacheDir == null) {
            Log.isLoggable(f18634class, 6);
            return null;
        }
        File file = new File(externalCacheDir, str);
        if (file.mkdirs() || (file.exists() && file.isDirectory())) {
            return file;
        }
        return null;
    }

    /* renamed from: import, reason: not valid java name */
    public static Cif m22997import(Context context) {
        return new Cif(context);
    }

    /* renamed from: super, reason: not valid java name */
    private File m22999super(Context context, String str) {
        if (TextUtils.isEmpty(this.f18643do)) {
            this.f18643do = m22990const(context).getAbsolutePath();
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.f18643do);
        sb.append(on0.f4694final);
        sb.append(System.currentTimeMillis());
        sb.append((int) (Math.random() * 1000.0d));
        if (TextUtils.isEmpty(str)) {
            str = ".jpg";
        }
        sb.append(str);
        return new File(sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: this, reason: not valid java name */
    public File m23000this(Context context, InputStreamProvider inputStreamProvider) throws IOException {
        try {
            return m22986break(context, inputStreamProvider);
        } finally {
            inputStreamProvider.close();
        }
    }

    /* renamed from: throw, reason: not valid java name */
    private File m23001throw(Context context, String str) {
        if (TextUtils.isEmpty(this.f18643do)) {
            this.f18643do = m22990const(context).getAbsolutePath();
        }
        return new File(this.f18643do + on0.f4694final + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: while, reason: not valid java name */
    public void m23003while(Context context) {
        List<InputStreamProvider> list = this.f18644else;
        if (list == null || this.f18646goto == null || (list.size() == 0 && this.f18650try != null)) {
            this.f18650try.onError(new NullPointerException("image file cannot be null"));
        }
        Iterator<InputStreamProvider> it = this.f18644else.iterator();
        this.f18640break = -1;
        while (it.hasNext()) {
            AsyncTask.SERIAL_EXECUTOR.execute(new Cdo(context, it.next()));
            it.remove();
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        OnCompressListener onCompressListener = this.f18650try;
        if (onCompressListener == null) {
            return false;
        }
        int i = message.what;
        if (i == 0) {
            onCompressListener.onSuccess((List) message.obj);
        } else if (i == 1) {
            onCompressListener.onStart();
        } else if (i == 2) {
            onCompressListener.onError((Throwable) message.obj);
        }
        return false;
    }

    private Cnew(Cif cif) {
        this.f18640break = -1;
        this.f18646goto = cif.f18662this;
        this.f18649this = cif.f18654break;
        this.f18643do = cif.f18660if;
        this.f18648new = cif.f18663try;
        this.f18644else = cif.f18659goto;
        this.f18650try = cif.f18655case;
        this.f18645for = cif.f18661new;
        this.f18641case = cif.f18657else;
        this.f18642catch = new Handler(Looper.getMainLooper(), this);
    }
}
