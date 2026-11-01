.class final enum Lcom/luck/picture/lib/compress/do;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/luck/picture/lib/compress/do;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum SINGLE:Lcom/luck/picture/lib/compress/do;

.field private static final do:Ljava/lang/String; = "Luban"

.field private static final synthetic for:[Lcom/luck/picture/lib/compress/do;

.field private static final if:Ljava/lang/String; = ".jpg"


# instance fields
.field private final JPEG_SIGNATURE:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/luck/picture/lib/compress/do;

    const-string v1, "SINGLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/luck/picture/lib/compress/do;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/luck/picture/lib/compress/do;->SINGLE:Lcom/luck/picture/lib/compress/do;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/luck/picture/lib/compress/do;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Lcom/luck/picture/lib/compress/do;->for:[Lcom/luck/picture/lib/compress/do;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x3

    new-array p1, p1, [B

    .line 2
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/luck/picture/lib/compress/do;->JPEG_SIGNATURE:[B

    return-void

    :array_0
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data
.end method

.method private do([B)I
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v1, 0x3

    .line 1
    array-length v3, p1

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/16 v6, 0x8

    const/4 v7, 0x2

    if-ge v2, v3, :cond_9

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    const/16 v3, 0xff

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_8

    .line 2
    aget-byte v1, p1, v2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0xd8

    if-eq v1, v3, :cond_7

    if-ne v1, v5, :cond_2

    goto :goto_2

    :cond_2
    const/16 v3, 0xd9

    if-eq v1, v3, :cond_8

    const/16 v3, 0xda

    if-ne v1, v3, :cond_3

    goto :goto_3

    .line 3
    :cond_3
    invoke-direct {p0, p1, v2, v7, v0}, Lcom/luck/picture/lib/compress/do;->for([BIIZ)I

    move-result v3

    if-lt v3, v7, :cond_6

    add-int v8, v2, v3

    .line 4
    array-length v9, p1

    if-le v8, v9, :cond_4

    goto :goto_1

    :cond_4
    const/16 v9, 0xe1

    if-ne v1, v9, :cond_5

    if-lt v3, v6, :cond_5

    add-int/lit8 v1, v2, 0x2

    .line 5
    invoke-direct {p0, p1, v1, v4, v0}, Lcom/luck/picture/lib/compress/do;->for([BIIZ)I

    move-result v1

    const v9, 0x45786966

    if-ne v1, v9, :cond_5

    add-int/lit8 v1, v2, 0x6

    .line 6
    invoke-direct {p0, p1, v1, v7, v0}, Lcom/luck/picture/lib/compress/do;->for([BIIZ)I

    move-result v1

    if-nez v1, :cond_5

    add-int/lit8 v1, v2, 0x8

    add-int/lit8 v3, v3, -0x8

    goto :goto_4

    :cond_5
    move v1, v8

    goto :goto_0

    :cond_6
    :goto_1
    return v0

    :cond_7
    :goto_2
    move v1, v2

    goto :goto_0

    :cond_8
    :goto_3
    move v1, v2

    :cond_9
    const/4 v3, 0x0

    :goto_4
    if-le v3, v6, :cond_11

    .line 7
    invoke-direct {p0, p1, v1, v4, v0}, Lcom/luck/picture/lib/compress/do;->for([BIIZ)I

    move-result v2

    const v8, 0x49492a00    # 823968.0f

    if-eq v2, v8, :cond_a

    const v9, 0x4d4d002a    # 2.1495875E8f

    if-eq v2, v9, :cond_a

    return v0

    :cond_a
    if-ne v2, v8, :cond_b

    goto :goto_5

    :cond_b
    const/4 v5, 0x0

    :goto_5
    add-int/lit8 v2, v1, 0x4

    .line 8
    invoke-direct {p0, p1, v2, v4, v5}, Lcom/luck/picture/lib/compress/do;->for([BIIZ)I

    move-result v2

    add-int/2addr v2, v7

    const/16 v4, 0xa

    if-lt v2, v4, :cond_11

    if-le v2, v3, :cond_c

    goto :goto_7

    :cond_c
    add-int/2addr v1, v2

    sub-int/2addr v3, v2

    add-int/lit8 v2, v1, -0x2

    .line 9
    invoke-direct {p0, p1, v2, v7, v5}, Lcom/luck/picture/lib/compress/do;->for([BIIZ)I

    move-result v2

    :goto_6
    add-int/lit8 v4, v2, -0x1

    if-lez v2, :cond_11

    const/16 v2, 0xc

    if-lt v3, v2, :cond_11

    .line 10
    invoke-direct {p0, p1, v1, v7, v5}, Lcom/luck/picture/lib/compress/do;->for([BIIZ)I

    move-result v2

    const/16 v8, 0x112

    if-ne v2, v8, :cond_10

    add-int/2addr v1, v6

    .line 11
    invoke-direct {p0, p1, v1, v7, v5}, Lcom/luck/picture/lib/compress/do;->for([BIIZ)I

    move-result p1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_f

    const/4 v1, 0x6

    if-eq p1, v1, :cond_e

    if-eq p1, v6, :cond_d

    return v0

    :cond_d
    const/16 p1, 0x10e

    return p1

    :cond_e
    const/16 p1, 0x5a

    return p1

    :cond_f
    const/16 p1, 0xb4

    return p1

    :cond_10
    add-int/lit8 v1, v1, 0xc

    add-int/lit8 v3, v3, -0xc

    move v2, v4

    goto :goto_6

    :cond_11
    :goto_7
    return v0
.end method

.method private for([BIIZ)I
    .locals 2

    if-eqz p4, :cond_0

    add-int/lit8 p4, p3, -0x1

    add-int/2addr p2, p4

    const/4 p4, -0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x1

    :goto_0
    const/4 v0, 0x0

    :goto_1
    add-int/lit8 v1, p3, -0x1

    if-lez p3, :cond_1

    shl-int/lit8 p3, v0, 0x8

    .line 1
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, p3

    add-int/2addr p2, p4

    move p3, v1

    goto :goto_1

    :cond_1
    return v0
.end method

.method private if([B)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    array-length v1, p1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-array v1, v2, [B

    .line 2
    aget-byte v2, p1, v0

    aput-byte v2, v1, v0

    const/4 v0, 0x1

    aget-byte v2, p1, v0

    aput-byte v2, v1, v0

    const/4 v0, 0x2

    aget-byte p1, p1, v0

    aput-byte p1, v1, v0

    .line 3
    iget-object p1, p0, Lcom/luck/picture/lib/compress/do;->JPEG_SIGNATURE:[B

    invoke-static {p1, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method private new(Ljava/io/InputStream;)[B
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [B

    return-object p1

    .line 1
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x1000

    new-array v3, v2, [B

    .line 2
    :goto_0
    :try_start_0
    invoke-virtual {p1, v3, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 3
    invoke-virtual {v1, v3, v0, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5
    :catch_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    :try_start_2
    new-array p1, v0, [B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    return-object p1

    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 7
    :catch_3
    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/luck/picture/lib/compress/do;
    .locals 1

    .line 1
    const-class v0, Lcom/luck/picture/lib/compress/do;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/luck/picture/lib/compress/do;

    return-object p0
.end method

.method public static values()[Lcom/luck/picture/lib/compress/do;
    .locals 1

    .line 1
    sget-object v0, Lcom/luck/picture/lib/compress/do;->for:[Lcom/luck/picture/lib/compress/do;

    invoke-virtual {v0}, [Lcom/luck/picture/lib/compress/do;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/luck/picture/lib/compress/do;

    return-object v0
.end method


# virtual methods
.method public extSuffix(Lcom/luck/picture/lib/compress/InputStreamProvider;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3
    invoke-interface {p1}, Lcom/luck/picture/lib/compress/InputStreamProvider;->open()Ljava/io/InputStream;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 4
    iget-object p1, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const-string v0, "image/"

    const-string v1, "."

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, ".jpg"

    return-object p1
.end method

.method public getOrientation(Ljava/io/InputStream;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/compress/do;->new(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/luck/picture/lib/compress/do;->do([B)I

    move-result p1

    return p1
.end method

.method public isJPG(Ljava/io/InputStream;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/compress/do;->new(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/luck/picture/lib/compress/do;->if([B)Z

    move-result p1

    return p1
.end method

.method public needCompress(ILjava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    if-lez p1, :cond_1

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    shl-int/lit8 p1, p1, 0xa

    int-to-long p1, p1

    cmp-long v3, v1, p1

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method
