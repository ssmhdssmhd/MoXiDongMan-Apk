.class final Lcom/wsw/cospa/utils/goto$do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/utils/goto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation


# instance fields
.field private final do:Ljava/io/ByteArrayOutputStream;

.field private for:B

.field private if:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/utils/goto$do;->do:Ljava/io/ByteArrayOutputStream;

    const/4 v0, 0x0

    .line 3
    iput-byte v0, p0, Lcom/wsw/cospa/utils/goto$do;->if:B

    .line 4
    iput-byte v0, p0, Lcom/wsw/cospa/utils/goto$do;->for:B

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/String;)[B
    .locals 4

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 3
    aget-byte v1, p1, v0

    const/16 v2, 0x7f

    if-le v1, v2, :cond_1

    .line 4
    aget-byte v1, p1, v0

    ushr-int/lit8 v1, v1, 0x8

    const/4 v3, 0x7

    and-int/2addr v1, v3

    if-eq v1, v3, :cond_0

    .line 5
    invoke-static {}, Lcom/wsw/cospa/utils/goto;->do()[B

    move-result-object v3

    aget-byte v1, v3, v1

    invoke-virtual {p0, v1}, Lcom/wsw/cospa/utils/goto$do;->if(I)V

    .line 6
    :cond_0
    aget-byte v1, p1, v0

    and-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/wsw/cospa/utils/goto$do;->if(I)V

    goto :goto_1

    .line 7
    :cond_1
    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/wsw/cospa/utils/goto$do;->if(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/wsw/cospa/utils/goto$do;->do:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public if(I)V
    .locals 3

    shl-int/lit8 p1, p1, 0x1

    .line 1
    iget-byte v0, p0, Lcom/wsw/cospa/utils/goto$do;->if:B

    iget-byte v1, p0, Lcom/wsw/cospa/utils/goto$do;->for:B

    ushr-int v2, p1, v1

    or-int/2addr v0, v2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/wsw/cospa/utils/goto$do;->if:B

    add-int/lit8 v1, v1, 0x7

    int-to-byte v1, v1

    .line 2
    iput-byte v1, p0, Lcom/wsw/cospa/utils/goto$do;->for:B

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 3
    iget-object v1, p0, Lcom/wsw/cospa/utils/goto$do;->do:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 4
    iget-byte v0, p0, Lcom/wsw/cospa/utils/goto$do;->for:B

    sub-int/2addr v0, v2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/wsw/cospa/utils/goto$do;->for:B

    rsub-int/lit8 v0, v0, 0x7

    shl-int/2addr p1, v0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 5
    iput-byte p1, p0, Lcom/wsw/cospa/utils/goto$do;->if:B

    :cond_0
    return-void
.end method
