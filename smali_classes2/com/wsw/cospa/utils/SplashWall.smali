.class public Lcom/wsw/cospa/utils/SplashWall;
.super Ljava/lang/Object;
.source "SplashWall.java"


# static fields
.field private static final LINE1:Ljava/lang/String; = "https://cdn.jsdelivr.net/gh/ssmhdssmhd/MoXiDongMan-Apk@main/wallpapers/wallpaper."

.field private static final LINE2:Ljava/lang/String; = "https://ghfast.top/https://raw.githubusercontent.com/ssmhdssmhd/MoXiDongMan-Apk/main/wallpapers/wallpaper."

.field private static FINISHED:Z = false

.field private static START:J = 0x0


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildUrl(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    if-ge p1, v1, :cond_two

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_two
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static cacheFile(Landroid/app/Activity;I)Ljava/io/File;
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "splash.w."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    if-ge p1, v2, :cond_two

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_two
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method static dayIndex()I
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    const-wide/16 v2, 0x8

    rem-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static download(Ljava/io/File;I)Landroid/graphics/Bitmap;
    .locals 12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x1770

    add-long/2addr v0, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_loop
    const/4 v4, 0x2

    if-ge v2, v4, :cond_done

    if-nez v2, :cond_line2

    sget-object v4, Lcom/wsw/cospa/utils/SplashWall;->LINE1:Ljava/lang/String;

    goto :goto_build

    :cond_line2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    cmp-long v8, v6, v0

    if-gtz v8, :goto_done

    sget-object v4, Lcom/wsw/cospa/utils/SplashWall;->LINE2:Ljava/lang/String;

    :goto_build
    invoke-static {v4, p1}, Lcom/wsw/cospa/utils/SplashWall;->buildUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;

    const/16 v7, 0x9c4

    invoke-virtual {v6, v7}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v7, 0xbb8

    invoke-virtual {v6, v7}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    move-object v5, v6

    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v3, :goto_next

    invoke-static {v3, p0}, Lcom/wsw/cospa/utils/SplashWall;->save(Landroid/graphics/Bitmap;Ljava/io/File;)V

    return-object v3

    :catch_0
    move-exception v6

    if-eqz v5, :goto_next

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :goto_next
    add-int/lit8 v2, v2, 0x1

    goto :goto_loop

    :goto_done
    :cond_done
    return-object v3
.end method

.method static finishOnce(Landroid/os/Handler;Ljava/lang/Runnable;J)V
    .locals 3

    const-class v0, Lcom/wsw/cospa/utils/SplashWall;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/wsw/cospa/utils/SplashWall;->FINISHED:Z

    if-eqz v1, :cond_skip

    const/4 v1, 0x0

    goto :goto_out

    :cond_skip
    const/4 v1, 0x1

    sput-boolean v1, Lcom/wsw/cospa/utils/SplashWall;->FINISHED:Z

    :goto_out
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_ret

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_ret
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2
.end method

.method static remaining()J
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/wsw/cospa/utils/SplashWall;->START:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x4b0

    cmp-long v4, v0, v2

    if-gez v4, :cond_zero

    sub-long/2addr v2, v0

    return-wide v2

    :cond_zero
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method static save(Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    return-void
.end method

.method public static show(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 8

    const v0, 0x7f0903bd

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sput-wide v2, Lcom/wsw/cospa/utils/SplashWall;->START:J

    const/4 v2, 0x0

    sput-boolean v2, Lcom/wsw/cospa/utils/SplashWall;->FINISHED:Z

    new-instance v2, Lcom/wsw/cospa/utils/SplashWall$Timeout;

    invoke-direct {v2, v1, p1}, Lcom/wsw/cospa/utils/SplashWall$Timeout;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;)V

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    if-nez v0, :cond_add

    return-void

    :cond_add
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/high16 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    const v3, 0x7f09024c

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_load

    invoke-virtual {v3}, Landroid/view/View;->bringToFront()V

    :cond_load
    new-instance v3, Lcom/wsw/cospa/utils/SplashWall$Load;

    invoke-direct {v3, p0, v2, p1, v1}, Lcom/wsw/cospa/utils/SplashWall$Load;-><init>(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/Runnable;Landroid/os/Handler;)V

    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method
