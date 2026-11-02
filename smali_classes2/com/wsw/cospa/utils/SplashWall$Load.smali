.class Lcom/wsw/cospa/utils/SplashWall$Load;
.super Ljava/lang/Object;
.source "SplashWall.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final done:Ljava/lang/Runnable;

.field private final handler:Landroid/os/Handler;

.field private final view:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/Runnable;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wsw/cospa/utils/SplashWall$Load;->activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/wsw/cospa/utils/SplashWall$Load;->view:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/wsw/cospa/utils/SplashWall$Load;->done:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/wsw/cospa/utils/SplashWall$Load;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Lcom/wsw/cospa/utils/SplashWall;->dayIndex()I

    move-result v0

    iget-object v1, p0, Lcom/wsw/cospa/utils/SplashWall$Load;->activity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/wsw/cospa/utils/SplashWall;->cacheFile(Landroid/app/Activity;I)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_dl

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_dl

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_dl
    if-nez v2, :cond_show

    invoke-static {v1, v0}, Lcom/wsw/cospa/utils/SplashWall;->download(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_show
    if-eqz v2, :cond_finish

    iget-object v3, p0, Lcom/wsw/cospa/utils/SplashWall$Load;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/wsw/cospa/utils/SplashWall$Load;->done:Ljava/lang/Runnable;

    iget-object v5, p0, Lcom/wsw/cospa/utils/SplashWall$Load;->view:Landroid/widget/ImageView;

    new-instance v6, Lcom/wsw/cospa/utils/SplashWall$Show;

    invoke-direct {v6, v5, v2, v3, v4}, Lcom/wsw/cospa/utils/SplashWall$Show;-><init>(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/os/Handler;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_end

    :cond_finish
    iget-object v3, p0, Lcom/wsw/cospa/utils/SplashWall$Load;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/wsw/cospa/utils/SplashWall$Load;->done:Ljava/lang/Runnable;

    invoke-static {}, Lcom/wsw/cospa/utils/SplashWall;->remaining()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lcom/wsw/cospa/utils/SplashWall;->finishOnce(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    :goto_end
    return-void

    :catch_0
    move-exception v3

    goto :cond_dl
.end method
