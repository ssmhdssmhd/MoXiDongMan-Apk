package com.wsw.cospa.service;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.os.Binder;
import android.os.Build;
import android.os.IBinder;
import android.support.v4.bz1;
import android.support.v4.ep1;
import android.support.v4.gp1;
import android.support.v4.hi0;
import android.support.v4.l22;
import android.support.v4.pk0;
import android.support.v4.r20;
import android.support.v4.v02;
import android.support.v4.vv0;
import android.support.v4.wq;
import android.support.v4.z90;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.collection.LongSparseArray;
import androidx.core.app.NotificationCompat;
import com.wsw.cospa.CartoonApplication;
import com.wsw.cospa.R;
import com.wsw.cospa.activity.DownloadTaskActivity;
import com.wsw.cospa.bean.ChapterListBean;
import com.wsw.cospa.bean.ComicContentBean;
import com.wsw.cospa.bean.ComicContentImgBean;
import com.wsw.cospa.bean.ComicSourceBean;
import com.wsw.cospa.bean.Task;
import com.wsw.cospa.dao.DatabaseHelper;
import com.wsw.cospa.model.Cfinal;
import com.wsw.cospa.model.Cthrow;
import com.wsw.cospa.model.Cwhile;
import com.wsw.cospa.utils.Cpackage;
import com.wsw.cospa.utils.Cswitch;
import com.wsw.cospa.utils.Cvolatile;
import com.wsw.cospa.utils.DocumentFile;
import com.wsw.cospa.utils.analyzeUrl.AnalyzeHeaders;
import io.reactivex.Ctry;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Pattern;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import org.apache.commons.lang3.Cclass;

/* loaded from: classes2.dex */
public class DownloadService extends Service {

    /* renamed from: case, reason: not valid java name */
    private Cthrow f22479case;

    /* renamed from: catch, reason: not valid java name */
    private Notification f22480catch;

    /* renamed from: class, reason: not valid java name */
    private NotificationChannel f22481class;

    /* renamed from: do, reason: not valid java name */
    private int f22483do;

    /* renamed from: else, reason: not valid java name */
    private ContentResolver f22484else;

    /* renamed from: for, reason: not valid java name */
    private ExecutorService f22486for;

    /* renamed from: if, reason: not valid java name */
    private LongSparseArray<Pair<Cfor, Future>> f22488if;

    /* renamed from: new, reason: not valid java name */
    private Ctry f22489new;

    /* renamed from: this, reason: not valid java name */
    private NotificationManager f22490this;

    /* renamed from: try, reason: not valid java name */
    private OkHttpClient f22491try;

    /* renamed from: super, reason: not valid java name */
    public static final String f22475super = DownloadService.class.getSimpleName();

    /* renamed from: throw, reason: not valid java name */
    public static boolean f22476throw = false;

    /* renamed from: while, reason: not valid java name */
    private static final ThreadFactory f22477while = new Cdo();

    /* renamed from: import, reason: not valid java name */
    private static final BlockingQueue<Runnable> f22474import = new LinkedBlockingQueue(128);

    /* renamed from: goto, reason: not valid java name */
    private int f22487goto = 1000;

    /* renamed from: break, reason: not valid java name */
    private NotificationCompat.Builder f22478break = null;

    /* renamed from: const, reason: not valid java name */
    public String f22482const = "channel_id";

    /* renamed from: final, reason: not valid java name */
    public String f22485final = "channel_name";

    /* renamed from: com.wsw.cospa.service.DownloadService$do, reason: invalid class name */
    public class Cdo implements ThreadFactory {

