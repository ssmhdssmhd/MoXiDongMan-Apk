.class public Landroid/support/v4/d9;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# static fields
.field private static final native:Ljava/lang/String; = "BitmapCropTask"


# instance fields
.field private final break:I

.field private case:F

.field private final catch:Landroid/net/Uri;

.field private final class:Ljava/lang/String;

.field private final const:Landroid/support/v4/a90;

.field private final do:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final else:I

.field private final final:Lcom/yalantis/ucrop/callback/BitmapCropCallback;

.field private final for:Landroid/graphics/RectF;

.field private final goto:I

.field private if:Landroid/graphics/Bitmap;

.field private import:I

.field private final new:Landroid/graphics/RectF;

.field private super:I

.field private final this:Landroid/graphics/Bitmap$CompressFormat;

.field private throw:I

.field private try:F

.field private while:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/support/v4/xl0;Landroid/support/v4/vs;Lcom/yalantis/ucrop/callback/BitmapCropCallback;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/support/v4/xl0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/support/v4/vs;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/yalantis/ucrop/callback/BitmapCropCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/d9;->do:Ljava/lang/ref/WeakReference;

    .line 3
    iput-object p2, p0, Landroid/support/v4/d9;->if:Landroid/graphics/Bitmap;

    .line 4
    invoke-virtual {p3}, Landroid/support/v4/xl0;->do()Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/d9;->for:Landroid/graphics/RectF;

    .line 5
    invoke-virtual {p3}, Landroid/support/v4/xl0;->for()Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/d9;->new:Landroid/graphics/RectF;

    .line 6
    invoke-virtual {p3}, Landroid/support/v4/xl0;->new()F

    move-result p1

    iput p1, p0, Landroid/support/v4/d9;->try:F

    .line 7
    invoke-virtual {p3}, Landroid/support/v4/xl0;->if()F

    move-result p1

    iput p1, p0, Landroid/support/v4/d9;->case:F

    .line 8
    invoke-virtual {p4}, Landroid/support/v4/vs;->case()I

    move-result p1

    iput p1, p0, Landroid/support/v4/d9;->else:I

    .line 9
    invoke-virtual {p4}, Landroid/support/v4/vs;->else()I

    move-result p1

    iput p1, p0, Landroid/support/v4/d9;->goto:I

    .line 10
    invoke-virtual {p4}, Landroid/support/v4/vs;->do()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/d9;->this:Landroid/graphics/Bitmap$CompressFormat;

    .line 11
    invoke-virtual {p4}, Landroid/support/v4/vs;->if()I

    move-result p1

    iput p1, p0, Landroid/support/v4/d9;->break:I

    .line 12
    invoke-virtual {p4}, Landroid/support/v4/vs;->new()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/d9;->catch:Landroid/net/Uri;

    .line 13
    invoke-virtual {p4}, Landroid/support/v4/vs;->try()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/d9;->class:Ljava/lang/String;

    .line 14
    invoke-virtual {p4}, Landroid/support/v4/vs;->for()Landroid/support/v4/a90;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/d9;->const:Landroid/support/v4/a90;

    .line 15
    iput-object p5, p0, Landroid/support/v4/d9;->final:Lcom/yalantis/ucrop/callback/BitmapCropCallback;

    return-void
.end method

