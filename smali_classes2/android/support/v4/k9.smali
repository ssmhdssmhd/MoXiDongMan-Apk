.class public Landroid/support/v4/k9;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/k9$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/support/v4/k9$do;",
        ">;"
    }
.end annotation


# static fields
.field private static final else:Ljava/lang/String; = "BitmapWorkerTask"


# instance fields
.field private final case:Lcom/yalantis/ucrop/callback/BitmapLoadCallback;

.field private final do:Landroid/content/Context;

.field private for:Landroid/net/Uri;

.field private if:Landroid/net/Uri;

.field private final new:I

.field private final try:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;IILcom/yalantis/ucrop/callback/BitmapLoadCallback;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/v4/k9;->do:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Landroid/support/v4/k9;->if:Landroid/net/Uri;

    .line 4
    iput-object p3, p0, Landroid/support/v4/k9;->for:Landroid/net/Uri;

    .line 5
    iput p4, p0, Landroid/support/v4/k9;->new:I

    .line 6
    iput p5, p0, Landroid/support/v4/k9;->try:I

    .line 7
    iput-object p6, p0, Landroid/support/v4/k9;->case:Lcom/yalantis/ucrop/callback/BitmapLoadCallback;

    return-void
.end method

.method private case()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/k9;->if:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uri scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "http"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 5
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/k9;->do:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v4/k9;->if:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/support/v4/v9;->do(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 6
    iget-object v1, p0, Landroid/support/v4/k9;->for:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/v9;->if(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 8
    :cond_1
    invoke-direct {p0}, Landroid/support/v4/k9;->new()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/k9;->if:Landroid/net/Uri;

    goto :goto_2

    .line 11
    :cond_2
    :try_start_1
    iget-object v0, p0, Landroid/support/v4/k9;->if:Landroid/net/Uri;

    iget-object v1, p0, Landroid/support/v4/k9;->for:Landroid/net/Uri;

    invoke-direct {p0, v0, v1}, Landroid/support/v4/k9;->do(Landroid/net/Uri;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 12
    :goto_0
    throw v0

    .line 13
    :cond_3
    :goto_1
    :try_start_2
    iget-object v0, p0, Landroid/support/v4/k9;->if:Landroid/net/Uri;

    iget-object v1, p0, Landroid/support/v4/k9;->for:Landroid/net/Uri;

    invoke-direct {p0, v0, v1}, Landroid/support/v4/k9;->for(Landroid/net/Uri;Landroid/net/Uri;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    return-void

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    .line 14
    :goto_3
    throw v0
.end method

.method private do(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 3
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Output Uri is null - cannot copy image"

    .line 1
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/k9;->do:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_1

    const/16 p2, 0x400

    :try_start_2
    new-array p2, p2, [B

    .line 4
    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v1, p2, v2, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v1}, Landroid/support/v4/l9;->for(Ljava/io/Closeable;)V

    .line 7
    invoke-static {p1}, Landroid/support/v4/l9;->for(Ljava/io/Closeable;)V

    .line 8
    iget-object p1, p0, Landroid/support/v4/k9;->for:Landroid/net/Uri;

    iput-object p1, p0, Landroid/support/v4/k9;->if:Landroid/net/Uri;

    return-void

    :catchall_0
    move-exception p2

    move-object v0, v1

    goto :goto_1

    .line 9
    :cond_1
    :try_start_3
    new-instance p2, Ljava/lang/NullPointerException;

    const-string v0, "InputStream for given input Uri is null"

    invoke-direct {p2, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_1
    move-exception p2

    goto :goto_1

    :catchall_2
    move-exception p2

    move-object p1, v0

    .line 10
    :goto_1
    invoke-static {v0}, Landroid/support/v4/l9;->for(Ljava/io/Closeable;)V

    .line 11
    invoke-static {p1}, Landroid/support/v4/l9;->for(Ljava/io/Closeable;)V

    .line 12
    iget-object p1, p0, Landroid/support/v4/k9;->for:Landroid/net/Uri;

    iput-object p1, p0, Landroid/support/v4/k9;->if:Landroid/net/Uri;

    .line 13
    goto :goto_3

    :goto_2
    throw p2

    :goto_3
    goto :goto_2
.end method

.method private for(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 4
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Output Uri is null - cannot download image"

    .line 1
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x400

    new-array p1, p1, [B

    .line 3
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4
    iget-object v0, p0, Landroid/support/v4/k9;->do:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p2

    .line 5
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 6
    :goto_0
    invoke-virtual {v1, p1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    const/4 v3, 0x0

    .line 7
    invoke-virtual {v0, p1, v3, v2}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 9
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 10
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 11
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 12
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :goto_1
    iget-object p1, p0, Landroid/support/v4/k9;->for:Landroid/net/Uri;

    iput-object p1, p0, Landroid/support/v4/k9;->if:Landroid/net/Uri;

    return-void

    .line 14
    :goto_2
    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method private new()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/k9;->do:Landroid/content/Context;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/support/v4/k9;->do:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v4/k9;->if:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/yalantis/ucrop/util/do;->try(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/support/v4/k9;->if([Ljava/lang/Void;)Landroid/support/v4/k9$do;

    move-result-object p1

    return-object p1
.end method

.method public varargs if([Ljava/lang/Void;)Landroid/support/v4/k9$do;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object p1, p0, Landroid/support/v4/k9;->if:Landroid/net/Uri;

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Landroid/support/v4/k9$do;

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Input Uri cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Landroid/support/v4/k9$do;-><init>(Ljava/lang/Exception;)V

    return-object p1

    .line 3
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/k9;->case()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 4
    :try_start_1
    iget-object p1, p0, Landroid/support/v4/k9;->do:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v4/k9;->if:Landroid/net/Uri;

    const-string v1, "r"

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    const-string v0, "]"

    if-eqz p1, :cond_9

    .line 5
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 6
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    .line 7
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v4, 0x0

    .line 8
    invoke-static {v1, v4, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 9
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_8

    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v5, v6, :cond_1

    goto/16 :goto_1

    .line 10
    :cond_1
    iget v5, p0, Landroid/support/v4/k9;->new:I

    iget v6, p0, Landroid/support/v4/k9;->try:I

    invoke-static {v2, v5, v6}, Landroid/support/v4/l9;->do(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v5

    iput v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v5, 0x0

    .line 11
    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    move-object v6, v4

    :goto_0
    if-nez v5, :cond_2

    .line 12
    :try_start_2
    invoke-static {v1, v4, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v5, 0x1

    goto :goto_0

    .line 13
    :catch_0
    iget v7, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v7, v7, 0x2

    iput v7, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    :cond_2
    if-nez v6, :cond_3

    .line 14
    new-instance p1, Landroid/support/v4/k9$do;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bitmap could not be decoded from the Uri: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/support/v4/k9;->if:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v1}, Landroid/support/v4/k9$do;-><init>(Ljava/lang/Exception;)V

    return-object p1

    .line 15
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_4

    .line 16
    invoke-static {p1}, Landroid/support/v4/l9;->for(Ljava/io/Closeable;)V

    .line 17
    :cond_4
    iget-object p1, p0, Landroid/support/v4/k9;->do:Landroid/content/Context;

    iget-object v0, p0, Landroid/support/v4/k9;->if:Landroid/net/Uri;

    invoke-static {p1, v0}, Landroid/support/v4/l9;->else(Landroid/content/Context;Landroid/net/Uri;)I

    move-result p1

    .line 18
    invoke-static {p1}, Landroid/support/v4/l9;->try(I)I

    move-result v0

    .line 19
    invoke-static {p1}, Landroid/support/v4/l9;->case(I)I

    move-result v1

    .line 20
    new-instance v2, Landroid/support/v4/a90;

    invoke-direct {v2, p1, v0, v1}, Landroid/support/v4/a90;-><init>(III)V

    .line 21
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    if-eqz v0, :cond_5

    int-to-float v0, v0

    .line 22
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    :cond_5
    if-eq v1, v3, :cond_6

    int-to-float v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 24
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_7

    .line 25
    new-instance v0, Landroid/support/v4/k9$do;

    invoke-static {v6, p1}, Landroid/support/v4/l9;->goto(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v0, p1, v2}, Landroid/support/v4/k9$do;-><init>(Landroid/graphics/Bitmap;Landroid/support/v4/a90;)V

    return-object v0

    .line 26
    :cond_7
    new-instance p1, Landroid/support/v4/k9$do;

    invoke-direct {p1, v6, v2}, Landroid/support/v4/k9$do;-><init>(Landroid/graphics/Bitmap;Landroid/support/v4/a90;)V

    return-object p1

    .line 27
    :cond_8
    :goto_1
    new-instance p1, Landroid/support/v4/k9$do;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bounds for bitmap could not be retrieved from the Uri: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/support/v4/k9;->if:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v1}, Landroid/support/v4/k9$do;-><init>(Ljava/lang/Exception;)V

    return-object p1

    .line 28
    :cond_9
    new-instance p1, Landroid/support/v4/k9$do;

    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ParcelFileDescriptor was null for given Uri: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/support/v4/k9;->if:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v1}, Landroid/support/v4/k9$do;-><init>(Ljava/lang/Exception;)V

    return-object p1

    :catch_1
    move-exception p1

    .line 29
    new-instance v0, Landroid/support/v4/k9$do;

    invoke-direct {v0, p1}, Landroid/support/v4/k9$do;-><init>(Ljava/lang/Exception;)V

    return-object v0

    :catch_2
    move-exception p1

    goto :goto_2

    :catch_3
    move-exception p1

    .line 30
    :goto_2
    new-instance v0, Landroid/support/v4/k9$do;

    invoke-direct {v0, p1}, Landroid/support/v4/k9$do;-><init>(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Landroid/support/v4/k9$do;

    invoke-virtual {p0, p1}, Landroid/support/v4/k9;->try(Landroid/support/v4/k9$do;)V

    return-void
.end method

.method public try(Landroid/support/v4/k9$do;)V
    .locals 4
    .param p1    # Landroid/support/v4/k9$do;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p1, Landroid/support/v4/k9$do;->for:Ljava/lang/Exception;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Landroid/support/v4/k9;->case:Lcom/yalantis/ucrop/callback/BitmapLoadCallback;

    iget-object v1, p1, Landroid/support/v4/k9$do;->do:Landroid/graphics/Bitmap;

    iget-object p1, p1, Landroid/support/v4/k9$do;->if:Landroid/support/v4/a90;

    iget-object v2, p0, Landroid/support/v4/k9;->if:Landroid/net/Uri;

    iget-object v3, p0, Landroid/support/v4/k9;->for:Landroid/net/Uri;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :cond_0
    invoke-interface {v0, v1, p1, v2, v3}, Lcom/yalantis/ucrop/callback/BitmapLoadCallback;->onBitmapLoaded(Landroid/graphics/Bitmap;Landroid/support/v4/a90;Landroid/net/Uri;Landroid/net/Uri;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Landroid/support/v4/k9;->case:Lcom/yalantis/ucrop/callback/BitmapLoadCallback;

    invoke-interface {p1, v0}, Lcom/yalantis/ucrop/callback/BitmapLoadCallback;->onFailure(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