        /* renamed from: do, reason: not valid java name */
        private final AtomicInteger f22492do = new AtomicInteger(1);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "MyDownloadManager #" + this.f22492do.getAndIncrement());
        }
    }

    /* renamed from: com.wsw.cospa.service.DownloadService$for, reason: invalid class name */
    public class Cfor implements Runnable {

        /* renamed from: do, reason: not valid java name */
        private Task f22493do;

        /* renamed from: com.wsw.cospa.service.DownloadService$for$do, reason: invalid class name */
        public class Cdo extends bz1<ComicContentBean> {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ ChapterListBean f22495do;

            public Cdo(ChapterListBean chapterListBean) {
                this.f22495do = chapterListBean;
            }

            @Override // io.reactivex.Observer
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public void onNext(ComicContentBean comicContentBean) throws InterruptedException {
                int i = 3;
                try {
                    List<ComicContentImgBean> durContentUrl = comicContentBean.getDurContentUrl();
                    DatabaseHelper.m26016switch().m26027finally(comicContentBean);
                    int size = durContentUrl.size();
                    if (size <= 0) {
                        vv0.m8965if(DownloadService.f22475super, "error : 获取章节失败");
                        Cfor.this.f22493do.setErrorMessage("获取章节失败，请点击重试！");
                        r20.m6733case().mo970if(new gp1(21, 5, Cfor.this.f22493do.getId(), Cfor.this.f22493do.getErrorMessage()));
                        return;
                    }
                    DocumentFile documentFileM26390public = Cfinal.m26390public(DownloadService.this.f22484else, CartoonApplication.m24693try().m24697new(), Cfor.this.f22493do);
                    if (documentFileM26390public == null) {
                        vv0.m8965if(DownloadService.f22475super, "error : 无法创建漫画目录");
                        Cfor.this.f22493do.setErrorMessage("无法创建漫画目录，请检查是否授予了文件读写权限或者删除图源名对应的图标后重试！");
                        r20.m6733case().mo970if(new gp1(21, 5, Cfor.this.f22493do.getId(), Cfor.this.f22493do.getErrorMessage()));
                        return;
                    }
                    Cfor.this.f22493do.setMax(size);
                    Cfor.this.f22493do.setState(3);
                    r20.m6733case().mo970if(new gp1(21, 3, Cfor.this.f22493do.getId()));
                    int progress = Cfor.this.f22493do.getProgress();
                    int i2 = 2;
                    while (progress < size) {
                        Cfor.this.m26581final(progress);
                        ComicContentImgBean comicContentImgBean = durContentUrl.get(progress);
                        int iM26579do = 2;
                        int i3 = 0;
                        while (true) {
                            int i4 = i3 + 1;
                            if (i3 >= 20 || iM26579do == 0) {
                                break;
                            }
                            String imgurl = comicContentImgBean.getImgurl();
                            Request requestM26586this = Cfor.this.m26586this(imgurl, comicContentImgBean);
                            Cfor cfor = Cfor.this;
                            int i5 = progress + 1;
                            iM26579do = cfor.m26579do(this.f22495do, comicContentImgBean, cfor.f22493do, documentFileM26390public, requestM26586this, i5, imgurl);
                            if (iM26579do == 0) {
                                r20 r20VarM6733case = r20.m6733case();
                                Object[] objArr = new Object[i];
                                objArr[0] = 0;
                                objArr[1] = Cfor.this.f22493do.getId();
                                objArr[2] = Cfor.this.f22493do.getErrorMessage();
                                r20VarM6733case.mo970if(new gp1(21, objArr));
                            } else if (iM26579do == 1) {
                                String strSubstring = Cfor.this.m26590super(imgurl, "http") > 1 ? imgurl.substring(imgurl.lastIndexOf("http")) : imgurl;
                                Request requestM26586this2 = Cfor.this.m26586this(strSubstring, comicContentImgBean);
                                Cfor cfor2 = Cfor.this;
                                iM26579do = cfor2.m26579do(this.f22495do, comicContentImgBean, cfor2.f22493do, documentFileM26390public, requestM26586this2, i5, strSubstring);
                            }
                            i3 = i4;
                            i = 3;
                        }
                        Thread.sleep(50L);
                        if (iM26579do != 0) {
                            r20.m6733case().mo970if(new gp1(21, 5, Cfor.this.f22493do.getId(), Cfor.this.f22493do.getErrorMessage()));
                        } else {
                            Cfor.this.m26577class(this.f22495do, progress + 1);
                        }
                        progress++;
                        i2 = iM26579do;
                        i = 3;
                    }
                    if (i2 == 0) {
                        Cfor.this.m26581final(size);
                    }
                } catch (Exception e) {
                    vv0.m8965if(DownloadService.f22475super, "run : " + e.getMessage());
                    Cfor.this.f22493do.setErrorMessage(e.getMessage());
                    r20.m6733case().mo970if(new gp1(21, 5, Cfor.this.f22493do.getId(), Cfor.this.f22493do.getErrorMessage()));
                }
            }

            @Override // android.support.v4.bz1
            public void onError(String str) {
                super.onError(str);
                Cfor.this.f22493do.setErrorMessage(str);
                r20.m6733case().mo970if(new gp1(21, 5, Cfor.this.f22493do.getId(), Cfor.this.f22493do.getErrorMessage()));
            }
        }

        public Cfor(Task task) {
            this.f22493do = task;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: class, reason: not valid java name */
        public synchronized void m26577class(ChapterListBean chapterListBean, int i) {
            Intent intent = new Intent(CartoonApplication.m24690do(), (Class<?>) DownloadTaskActivity.class);
            intent.putExtra(z90.f8480new, chapterListBean.getNoteUrl());
            PendingIntent activity = PendingIntent.getActivity(CartoonApplication.m24690do(), 0, intent, 134217728);
            if (Build.VERSION.SDK_INT >= 26) {
                DownloadService downloadService = DownloadService.this;
                DownloadService downloadService2 = DownloadService.this;
                downloadService.f22481class = new NotificationChannel(downloadService2.f22482const, downloadService2.f22485final, 2);
                DownloadService.this.f22481class.enableLights(false);
                DownloadService.this.f22481class.setLightColor(-65536);
                DownloadService.this.f22481class.setShowBadge(true);
                DownloadService.this.f22481class.enableVibration(false);
                DownloadService.this.f22481class.setSound(null, null);
                DownloadService.this.f22481class.setLockscreenVisibility(1);
                DownloadService.this.f22490this.createNotificationChannel(DownloadService.this.f22481class);
            }
            DownloadService.this.f22478break = new NotificationCompat.Builder(CartoonApplication.m24690do(), DownloadService.this.f22482const).setSmallIcon(R.drawable.arg_res_0x7f0800c9).setLargeIcon(BitmapFactory.decodeResource(DownloadService.this.getResources(), R.mipmap.arg)).setAutoCancel(true).setPriority(-1).setContentTitle("正在下载：" + this.f22493do.getName()).setContentText(chapterListBean.getDurChapterName() + "(" + i + ")").setContentIntent(activity);
            DownloadService downloadService3 = DownloadService.this;
            downloadService3.f22480catch = downloadService3.f22478break.build();
            DownloadService.this.f22490this.notify(DownloadService.this.f22487goto, DownloadService.this.f22480catch);
        }

        /* renamed from: const, reason: not valid java name */
        private synchronized void m26578const() {
            System.out.println("当前线程" + Thread.currentThread().getName());
            this.f22493do.setState(2);
            r20.m6733case().mo970if(new gp1(21, 2, this.f22493do.getId()));
            ChapterListBean chapterListBean = new ChapterListBean(this.f22493do.getNoteUrl(), this.f22493do.getDurChapterIndex(), this.f22493do.getParentIdString(), this.f22493do.getParentNameString(), this.f22493do.getChapterId(), this.f22493do.getDurChapterUrl(), this.f22493do.getDurChapterName(), this.f22493do.getNextChapterUrl(), this.f22493do.getVariable(), this.f22493do.getTag(), this.f22493do.getStart(), this.f22493do.getEnd(), this.f22493do.getComicInfoUrl(), false, false, this.f22493do.getId().longValue());
            Cwhile.m26502catch().m26512break(chapterListBean).subscribe(new Cdo(chapterListBean));
            DownloadService.this.m26572const(this.f22493do.getId().longValue());
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: do, reason: not valid java name */
        public int m26579do(ChapterListBean chapterListBean, ComicContentImgBean comicContentImgBean, Task task, DocumentFile documentFile, Request request, int i, String str) throws InterruptedIOException {
            if (request != null) {
                AutoCloseable autoCloseable = null;
                try {
                    try {
                        try {
                            try {
                                Response responseExecute = DownloadService.this.f22491try.newCall(request).execute();
                                responseExecute.code();
                                if (responseExecute.isSuccessful()) {
                                    DocumentFile documentFileM27092new = Cswitch.m27092new(documentFile, m26583goto(i, str));
                                    if (documentFileM27092new != null) {
                                        Cswitch.m27085catch(chapterListBean, comicContentImgBean, DownloadService.this.f22484else, documentFileM27092new, responseExecute.body().byteStream());
                                    }
                                    responseExecute.close();
                                    return 0;
                                }
                                if (responseExecute.code() == 404) {
                                    vv0.m8965if(DownloadService.f22475super, "error : 图片404");
                                    task.setErrorMessage("章节图片地址不存在");
                                    responseExecute.close();
                                    return 1;
                                }
                                vv0.m8965if(DownloadService.f22475super, "error code : " + responseExecute.code());
                                task.setErrorMessage("error code : " + responseExecute.code());
                                responseExecute.close();
                                return 2;
                            } catch (SocketTimeoutException e) {
                                vv0.m8965if(DownloadService.f22475super, "error message : " + e.getMessage());
                                e.printStackTrace();
                                if (0 != 0) {
                                    autoCloseable.close();
                                }
                            }
                        } catch (InterruptedIOException e2) {
                            vv0.m8965if(DownloadService.f22475super, "error message : " + e2.getMessage());
                            throw e2;
                        }
                    } catch (IOException e3) {
                        vv0.m8965if(DownloadService.f22475super, "error message : " + e3.getMessage());
                        e3.printStackTrace();
                        if (0 != 0) {
                            autoCloseable.close();
                        }
                    }
                } catch (Throwable th) {
                    if (0 != 0) {
                        autoCloseable.close();
                    }
                    throw th;
                }
            }
            return 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: final, reason: not valid java name */
        public void m26581final(int i) {
            this.f22493do.setProgress(i);
            DownloadService.this.f22479case.m26487throw(this.f22493do);
            r20.m6733case().mo970if(new gp1(22, this.f22493do.getId(), Integer.valueOf(i), Integer.valueOf(this.f22493do.getMax())));
        }

        /* renamed from: goto, reason: not valid java name */
        private String m26583goto(int i, String str) {
            String str2 = "jpg";
            if (str.lastIndexOf("jpg") == -1 && str.lastIndexOf("JPG") == -1) {
                if (str.lastIndexOf("png") != -1 || str.lastIndexOf("PNG") != -1) {
                    str2 = "png";
                } else if (str.lastIndexOf("webp") != -1 || str.lastIndexOf("WEBP") != -1) {
                    str2 = "webp";
                } else if (str.lastIndexOf("jpeg") != -1 || str.lastIndexOf("JPEG") != -1) {
                    str2 = "jpeg";
                } else if (str.lastIndexOf("gif") != -1 || str.lastIndexOf("GIF") != -1) {
                    str2 = "gif";
                }
            }
            return l22.m4553case("%03d.%s", Integer.valueOf(i), str2);
        }

        /* renamed from: if, reason: not valid java name */
        private int m26584if(Request request) throws InterruptedIOException {
            if (request != null) {
                Response responseExecute = null;
                try {
                    try {
                        try {
                            responseExecute = DownloadService.this.f22491try.newCall(request).execute();
                            if (responseExecute.isSuccessful()) {
                                responseExecute.close();
                                return 0;
                            }
                            if (responseExecute.code() == 404) {
                                responseExecute.close();
                                return 1;
                            }
                            responseExecute.close();
                            return 2;
                        } catch (SocketTimeoutException e) {
                            e.printStackTrace();
                            if (responseExecute != null) {
                                responseExecute.close();
                            }
                        }
                    } catch (InterruptedIOException e2) {
                        throw e2;
                    } catch (IOException e3) {
                        e3.printStackTrace();
                        if (responseExecute != null) {
                            responseExecute.close();
                        }
                    }
                } catch (Throwable th) {
                    if (responseExecute != null) {
                        responseExecute.close();
                    }
                    throw th;
                }
            }
            return 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: this, reason: not valid java name */
        public Request m26586this(String str, ComicContentImgBean comicContentImgBean) {
            String defaultUserAgent;
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            Request.Builder builder = new Request.Builder().url(str).removeHeader(pk0.b).get();
            try {
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (!Pattern.compile("(http://|https://)", 2).matcher(str).lookingAt()) {
                return null;
            }
            if (str.contains("[\"")) {
                str = str.replace("[\"", "");
            }
            if (str.contains("\"]")) {
                str = str.replace("\"]", "");
            }
            vv0.m8965if(DownloadService.f22475super, "buildRequest  url : " + str);
            Map<String, String> variableMap = comicContentImgBean.getVariableMap();
            boolean z = false;
            if (variableMap != null && !variableMap.isEmpty()) {
                for (String str2 : variableMap.keySet()) {
                    boolean zEqualsIgnoreCase = str2.toString().equalsIgnoreCase(pk0.b);
                    String string = str2.toString();
                    String str3 = variableMap.get(str2);
                    Objects.requireNonNull(str3);
                    builder.addHeader(string, str3);
                    z = zEqualsIgnoreCase;
                }
            }
            ComicSourceBean comicSourceBeanM27177goto = com.wsw.cospa.utils.Cwhile.m27177goto(this.f22493do.getTag());
            if (!z && (defaultUserAgent = AnalyzeHeaders.getDefaultUserAgent(comicSourceBeanM27177goto)) != null && !defaultUserAgent.isEmpty()) {
                builder.addHeader(pk0.b, defaultUserAgent);
            }
            return builder.build();
        }

        /* renamed from: break, reason: not valid java name */
        public boolean m26588break(String str) {
            if (str != null && !str.isEmpty()) {
                for (char c : str.toCharArray()) {
                    if (str.indexOf(c) != str.lastIndexOf(c)) {
                        return true;
                    }
                }
            }
            return false;
        }

        /* renamed from: catch, reason: not valid java name */
        public String m26589catch(String str) {
            int iLastIndexOf;
            return (str == null || str.length() <= 0 || (iLastIndexOf = str.lastIndexOf(46)) <= -1 || iLastIndexOf >= str.length() + (-1)) ? str : str.substring(iLastIndexOf + 1);
        }

        @Override // java.lang.Runnable
        public void run() {
            m26578const();
        }

        /* renamed from: super, reason: not valid java name */
        public int m26590super(String str, String str2) {
            int length = 0;
            int i = 0;
            while (true) {
                int iIndexOf = str.indexOf(str2, length);
                if (iIndexOf < 0) {
                    return i;
                }
                length = iIndexOf + str2.length();
                i++;
            }
        }
    }

    /* renamed from: com.wsw.cospa.service.DownloadService$if, reason: invalid class name */
    public class Cif extends Binder {
        public Cif() {
        }

        /* renamed from: do, reason: not valid java name */
        public DownloadService m26592do() {
            return DownloadService.this;
        }
    }

    /* renamed from: final, reason: not valid java name */
    public static Intent m26562final(Context context, Task task) {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(task);
        return m26567super(context, arrayList);
    }

    /* renamed from: super, reason: not valid java name */
    public static Intent m26567super(Context context, ArrayList<Task> arrayList) {
        Intent intent = new Intent(context, (Class<?>) DownloadService.class);
        intent.putExtra(z90.f8479if, Cpackage.m27019do(arrayList));
        return intent;
    }

    /* renamed from: while, reason: not valid java name */
    private void m26570while() {
        stopForeground(true);
        this.f22488if.clear();
        ep1.m1972do().m1973for(new gp1(43, new Object[0]));
    }

    /* renamed from: class, reason: not valid java name */
    public synchronized void m26571class(long j, Cfor cfor, Future future) {
        if (this.f22488if.get(j) == null) {
            this.f22488if.put(j, Pair.create(cfor, future));
        }
    }

    /* renamed from: const, reason: not valid java name */
    public synchronized void m26572const(long j) {
        this.f22488if.remove(j);
        if (this.f22488if.size() == 0) {
            m26570while();
            stopSelf();
        }
    }

    /* renamed from: import, reason: not valid java name */
    public synchronized void m26573import(long j) {
        Pair<Cfor, Future> pair = this.f22488if.get(j);
        if (pair != null) {
            ((Future) pair.second).cancel(true);
            this.f22488if.remove(j);
        }
    }

    /* renamed from: native, reason: not valid java name */
    public synchronized void m26574native(Intent intent) {
        List<Task> listM3040do;
        ep1.m1972do().m1973for(new gp1(42, new Object[0]));
        String stringExtra = intent.getStringExtra(z90.f8479if);
        if (Cclass.E(stringExtra) && (listM3040do = hi0.m3040do(stringExtra, Task.class)) != null && listM3040do.size() > 0) {
            for (Task task : listM3040do) {
                Cfor cfor = new Cfor(task);
                m26571class(task.getId().longValue(), cfor, this.f22486for.submit(cfor));
            }
        }
    }

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(Intent intent) {
        return new Cif();
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        f22476throw = true;
        this.f22490this = (NotificationManager) getSystemService("notification");
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationChannel notificationChannel = new NotificationChannel(this.f22482const, this.f22485final, 4);
            this.f22481class = notificationChannel;
            notificationChannel.enableLights(true);
            this.f22481class.setLightColor(-65536);
            this.f22481class.setShowBadge(true);
            this.f22481class.setSound(null, null);
            this.f22481class.setLockscreenVisibility(1);
            this.f22481class.enableVibration(false);
            this.f22490this.createNotificationChannel(this.f22481class);
        }
        NotificationCompat.Builder vibrate = new NotificationCompat.Builder(this, this.f22482const).setSmallIcon(R.drawable.arg_res_0x7f0800c9).setLargeIcon(BitmapFactory.decodeResource(getResources(), R.mipmap.arg)).setOngoing(true).setAutoCancel(true).setSound(null).setVisibility(1).setVibrate(null);
        this.f22478break = vibrate;
        Notification notificationBuild = vibrate.build();
        this.f22480catch = notificationBuild;
        startForeground(this.f22487goto, notificationBuild);
        this.f22483do = Runtime.getRuntime().availableProcessors();
        int iM8715for = v02.m8711if(CartoonApplication.m24690do()).m8715for(wq.f7616instanceof, 2);
        this.f22488if = new LongSparseArray<>();
        this.f22486for = Executors.newFixedThreadPool(iM8715for);
        this.f22491try = Cvolatile.m27161else().build();
        this.f22479case = Cthrow.m26474else();
        this.f22484else = getContentResolver();
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        f22476throw = false;
        ExecutorService executorService = this.f22486for;
        if (executorService != null) {
            executorService.shutdownNow();
        }
        this.f22490this.cancelAll();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        List<Task> listM3040do;
        if (intent != null) {
            ep1.m1972do().m1973for(new gp1(42, new Object[0]));
            String stringExtra = intent.getStringExtra(z90.f8479if);
            if (Cclass.E(stringExtra) && (listM3040do = hi0.m3040do(stringExtra, Task.class)) != null && listM3040do.size() > 0) {
                for (Task task : listM3040do) {
                    Cfor cfor = new Cfor(task);
                    m26571class(task.getId().longValue(), cfor, this.f22486for.submit(cfor));
                }
            }
        }
        return super.onStartCommand(intent, i, i2);
    }

    /* renamed from: throw, reason: not valid java name */
    public synchronized void m26575throw(List<Task> list) {
        for (Task task : list) {
            Pair<Cfor, Future> pair = this.f22488if.get(task.getId().longValue());
            if (pair != null) {
                task.setState(((Cfor) pair.first).f22493do.getState());
            }
        }
    }
}