.method private do()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Landroid/support/v4/d9;->else:I

    const/4 v1, 0x0

    if-lez v0, :cond_2

    iget v0, p0, Landroid/support/v4/d9;->goto:I

    if-lez v0, :cond_2

    .line 2
    iget-object v0, p0, Landroid/support/v4/d9;->for:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v2, p0, Landroid/support/v4/d9;->try:F

    div-float/2addr v0, v2

    .line 3
    iget-object v2, p0, Landroid/support/v4/d9;->for:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, p0, Landroid/support/v4/d9;->try:F

    div-float/2addr v2, v3

    .line 4
    iget v3, p0, Landroid/support/v4/d9;->else:I

    int-to-float v4, v3

    cmpl-float v4, v0, v4

    if-gtz v4, :cond_0

    iget v4, p0, Landroid/support/v4/d9;->goto:I

    int-to-float v4, v4

    cmpl-float v4, v2, v4

    if-lez v4, :cond_2

    :cond_0
    int-to-float v3, v3

    div-float/2addr v3, v0

    .line 5
    iget v0, p0, Landroid/support/v4/d9;->goto:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 6
    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 7
    iget-object v2, p0, Landroid/support/v4/d9;->if:Landroid/graphics/Bitmap;

    .line 8
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Landroid/support/v4/d9;->if:Landroid/graphics/Bitmap;

    .line 9
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 10
    invoke-static {v2, v3, v4, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 11
    iget-object v3, p0, Landroid/support/v4/d9;->if:Landroid/graphics/Bitmap;

    if-eq v3, v2, :cond_1

    .line 12
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 13
    :cond_1
    iput-object v2, p0, Landroid/support/v4/d9;->if:Landroid/graphics/Bitmap;

    .line 14
    iget v2, p0, Landroid/support/v4/d9;->try:F

    div-float/2addr v2, v0

    iput v2, p0, Landroid/support/v4/d9;->try:F

    .line 15
    :cond_2
    iget v0, p0, Landroid/support/v4/d9;->case:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_4

    .line 16
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 17
    iget v0, p0, Landroid/support/v4/d9;->case:F

    iget-object v2, p0, Landroid/support/v4/d9;->if:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/v4/d9;->if:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v7, v0, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 18
    iget-object v2, p0, Landroid/support/v4/d9;->if:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v0, p0, Landroid/support/v4/d9;->if:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 19
    iget-object v2, p0, Landroid/support/v4/d9;->if:Landroid/graphics/Bitmap;

    if-eq v2, v0, :cond_3

    .line 20
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 21
    :cond_3
    iput-object v0, p0, Landroid/support/v4/d9;->if:Landroid/graphics/Bitmap;

    .line 22
    :cond_4
    iget-object v0, p0, Landroid/support/v4/d9;->for:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Landroid/support/v4/d9;->new:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    iget v2, p0, Landroid/support/v4/d9;->try:F

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/support/v4/d9;->while:I

    .line 23
    iget-object v0, p0, Landroid/support/v4/d9;->for:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Landroid/support/v4/d9;->new:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v2

    iget v2, p0, Landroid/support/v4/d9;->try:F

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/support/v4/d9;->import:I

    .line 24
    iget-object v0, p0, Landroid/support/v4/d9;->for:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v2, p0, Landroid/support/v4/d9;->try:F

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/support/v4/d9;->super:I

    .line 25
    iget-object v0, p0, Landroid/support/v4/d9;->for:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v2, p0, Landroid/support/v4/d9;->try:F

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/support/v4/d9;->throw:I

    .line 26
    iget v2, p0, Landroid/support/v4/d9;->super:I

    invoke-direct {p0, v2, v0}, Landroid/support/v4/d9;->try(II)Z

    move-result v0

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Should crop: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    const/16 v3, 0x1d

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 28
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_6

    const/16 v3, 0x18

    if-lt v1, v3, :cond_5

    .line 29
    iget-object v0, p0, Landroid/support/v4/d9;->do:Ljava/lang/ref/WeakReference;

    .line 30
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/d9;->catch:Landroid/net/Uri;

    const-string v3, "r"

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 31
    new-instance v1, Landroid/media/ExifInterface;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/media/ExifInterface;-><init>(Ljava/io/FileDescriptor;)V

    move-object v0, v1

    .line 32
    :cond_5
    iget-object v1, p0, Landroid/support/v4/d9;->if:Landroid/graphics/Bitmap;

    iget v3, p0, Landroid/support/v4/d9;->while:I

    iget v4, p0, Landroid/support/v4/d9;->import:I

    iget v5, p0, Landroid/support/v4/d9;->super:I

    iget v6, p0, Landroid/support/v4/d9;->throw:I

    invoke-static {v1, v3, v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/support/v4/d9;->new(Landroid/graphics/Bitmap;)V

    .line 33
    iget-object v1, p0, Landroid/support/v4/d9;->this:Landroid/graphics/Bitmap$CompressFormat;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1, v3}, Landroid/graphics/Bitmap$CompressFormat;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 34
    iget v1, p0, Landroid/support/v4/d9;->super:I

    iget v3, p0, Landroid/support/v4/d9;->throw:I

    iget-object v4, p0, Landroid/support/v4/d9;->class:Ljava/lang/String;

    invoke-static {v0, v1, v3, v4}, Lcom/yalantis/ucrop/util/ImageHeaderParser;->if(Landroid/media/ExifInterface;IILjava/lang/String;)V

    goto :goto_0

    .line 35
    :cond_6
    new-instance v0, Landroid/media/ExifInterface;

    iget-object v1, p0, Landroid/support/v4/d9;->catch:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 36
    iget-object v1, p0, Landroid/support/v4/d9;->if:Landroid/graphics/Bitmap;

    iget v3, p0, Landroid/support/v4/d9;->while:I

    iget v4, p0, Landroid/support/v4/d9;->import:I

    iget v5, p0, Landroid/support/v4/d9;->super:I

    iget v6, p0, Landroid/support/v4/d9;->throw:I

    invoke-static {v1, v3, v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/support/v4/d9;->new(Landroid/graphics/Bitmap;)V

    .line 37
    iget-object v1, p0, Landroid/support/v4/d9;->this:Landroid/graphics/Bitmap$CompressFormat;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1, v3}, Landroid/graphics/Bitmap$CompressFormat;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 38
    iget v1, p0, Landroid/support/v4/d9;->super:I

    iget v3, p0, Landroid/support/v4/d9;->throw:I

    iget-object v4, p0, Landroid/support/v4/d9;->class:Ljava/lang/String;

    invoke-static {v0, v1, v3, v4}, Lcom/yalantis/ucrop/util/ImageHeaderParser;->if(Landroid/media/ExifInterface;IILjava/lang/String;)V

    :cond_7
    :goto_0
    return v2

    .line 39
    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_9

    return v2

    .line 40
    :cond_9
    iget-object v0, p0, Landroid/support/v4/d9;->catch:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v4/d9;->class:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/yalantis/ucrop/util/do;->do(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private new(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/d9;->do:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Landroid/support/v4/d9;->class:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    .line 3
    iget-object v0, p0, Landroid/support/v4/d9;->this:Landroid/graphics/Bitmap$CompressFormat;

    iget v2, p0, Landroid/support/v4/d9;->break:I

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-static {v1}, Landroid/support/v4/l9;->for(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v1}, Landroid/support/v4/l9;->for(Ljava/io/Closeable;)V

    .line 6
    throw p1
.end method

.method private try(II)Z
    .locals 2

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 p2, 0x1

    add-int/2addr p1, p2

    .line 2
    iget v0, p0, Landroid/support/v4/d9;->else:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/support/v4/d9;->goto:I

    if-gtz v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/support/v4/d9;->for:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/support/v4/d9;->new:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    .line 3
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float p1, p1

    cmpl-float v0, v0, p1

    if-gtz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/d9;->for:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/support/v4/d9;->new:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    .line 4
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, p1

    if-gtz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/d9;->for:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Landroid/support/v4/d9;->new:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    .line 5
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, p1

    if-gtz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/d9;->for:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Landroid/support/v4/d9;->new:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    .line 6
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float p1, v0, p1

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :cond_2
    :goto_0
    return p2
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/support/v4/d9;->if([Ljava/lang/Void;)Ljava/lang/Throwable;

    move-result-object p1

    return-object p1
.end method

.method public for(Ljava/lang/Throwable;)V
    .locals 7
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroid/support/v4/d9;->final:Lcom/yalantis/ucrop/callback/BitmapCropCallback;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Landroid/support/v4/d9;->class:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 3
    iget-object v1, p0, Landroid/support/v4/d9;->final:Lcom/yalantis/ucrop/callback/BitmapCropCallback;

    iget v3, p0, Landroid/support/v4/d9;->while:I

    iget v4, p0, Landroid/support/v4/d9;->import:I

    iget v5, p0, Landroid/support/v4/d9;->super:I

    iget v6, p0, Landroid/support/v4/d9;->throw:I

    invoke-interface/range {v1 .. v6}, Lcom/yalantis/ucrop/callback/BitmapCropCallback;->onBitmapCropped(Landroid/net/Uri;IIII)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0, p1}, Lcom/yalantis/ucrop/callback/BitmapCropCallback;->onCropFailure(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public varargs if([Ljava/lang/Void;)Ljava/lang/Throwable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object p1, p0, Landroid/support/v4/d9;->if:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "ViewBitmap is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "ViewBitmap is recycled"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 5
    :cond_1
    iget-object p1, p0, Landroid/support/v4/d9;->new:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "CurrentImageRect is empty"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 7
    :cond_2
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/d9;->do()Z

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Landroid/support/v4/d9;->if:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Landroid/support/v4/d9;->for(Ljava/lang/Throwable;)V

    return-void
.end method
