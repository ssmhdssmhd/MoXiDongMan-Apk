.class Lcom/wsw/cospa/utils/goto$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/utils/goto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# static fields
.field private static final new:B = -0x80t


# instance fields
.field private do:I

.field private for:[B

.field private if:I


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/wsw/cospa/utils/goto$if;->do:I

    .line 3
    iput v0, p0, Lcom/wsw/cospa/utils/goto$if;->if:I

    .line 4
    iput-object p1, p0, Lcom/wsw/cospa/utils/goto$if;->for:[B

    return-void
.end method

.method private if(B)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {}, Lcom/wsw/cospa/utils/goto;->do()[B

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 2
    invoke-static {}, Lcom/wsw/cospa/utils/goto;->do()[B

    move-result-object v1

    aget-byte v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public do()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lcom/wsw/cospa/utils/goto$if;->for:[B

    array-length v2, v1

    array-length v1, v1

    div-int/lit8 v1, v1, 0x8

    add-int/2addr v2, v1

    const/4 v1, 0x1

    add-int/2addr v2, v1

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/goto$if;->for()B

    move-result v2

    const/16 v3, -0x80

    if-eq v2, v3, :cond_3

    .line 3
    invoke-direct {p0, v2}, Lcom/wsw/cospa/utils/goto$if;->if(B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/goto$if;->for()B

    move-result v5

    if-ne v5, v3, :cond_0

    const/16 v4, -0x22

    int-to-byte v4, v4

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v4, 0x7

    shl-int/lit8 v2, v2, 0x2

    or-int/lit8 v2, v2, -0x3e

    int-to-byte v4, v2

    move v2, v5

    :goto_1
    and-int/lit8 v5, v2, 0x40

    if-lez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_2
    int-to-byte v5, v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 5
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 6
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 8
    :cond_3
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public for()B
    .locals 6

    .line 1
    iget v0, p0, Lcom/wsw/cospa/utils/goto$if;->do:I

    iget-object v1, p0, Lcom/wsw/cospa/utils/goto$if;->for:[B

    array-length v2, v1

    if-lt v0, v2, :cond_0

    const/16 v0, -0x80

    return v0

    .line 2
    :cond_0
    aget-byte v2, v1, v0

    const/16 v3, 0xfe

    .line 3
    iget v4, p0, Lcom/wsw/cospa/utils/goto$if;->if:I

    ushr-int/2addr v3, v4

    and-int/2addr v2, v3

    shl-int/2addr v2, v4

    ushr-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x7

    .line 4
    iput v4, p0, Lcom/wsw/cospa/utils/goto$if;->if:I

    const/16 v3, 0x8

    if-ge v4, v3, :cond_1

    int-to-byte v0, v2

    return v0

    :cond_1
    sub-int/2addr v4, v3

    .line 5
    iput v4, p0, Lcom/wsw/cospa/utils/goto$if;->if:I

    add-int/lit8 v0, v0, 0x1

    .line 6
    iput v0, p0, Lcom/wsw/cospa/utils/goto$if;->do:I

    .line 7
    array-length v5, v1

    if-lt v0, v5, :cond_2

    int-to-byte v0, v2

    return v0

    .line 8
    :cond_2
    aget-byte v0, v1, v0

    const v1, 0xff00

    ushr-int/2addr v1, v4

    and-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xff

    sub-int/2addr v3, v4

    ushr-int/2addr v0, v3

    or-int/2addr v0, v2

    int-to-byte v0, v0

    return v0
.end method
