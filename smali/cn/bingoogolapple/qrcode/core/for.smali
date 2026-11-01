.class Lcn/bingoogolapple/qrcode/core/for;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/support/v4/zr1;",
        ">;"
    }
.end annotation


# static fields
.field private static else:J


# instance fields
.field private case:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcn/bingoogolapple/qrcode/core/QRCodeView;",
            ">;"
        }
    .end annotation
.end field

.field private do:Landroid/hardware/Camera;

.field private for:Z

.field private if:[B

.field private new:Ljava/lang/String;

.field private try:Landroid/graphics/Bitmap;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Lcn/bingoogolapple/qrcode/core/QRCodeView;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 10
    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/for;->try:Landroid/graphics/Bitmap;

    .line 11
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/for;->case:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/Camera;[BLcn/bingoogolapple/qrcode/core/QRCodeView;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/for;->do:Landroid/hardware/Camera;

    .line 3
    iput-object p2, p0, Lcn/bingoogolapple/qrcode/core/for;->if:[B

    .line 4
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/for;->case:Ljava/lang/ref/WeakReference;

    .line 5
    iput-boolean p4, p0, Lcn/bingoogolapple/qrcode/core/for;->for:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcn/bingoogolapple/qrcode/core/QRCodeView;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 7
    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/for;->new:Ljava/lang/String;

    .line 8
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/for;->case:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private try(Lcn/bingoogolapple/qrcode/core/QRCodeView;)Landroid/support/v4/zr1;
    .locals 12

    .line 1
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/for;->if:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2
    :try_start_0
    iget-object v4, p0, Lcn/bingoogolapple/qrcode/core/for;->do:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    .line 3
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v4

    .line 4
    iget v5, v4, Landroid/hardware/Camera$Size;->width:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 5
    :try_start_1
    iget v4, v4, Landroid/hardware/Camera$Size;->height:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 6
    :try_start_2
    iget-boolean v6, p0, Lcn/bingoogolapple/qrcode/core/for;->for:Z

    if-eqz v6, :cond_3

    .line 7
    iget-object v6, p0, Lcn/bingoogolapple/qrcode/core/for;->if:[B

    array-length v6, v6

    new-array v0, v6, [B

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_2

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_1

    mul-int v8, v7, v4

    add-int/2addr v8, v4

    sub-int/2addr v8, v6

    sub-int/2addr v8, v2

    .line 8
    iget-object v9, p0, Lcn/bingoogolapple/qrcode/core/for;->if:[B

    mul-int v10, v6, v5

    add-int/2addr v10, v7

    aget-byte v9, v9, v10

    aput-byte v9, v0, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    move v11, v5

    move v5, v4

    move v4, v11

    .line 9
    :cond_3
    invoke-virtual {p1, v0, v5, v4, v3}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->return([BIIZ)Landroid/support/v4/zr1;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catch_0
    move-exception v3

    goto :goto_2

    :catch_1
    move-exception v4

    move-object v3, v4

    const/4 v4, 0x0

    goto :goto_2

    :catch_2
    move-exception v4

    move-object v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 10
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v5, :cond_4

    if-eqz v4, :cond_4

    :try_start_3
    const-string v3, "\u8bc6\u522b\u5931\u8d25\u91cd\u8bd5"

    .line 11
    invoke-static {v3}, Landroid/support/v4/p6;->try(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1, v0, v5, v4, v2}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->return([BIIZ)Landroid/support/v4/zr1;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    return-object p1

    :catch_3
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    return-object v1
.end method


# virtual methods
.method public do()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/bingoogolapple/qrcode/core/for;->if([Ljava/lang/Void;)Landroid/support/v4/zr1;

    move-result-object p1

    return-object p1
.end method

.method public for(Landroid/support/v4/zr1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/for;->case:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/bingoogolapple/qrcode/core/QRCodeView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/for;->new:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/for;->try:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {v0, p1}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->while(Landroid/support/v4/zr1;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcn/bingoogolapple/qrcode/core/for;->try:Landroid/graphics/Bitmap;

    .line 5
    invoke-virtual {v0, p1}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->throw(Landroid/support/v4/zr1;)V

    :goto_1
    return-void
.end method

.method public varargs if([Ljava/lang/Void;)Landroid/support/v4/zr1;
    .locals 5

    .line 1
    iget-object p1, p0, Lcn/bingoogolapple/qrcode/core/for;->case:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/bingoogolapple/qrcode/core/QRCodeView;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/for;->new:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 3
    invoke-static {v1}, Landroid/support/v4/p6;->this(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->public(Landroid/graphics/Bitmap;)Landroid/support/v4/zr1;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/for;->try:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {p1, v1}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->public(Landroid/graphics/Bitmap;)Landroid/support/v4/zr1;

    move-result-object p1

    .line 6
    iput-object v0, p0, Lcn/bingoogolapple/qrcode/core/for;->try:Landroid/graphics/Bitmap;

    return-object p1

    .line 7
    :cond_2
    invoke-static {}, Landroid/support/v4/p6;->class()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e24\u6b21\u4efb\u52a1\u6267\u884c\u7684\u65f6\u95f4\u95f4\u9694\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcn/bingoogolapple/qrcode/core/for;->else:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/p6;->try(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcn/bingoogolapple/qrcode/core/for;->else:J

    .line 10
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 11
    invoke-direct {p0, p1}, Lcn/bingoogolapple/qrcode/core/for;->try(Lcn/bingoogolapple/qrcode/core/QRCodeView;)Landroid/support/v4/zr1;

    move-result-object p1

    .line 12
    invoke-static {}, Landroid/support/v4/p6;->class()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    if-eqz p1, :cond_4

    .line 14
    iget-object v0, p1, Landroid/support/v4/zr1;->do:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bc6\u522b\u6210\u529f\u65f6\u95f4\u4e3a\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/p6;->try(Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bc6\u522b\u5931\u8d25\u65f6\u95f4\u4e3a\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/p6;->goto(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-object p1
.end method

.method public new()Lcn/bingoogolapple/qrcode/core/for;
    .locals 2

    .line 1
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p0, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object p0
.end method

.method public onCancelled()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 2
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/for;->case:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/bingoogolapple/qrcode/core/for;->try:Landroid/graphics/Bitmap;

    .line 4
    iput-object v0, p0, Lcn/bingoogolapple/qrcode/core/for;->if:[B

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/zr1;

    invoke-virtual {p0, p1}, Lcn/bingoogolapple/qrcode/core/for;->for(Landroid/support/v4/zr1;)V

    return-void
.end method
