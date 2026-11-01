.class public Lorg/bouncycastle/crypto/tls/l0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final case:[B

.field public static final do:[B

.field public static final else:[B

.field public static final for:[I

.field public static final goto:[[B

.field public static final if:[S

.field public static final new:[J

.field public static final try:Ljava/lang/Integer;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [B

    sput-object v1, Lorg/bouncycastle/crypto/tls/l0;->do:[B

    new-array v1, v0, [S

    sput-object v1, Lorg/bouncycastle/crypto/tls/l0;->if:[S

    new-array v1, v0, [I

    sput-object v1, Lorg/bouncycastle/crypto/tls/l0;->for:[I

    new-array v0, v0, [J

    sput-object v0, Lorg/bouncycastle/crypto/tls/l0;->new:[J

    const/16 v0, 0xd

    invoke-static {v0}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/tls/l0;->try:Ljava/lang/Integer;

    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lorg/bouncycastle/crypto/tls/l0;->case:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/crypto/tls/l0;->else:[B

    invoke-static {}, Lorg/bouncycastle/crypto/tls/l0;->strictfp()[[B

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/tls/l0;->goto:[[B

    return-void

    nop

    :array_0
    .array-data 1
        0x43t
        0x4ct
        0x4et
        0x54t
    .end array-data

    :array_1
    .array-data 1
        0x53t
        0x52t
        0x56t
        0x52t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(J)Z
    .locals 3

    const-wide/32 v0, 0xffff

    and-long/2addr v0, p0

    cmp-long v2, v0, p0

    if-nez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static A0(J[BI)V
    .locals 3

    const/16 v0, 0x18

    ushr-long v0, p0, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x10

    ushr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    const/16 v1, 0x8

    ushr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p2, v0

    add-int/lit8 p3, p3, 0x3

    long-to-int p1, p0

    int-to-byte p0, p1

    aput-byte p0, p2, p3

    return-void
.end method

.method public static B(I)Z
    .locals 1

    const v0, 0xffffff

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static B0(JLjava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x28

    ushr-long v0, p0, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x18

    ushr-long v0, p0, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x10

    ushr-long v0, p0, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x8

    ushr-long v0, p0, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    long-to-int p1, p0

    int-to-byte p0, p1

    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public static C(J)Z
    .locals 3

    const-wide/32 v0, 0xffffff

    and-long/2addr v0, p0

    cmp-long v2, v0, p0

    if-nez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static C0(J[BI)V
    .locals 3

    const/16 v0, 0x28

    ushr-long v0, p0, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x20

    ushr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    const/16 v1, 0x18

    ushr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x3

    const/16 v1, 0x10

    ushr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x4

    const/16 v1, 0x8

    ushr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p2, v0

    add-int/lit8 p3, p3, 0x5

    long-to-int p1, p0

    int-to-byte p0, p1

    aput-byte p0, p2, p3

    return-void
.end method

.method public static D(J)Z
    .locals 3

    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    cmp-long v2, v0, p0

    if-nez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static D0(JLjava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x38

    ushr-long v0, p0, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x30

    ushr-long v0, p0, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x28

    ushr-long v0, p0, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x18

    ushr-long v0, p0, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x10

    ushr-long v0, p0, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x8

    ushr-long v0, p0, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    long-to-int p1, p0

    int-to-byte p0, p1

    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public static E(J)Z
    .locals 3

    const-wide v0, 0xffffffffffffL

    and-long/2addr v0, p0

    cmp-long v2, v0, p0

    if-nez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static E0(J[BI)V
    .locals 3

    const/16 v0, 0x38

    ushr-long v0, p0, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x30

    ushr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    const/16 v1, 0x28

    ushr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x3

    const/16 v1, 0x20

    ushr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x4

    const/16 v1, 0x18

    ushr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x5

    const/16 v1, 0x10

    ushr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x6

    const/16 v1, 0x8

    ushr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p2, v0

    add-int/lit8 p3, p3, 0x7

    long-to-int p1, p0

    int-to-byte p0, p1

    aput-byte p0, p2, p3

    return-void
.end method

.method public static F(J)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static F0(ILjava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public static G(I)Z
    .locals 1

    and-int/lit16 v0, p0, 0xff

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static G0(I[BI)V
    .locals 0

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    return-void
.end method

.method public static H(J)Z
    .locals 3

    const-wide/16 v0, 0xff

    and-long/2addr v0, p0

    cmp-long v2, v0, p0

    if-nez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static H0(SLjava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public static I(S)Z
    .locals 1

    and-int/lit16 v0, p0, 0xff

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static I0(S[BI)V
    .locals 0

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    return-void
.end method

.method public static J(ZLjava/io/InputStream;)Ljava/util/Vector;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/l0;->T(Ljava/io/InputStream;)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_3

    div-int/2addr v0, v1

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1, v0}, Ljava/util/Vector;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/i;->new(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/i;

    move-result-object v3

    if-nez p0, :cond_1

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/tls/i;->for()S

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Landroid/support/v4/n72;

    const/16 p1, 0x2f

    invoke-direct {p0, p1}, Landroid/support/v4/n72;-><init>(S)V

    throw p0

    :cond_1
    :goto_1
    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    new-instance p0, Landroid/support/v4/n72;

    const/16 p1, 0x32

    invoke-direct {p0, p1}, Landroid/support/v4/n72;-><init>(S)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static J0([SLjava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-short v1, p0, v0

    invoke-static {v1, p1}, Lorg/bouncycastle/crypto/tls/l0;->H0(SLjava/io/OutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static K([B)Lorg/bouncycastle/asn1/final;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/asn1/else;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/else;-><init>([B)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/else;->break()Lorg/bouncycastle/asn1/final;

    move-result-object p0

    const/16 v1, 0x32

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/else;->break()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Landroid/support/v4/n72;

    invoke-direct {p0, v1}, Landroid/support/v4/n72;-><init>(S)V

    throw p0

    :cond_1
    new-instance p0, Landroid/support/v4/n72;

    invoke-direct {p0, v1}, Landroid/support/v4/n72;-><init>(S)V

    throw p0
.end method

.method public static K0([S[BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-short v1, p0, v0

    invoke-static {v1, p1, p2}, Lorg/bouncycastle/crypto/tls/l0;->I0(S[BI)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static L(ILjava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ge p0, v0, :cond_0

    sget-object p0, Lorg/bouncycastle/crypto/tls/l0;->do:[B

    return-object p0

    :cond_0
    new-array v0, p0, [B

    invoke-static {p1, v0}, Landroid/support/v4/a22;->case(Ljava/io/InputStream;[B)I

    move-result p1

    if-nez p1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    if-ne p1, p0, :cond_2

    return-object v0

    :cond_2
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public static L0([SLjava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/l0;->while(I)V

    array-length v0, p0

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/l0;->F0(ILjava/io/OutputStream;)V

    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/tls/l0;->J0([SLjava/io/OutputStream;)V

    return-void
.end method

.method public static M([B)Lorg/bouncycastle/asn1/final;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/l0;->K([B)Lorg/bouncycastle/asn1/final;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/break;->do(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, p0}, Landroid/support/v4/q3;->case([B[B)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    new-instance p0, Landroid/support/v4/n72;

    const/16 v0, 0x32

    invoke-direct {p0, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p0
.end method

.method public static M0([S[BI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/l0;->while(I)V

    array-length v0, p0

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/crypto/tls/l0;->G0(I[BI)V

    add-int/lit8 p2, p2, 0x1

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/crypto/tls/l0;->K0([S[BI)V

    return-void
.end method

.method public static N([BLjava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p0

    if-lez v0, :cond_1

    invoke-static {p1, p0}, Landroid/support/v4/a22;->case(Ljava/io/InputStream;[B)I

    move-result p0

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static N0(Lorg/bouncycastle/crypto/tls/a;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a;->try()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a;->case()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public static O(ILjava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ge p0, v0, :cond_0

    sget-object p0, Lorg/bouncycastle/crypto/tls/l0;->do:[B

    return-object p0

    :cond_0
    new-array v0, p0, [B

    invoke-static {p1, v0}, Landroid/support/v4/a22;->case(Ljava/io/InputStream;[B)I

    move-result p1

    if-ne p0, p1, :cond_1

    return-object v0

    :cond_1
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public static O0(Lorg/bouncycastle/crypto/tls/a;[BI)V
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a;->try()I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a;->case()I

    move-result p0

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    return-void
.end method

.method public static P(Ljava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/l0;->T(Ljava/io/InputStream;)I

    move-result v0

    invoke-static {v0, p0}, Lorg/bouncycastle/crypto/tls/l0;->O(ILjava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public static Q(Ljava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/l0;->W(Ljava/io/InputStream;)I

    move-result v0

    invoke-static {v0, p0}, Lorg/bouncycastle/crypto/tls/l0;->O(ILjava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public static R(Ljava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/l0;->c0(Ljava/io/InputStream;)S

    move-result v0

    invoke-static {v0, p0}, Lorg/bouncycastle/crypto/tls/l0;->O(ILjava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public static S([B)Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 p0, 0x0

    invoke-static {p0, v0}, Lorg/bouncycastle/crypto/tls/l0;->J(ZLjava/io/InputStream;)Ljava/util/Vector;

    move-result-object p0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/a0;->for(Ljava/io/ByteArrayInputStream;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'extensionData\' cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static T(Ljava/io/InputStream;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    if-ltz p0, :cond_0

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p0, v0

    return p0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public static U([BI)I
    .locals 1

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static V(ILjava/io/InputStream;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-array v0, p0, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/l0;->T(Ljava/io/InputStream;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static W(Ljava/io/InputStream;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    if-ltz p0, :cond_0

    shl-int/lit8 v0, v0, 0x10

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    or-int/2addr p0, v0

    return p0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public static X([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static Y(Ljava/io/InputStream;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    if-ltz p0, :cond_0

    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    or-int/2addr p0, v0

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public static Z([BI)J
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    int-to-long p0, p0

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    return-wide p0
.end method

.method public static a(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v2, 0x4

    if-eq p0, v2, :cond_0

    const/4 v2, 0x5

    if-eq p0, v2, :cond_0

    sparse-switch p0, :sswitch_data_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    packed-switch p0, :pswitch_data_5

    packed-switch p0, :pswitch_data_6

    new-instance p0, Landroid/support/v4/n72;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p0

    :pswitch_0
    const/16 p0, 0x68

    return p0

    :pswitch_1
    const/16 p0, 0x67

    return p0

    :pswitch_2
    const/16 p0, 0x15

    return p0

    :pswitch_3
    const/16 p0, 0x12

    return p0

    :pswitch_4
    const/16 p0, 0x10

    return p0

    :pswitch_5
    const/16 p0, 0x11

    return p0

    :pswitch_6
    const/16 p0, 0xf

    return p0

    :pswitch_7
    const/16 p0, 0x14

    return p0

    :pswitch_8
    const/16 p0, 0x13

    return p0

    :pswitch_9
    :sswitch_0
    const/16 p0, 0xc

    return p0

    :pswitch_a
    :sswitch_1
    return v1

    :pswitch_b
    :sswitch_2
    const/16 p0, 0xb

    return p0

    :pswitch_c
    :sswitch_3
    const/16 p0, 0xa

    return p0

    :sswitch_4
    const/16 p0, 0xe

    return p0

    :pswitch_d
    :sswitch_5
    const/16 p0, 0x9

    return p0

    :pswitch_e
    :sswitch_6
    const/16 p0, 0x8

    return p0

    :pswitch_f
    :sswitch_7
    const/16 p0, 0xd

    return p0

    :pswitch_10
    :sswitch_8
    const/4 p0, 0x7

    return p0

    :cond_0
    :pswitch_11
    :sswitch_9
    return v0

    :cond_1
    :pswitch_12
    return v1

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_8
        0xd -> :sswitch_8
        0x10 -> :sswitch_8
        0x13 -> :sswitch_8
        0x16 -> :sswitch_8
        0x18 -> :sswitch_9
        0x1b -> :sswitch_8
        0x84 -> :sswitch_7
        0x85 -> :sswitch_7
        0x86 -> :sswitch_7
        0x87 -> :sswitch_7
        0x88 -> :sswitch_7
        0x89 -> :sswitch_7
        0x8a -> :sswitch_9
        0x8b -> :sswitch_8
        0x8c -> :sswitch_6
        0x8d -> :sswitch_5
        0x8e -> :sswitch_9
        0x8f -> :sswitch_8
        0x90 -> :sswitch_6
        0x91 -> :sswitch_5
        0x92 -> :sswitch_9
        0x93 -> :sswitch_8
        0x94 -> :sswitch_6
        0x95 -> :sswitch_5
        0x96 -> :sswitch_4
        0x97 -> :sswitch_4
        0x98 -> :sswitch_4
        0x99 -> :sswitch_4
        0x9a -> :sswitch_4
        0x9b -> :sswitch_4
        0x9c -> :sswitch_3
        0x9d -> :sswitch_2
        0x9e -> :sswitch_3
        0x9f -> :sswitch_2
        0xa0 -> :sswitch_3
        0xa1 -> :sswitch_2
        0xa2 -> :sswitch_3
        0xa3 -> :sswitch_2
        0xa4 -> :sswitch_3
        0xa5 -> :sswitch_2
        0xa6 -> :sswitch_3
        0xa7 -> :sswitch_2
        0xa8 -> :sswitch_3
        0xa9 -> :sswitch_2
        0xaa -> :sswitch_3
        0xab -> :sswitch_2
        0xac -> :sswitch_3
        0xad -> :sswitch_2
        0xae -> :sswitch_6
        0xaf -> :sswitch_5
        0xb0 -> :sswitch_1
        0xb1 -> :sswitch_1
        0xb2 -> :sswitch_6
        0xb3 -> :sswitch_5
        0xb4 -> :sswitch_1
        0xb5 -> :sswitch_1
        0xb6 -> :sswitch_6
        0xb7 -> :sswitch_5
        0xb8 -> :sswitch_1
        0xb9 -> :sswitch_1
        0xba -> :sswitch_0
        0xbb -> :sswitch_0
        0xbc -> :sswitch_0
        0xbd -> :sswitch_0
        0xbe -> :sswitch_0
        0xbf -> :sswitch_0
        0xc0 -> :sswitch_7
        0xc1 -> :sswitch_7
        0xc2 -> :sswitch_7
        0xc3 -> :sswitch_7
        0xc4 -> :sswitch_7
        0xc5 -> :sswitch_7
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_a
        :pswitch_e
        :pswitch_d
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x67
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xc001
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_e
        :pswitch_d
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_e
        :pswitch_d
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_e
        :pswitch_d
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_e
        :pswitch_d
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_e
        :pswitch_d
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_e
        :pswitch_d
        :pswitch_e
        :pswitch_d
        :pswitch_e
        :pswitch_d
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_c
        :pswitch_b
        :pswitch_c
        :pswitch_b
        :pswitch_c
        :pswitch_b
        :pswitch_11
        :pswitch_10
        :pswitch_e
        :pswitch_d
        :pswitch_e
        :pswitch_d
        :pswitch_12
        :pswitch_a
        :pswitch_a
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xc072
        :pswitch_9
        :pswitch_f
        :pswitch_9
        :pswitch_f
        :pswitch_9
        :pswitch_f
        :pswitch_9
        :pswitch_f
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_f
        :pswitch_9
        :pswitch_f
        :pswitch_9
        :pswitch_f
        :pswitch_9
        :pswitch_f
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xcca8
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xff00
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0xff10
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a0(Ljava/io/InputStream;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/l0;->W(Ljava/io/InputStream;)I

    move-result v0

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/l0;->W(Ljava/io/InputStream;)I

    move-result p0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/16 v4, 0x18

    shl-long/2addr v0, v4

    int-to-long v4, p0

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static abstract([I)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/crypto/tls/l0;->w0([I[BI)V

    return-object v0
.end method

.method public static b(Ljava/util/Hashtable;Ljava/lang/Integer;)[B
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    :goto_0
    return-object p0
.end method

.method public static b0([BI)J
    .locals 4

    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/tls/l0;->X([BI)I

    move-result v0

    add-int/lit8 p1, p1, 0x3

    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/tls/l0;->X([BI)I

    move-result p0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/16 p1, 0x18

    shl-long/2addr v0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static break(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/l0;->z(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Landroid/support/v4/n72;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p0
.end method

.method public static c(I)S
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x5

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown PRFAlgorithm"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x4

    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "legacy PRF not a valid algorithm"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c0(Ljava/io/InputStream;)S
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    if-ltz p0, :cond_0

    int-to-short p0, p0

    return p0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public static case([B[BI)[B
    .locals 12

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/l0;->throws(S)Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Lorg/bouncycastle/crypto/tls/l0;->throws(S)Lorg/bouncycastle/crypto/Digest;

    move-result-object v2

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    new-array v5, v4, [B

    add-int v6, p2, v3

    new-array v6, v6, [B

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v8, p2, :cond_0

    sget-object v10, Lorg/bouncycastle/crypto/tls/l0;->goto:[[B

    aget-object v10, v10, v9

    array-length v11, v10

    invoke-interface {v2, v10, v7, v11}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    array-length v10, p0

    invoke-interface {v2, p0, v7, v10}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    array-length v10, p1

    invoke-interface {v2, p1, v7, v10}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {v2, v5, v7}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    array-length v10, p0

    invoke-interface {v1, p0, v7, v10}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {v1, v5, v7, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {v1, v6, v8}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-int/2addr v8, v3

    add-int/2addr v9, v0

    goto :goto_0

    :cond_0
    invoke-static {v6, v7, p2}, Landroid/support/v4/q3;->instanceof([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static catch(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/tls/l0;->A(J)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Landroid/support/v4/n72;

    const/16 p1, 0x50

    invoke-direct {p0, p1}, Landroid/support/v4/n72;-><init>(S)V

    throw p0
.end method

.method public static class(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/l0;->B(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Landroid/support/v4/n72;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p0
.end method

.method public static const(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/tls/l0;->C(J)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Landroid/support/v4/n72;

    const/16 p1, 0x50

    invoke-direct {p0, p1}, Landroid/support/v4/n72;-><init>(S)V

    throw p0
.end method

.method public static continue([S)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/crypto/tls/l0;->M0([S[BI)V

    return-object v0
.end method

.method public static d(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    sparse-switch p0, :sswitch_data_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    packed-switch p0, :pswitch_data_5

    packed-switch p0, :pswitch_data_6

    new-instance p0, Landroid/support/v4/n72;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p0

    :pswitch_0
    const/16 p0, 0x18

    return p0

    :pswitch_1
    const/16 p0, 0x16

    return p0

    :pswitch_2
    const/16 p0, 0x17

    return p0

    :pswitch_3
    const/16 p0, 0x15

    return p0

    :pswitch_4
    const/16 p0, 0x14

    return p0

    :pswitch_5
    const/16 p0, 0x13

    return p0

    :pswitch_6
    const/16 p0, 0x12

    return p0

    :pswitch_7
    const/16 p0, 0x11

    return p0

    :pswitch_8
    const/16 p0, 0x10

    return p0

    :pswitch_9
    :sswitch_0
    const/16 p0, 0xf

    return p0

    :pswitch_a
    :sswitch_1
    const/16 p0, 0xe

    return p0

    :pswitch_b
    :sswitch_2
    const/16 p0, 0xd

    return p0

    :pswitch_c
    :sswitch_3
    const/16 p0, 0xb

    return p0

    :pswitch_d
    :sswitch_4
    return v1

    :pswitch_e
    :sswitch_5
    const/4 p0, 0x3

    return p0

    :pswitch_f
    :sswitch_6
    const/16 p0, 0x9

    return p0

    :pswitch_10
    :sswitch_7
    const/4 p0, 0x7

    return p0

    :cond_0
    :pswitch_11
    :sswitch_8
    return v0

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_8
        0xd -> :sswitch_7
        0x10 -> :sswitch_6
        0x13 -> :sswitch_5
        0x16 -> :sswitch_4
        0x18 -> :sswitch_3
        0x1b -> :sswitch_3
        0x84 -> :sswitch_8
        0x85 -> :sswitch_7
        0x86 -> :sswitch_6
        0x87 -> :sswitch_5
        0x88 -> :sswitch_4
        0x89 -> :sswitch_3
        0x8a -> :sswitch_2
        0x8b -> :sswitch_2
        0x8c -> :sswitch_2
        0x8d -> :sswitch_2
        0x8e -> :sswitch_1
        0x8f -> :sswitch_1
        0x90 -> :sswitch_1
        0x91 -> :sswitch_1
        0x92 -> :sswitch_0
        0x93 -> :sswitch_0
        0x94 -> :sswitch_0
        0x95 -> :sswitch_0
        0x96 -> :sswitch_8
        0x97 -> :sswitch_7
        0x98 -> :sswitch_6
        0x99 -> :sswitch_5
        0x9a -> :sswitch_4
        0x9b -> :sswitch_3
        0x9c -> :sswitch_8
        0x9d -> :sswitch_8
        0x9e -> :sswitch_4
        0x9f -> :sswitch_4
        0xa0 -> :sswitch_6
        0xa1 -> :sswitch_6
        0xa2 -> :sswitch_5
        0xa3 -> :sswitch_5
        0xa4 -> :sswitch_7
        0xa5 -> :sswitch_7
        0xa6 -> :sswitch_3
        0xa7 -> :sswitch_3
        0xa8 -> :sswitch_2
        0xa9 -> :sswitch_2
        0xaa -> :sswitch_1
        0xab -> :sswitch_1
        0xac -> :sswitch_0
        0xad -> :sswitch_0
        0xae -> :sswitch_2
        0xaf -> :sswitch_2
        0xb0 -> :sswitch_2
        0xb1 -> :sswitch_2
        0xb2 -> :sswitch_1
        0xb3 -> :sswitch_1
        0xb4 -> :sswitch_1
        0xb5 -> :sswitch_1
        0xb6 -> :sswitch_0
        0xb7 -> :sswitch_0
        0xb8 -> :sswitch_0
        0xb9 -> :sswitch_0
        0xba -> :sswitch_8
        0xbb -> :sswitch_7
        0xbc -> :sswitch_6
        0xbd -> :sswitch_5
        0xbe -> :sswitch_4
        0xbf -> :sswitch_3
        0xc0 -> :sswitch_8
        0xc1 -> :sswitch_7
        0xc2 -> :sswitch_6
        0xc3 -> :sswitch_5
        0xc4 -> :sswitch_4
        0xc5 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x67
        :pswitch_d
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_c
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xc001
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xc072
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_11
        :pswitch_11
        :pswitch_d
        :pswitch_d
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_10
        :pswitch_10
        :pswitch_c
        :pswitch_c
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_11
        :pswitch_d
        :pswitch_d
        :pswitch_11
        :pswitch_11
        :pswitch_d
        :pswitch_d
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xcca8
        :pswitch_5
        :pswitch_7
        :pswitch_d
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xff00
        :pswitch_d
        :pswitch_d
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_7
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0xff10
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static d0([BI)S
    .locals 0

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-short p0, p0

    return p0
.end method

.method public static default(I)Lorg/bouncycastle/crypto/Digest;
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/l0;->c(I)S

    move-result p0

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/l0;->throws(S)Lorg/bouncycastle/crypto/Digest;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/crypto/tls/throw;

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/throw;-><init>()V

    return-object p0
.end method

.method public static do(Lorg/bouncycastle/crypto/tls/TlsContext;[BLjava/lang/String;[BI)[B
    .locals 1

    invoke-interface {p0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getServerVersion()Lorg/bouncycastle/crypto/tls/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/a;->catch()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lorg/bouncycastle/util/for;->goto(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {p2, p3}, Lorg/bouncycastle/crypto/tls/l0;->static([B[B)[B

    move-result-object p3

    invoke-interface {p0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecurityParameters()Landroid/support/v4/mw1;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/mw1;->goto()I

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1, p2, p3, p4}, Lorg/bouncycastle/crypto/tls/l0;->for([B[B[BI)[B

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/l0;->default(I)Lorg/bouncycastle/crypto/Digest;

    move-result-object p0

    new-array p2, p4, [B

    invoke-static {p0, p1, p3, p2}, Lorg/bouncycastle/crypto/tls/l0;->m(Lorg/bouncycastle/crypto/Digest;[B[B[B)V

    return-object p2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No PRF available for SSLv3 session"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v2, 0x4

    if-eq p0, v2, :cond_1

    const/4 v3, 0x5

    if-eq p0, v3, :cond_0

    sparse-switch p0, :sswitch_data_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    packed-switch p0, :pswitch_data_5

    packed-switch p0, :pswitch_data_6

    new-instance p0, Landroid/support/v4/n72;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p0

    :pswitch_0
    :sswitch_0
    return v2

    :pswitch_1
    :sswitch_1
    const/4 p0, 0x3

    return p0

    :pswitch_2
    :sswitch_2
    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_3
    :sswitch_3
    return v1

    :cond_1
    :sswitch_4
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_3
        0xd -> :sswitch_3
        0x10 -> :sswitch_3
        0x13 -> :sswitch_3
        0x16 -> :sswitch_3
        0x18 -> :sswitch_4
        0x1b -> :sswitch_3
        0x84 -> :sswitch_3
        0x85 -> :sswitch_3
        0x86 -> :sswitch_3
        0x87 -> :sswitch_3
        0x88 -> :sswitch_3
        0x89 -> :sswitch_3
        0x8a -> :sswitch_3
        0x8b -> :sswitch_3
        0x8c -> :sswitch_3
        0x8d -> :sswitch_3
        0x8e -> :sswitch_3
        0x8f -> :sswitch_3
        0x90 -> :sswitch_3
        0x91 -> :sswitch_3
        0x92 -> :sswitch_3
        0x93 -> :sswitch_3
        0x94 -> :sswitch_3
        0x95 -> :sswitch_3
        0x96 -> :sswitch_3
        0x97 -> :sswitch_3
        0x98 -> :sswitch_3
        0x99 -> :sswitch_3
        0x9a -> :sswitch_3
        0x9b -> :sswitch_3
        0x9c -> :sswitch_2
        0x9d -> :sswitch_2
        0x9e -> :sswitch_2
        0x9f -> :sswitch_2
        0xa0 -> :sswitch_2
        0xa1 -> :sswitch_2
        0xa2 -> :sswitch_2
        0xa3 -> :sswitch_2
        0xa4 -> :sswitch_2
        0xa5 -> :sswitch_2
        0xa6 -> :sswitch_2
        0xa7 -> :sswitch_2
        0xa8 -> :sswitch_2
        0xa9 -> :sswitch_2
        0xaa -> :sswitch_2
        0xab -> :sswitch_2
        0xac -> :sswitch_2
        0xad -> :sswitch_2
        0xae -> :sswitch_1
        0xaf -> :sswitch_0
        0xb0 -> :sswitch_1
        0xb1 -> :sswitch_0
        0xb2 -> :sswitch_1
        0xb3 -> :sswitch_0
        0xb4 -> :sswitch_1
        0xb5 -> :sswitch_0
        0xb6 -> :sswitch_1
        0xb7 -> :sswitch_0
        0xb8 -> :sswitch_1
        0xb9 -> :sswitch_0
        0xba -> :sswitch_1
        0xbb -> :sswitch_1
        0xbc -> :sswitch_1
        0xbd -> :sswitch_1
        0xbe -> :sswitch_1
        0xbf -> :sswitch_1
        0xc0 -> :sswitch_1
        0xc1 -> :sswitch_1
        0xc2 -> :sswitch_1
        0xc3 -> :sswitch_1
        0xc4 -> :sswitch_1
        0xc5 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x67
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xc001
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xc072
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xcca8
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xff00
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0xff10
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static e0(ILjava/io/InputStream;)[S
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-array v0, p0, [S

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/l0;->c0(Ljava/io/InputStream;)S

    move-result v2

    aput-short v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static else(Lorg/bouncycastle/crypto/tls/TlsContext;[B)[B
    .locals 3

    invoke-interface {p0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecurityParameters()Landroid/support/v4/mw1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/mw1;->final()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/mw1;->class()[B

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/mw1;->for()[B

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v4/mw1;->catch()[B

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/tls/l0;->static([B[B)[B

    move-result-object v1

    :goto_0
    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/l0;->q(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v1}, Lorg/bouncycastle/crypto/tls/l0;->goto([B[B)[B

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/mw1;->final()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "extended master secret"

    goto :goto_1

    :cond_2
    const-string v0, "master secret"

    :goto_1
    const/16 v2, 0x30

    invoke-static {p0, p1, v0, v1, v2}, Lorg/bouncycastle/crypto/tls/l0;->do(Lorg/bouncycastle/crypto/tls/TlsContext;[BLjava/lang/String;[BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static extends(Ljava/util/Vector;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/bouncycastle/crypto/tls/l0;->private(Ljava/util/Vector;ZLjava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static f(I)Lorg/bouncycastle/crypto/tls/a;
    .locals 0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    packed-switch p0, :pswitch_data_5

    packed-switch p0, :pswitch_data_6

    packed-switch p0, :pswitch_data_7

    packed-switch p0, :pswitch_data_8

    packed-switch p0, :pswitch_data_9

    sget-object p0, Lorg/bouncycastle/crypto/tls/a;->for:Lorg/bouncycastle/crypto/tls/a;

    return-object p0

    :pswitch_0
    sget-object p0, Lorg/bouncycastle/crypto/tls/a;->case:Lorg/bouncycastle/crypto/tls/a;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x3b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x67
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x9c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xba
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xc023
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xc072
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0xc09c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0xcca8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0xff00
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0xff10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static f0(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    if-ltz p0, :cond_0

    invoke-static {v0, p0}, Lorg/bouncycastle/crypto/tls/a;->if(II)Lorg/bouncycastle/crypto/tls/a;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public static final(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/tls/l0;->D(J)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Landroid/support/v4/n72;

    const/16 p1, 0x50

    invoke-direct {p0, p1}, Landroid/support/v4/n72;-><init>(S)V

    throw p0
.end method

.method public static finally(S)Lorg/bouncycastle/crypto/tls/TlsSigner;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/16 v0, 0x40

    if-ne p0, v0, :cond_0

    new-instance p0, Landroid/support/v4/l72;

    invoke-direct {p0}, Landroid/support/v4/l72;-><init>()V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'clientCertificateType\' is not a type with signing capability"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Landroid/support/v4/k72;

    invoke-direct {p0}, Landroid/support/v4/k72;-><init>()V

    return-object p0

    :cond_2
    new-instance p0, Lorg/bouncycastle/crypto/tls/c0;

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/c0;-><init>()V

    return-object p0
.end method

.method public static for([B[B[BI)[B
    .locals 6

    array-length p1, p0

    const/4 v0, 0x1

    add-int/2addr p1, v0

    const/4 v1, 0x2

    div-int/2addr p1, v1

    new-array v2, p1, [B

    new-array v3, p1, [B

    const/4 v4, 0x0

    invoke-static {p0, v4, v2, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, p0

    sub-int/2addr v5, p1

    invoke-static {p0, v5, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array p0, p3, [B

    new-array p1, p3, [B

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/l0;->throws(S)Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    invoke-static {v0, v2, p2, p0}, Lorg/bouncycastle/crypto/tls/l0;->m(Lorg/bouncycastle/crypto/Digest;[B[B[B)V

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/l0;->throws(S)Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    invoke-static {v0, v3, p2, p1}, Lorg/bouncycastle/crypto/tls/l0;->m(Lorg/bouncycastle/crypto/Digest;[B[B[B)V

    :goto_0
    if-ge v4, p3, :cond_0

    aget-byte p2, p0, v4

    aget-byte v0, p1, v4

    xor-int/2addr p2, v0

    int-to-byte p2, p2

    aput-byte p2, p0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static g(S)Lorg/bouncycastle/asn1/catch;
    .locals 1

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown HashAlgorithm"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    sget-object p0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lorg/bouncycastle/asn1/catch;

    return-object p0

    :pswitch_1
    sget-object p0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lorg/bouncycastle/asn1/catch;

    return-object p0

    :pswitch_2
    sget-object p0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/catch;

    return-object p0

    :pswitch_3
    sget-object p0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lorg/bouncycastle/asn1/catch;

    return-object p0

    :pswitch_4
    sget-object p0, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_SHA1:Lorg/bouncycastle/asn1/catch;

    return-object p0

    :pswitch_5
    sget-object p0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5:Lorg/bouncycastle/asn1/catch;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static g0([BI)Lorg/bouncycastle/crypto/tls/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    invoke-static {v0, p0}, Lorg/bouncycastle/crypto/tls/a;->if(II)Lorg/bouncycastle/crypto/tls/a;

    move-result-object p0

    return-object p0
.end method

.method public static goto([B[B)[B
    .locals 11

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/l0;->throws(S)Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/l0;->throws(S)Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v4, v3, [B

    mul-int/lit8 v5, v2, 0x3

    new-array v5, v5, [B

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    const/4 v9, 0x3

    if-ge v7, v9, :cond_0

    sget-object v9, Lorg/bouncycastle/crypto/tls/l0;->goto:[[B

    aget-object v9, v9, v7

    array-length v10, v9

    invoke-interface {v1, v9, v6, v10}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    array-length v9, p0

    invoke-interface {v1, p0, v6, v9}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    array-length v9, p1

    invoke-interface {v1, p1, v6, v9}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {v1, v4, v6}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    array-length v9, p0

    invoke-interface {v0, p0, v6, v9}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {v0, v4, v6, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {v0, v5, v8}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-int/2addr v8, v2

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    return-object v5
.end method

.method public static h(Ljava/util/Hashtable;)Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/crypto/tls/l0;->try:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/bouncycastle/crypto/tls/l0;->b(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/l0;->S([B)Ljava/util/Vector;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static h0(Ljava/io/InputStream;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    if-ltz p0, :cond_0

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p0, v0

    return p0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public static i(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;)Lorg/bouncycastle/crypto/tls/i;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/l0;->w(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;->getSignatureAndHashAlgorithm()Lorg/bouncycastle/crypto/tls/i;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/support/v4/n72;

    const/16 p1, 0x50

    invoke-direct {p0, p1}, Landroid/support/v4/n72;-><init>(S)V

    throw p0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static i0([BI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    or-int/2addr p0, v0

    return p0
.end method

.method public static if([BLjava/lang/String;[BI)[B
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/util/for;->goto(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1, p2}, Lorg/bouncycastle/crypto/tls/l0;->static([B[B)[B

    move-result-object p2

    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/tls/l0;->for([B[B[BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static implements()Ljava/util/Vector;
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/tls/i;

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/tls/i;-><init>(SS)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/l0;->l0(Ljava/lang/Object;)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public static import(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/tls/l0;->H(J)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Landroid/support/v4/n72;

    const/16 p1, 0x50

    invoke-direct {p0, p1}, Landroid/support/v4/n72;-><init>(S)V

    throw p0
.end method

.method public static instanceof()Ljava/util/Vector;
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/tls/i;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/tls/i;-><init>(SS)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/l0;->l0(Ljava/lang/Object;)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public static interface(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/l0;->a(I)I

    move-result p0

    const/16 v0, 0x67

    if-eq p0, v0, :cond_0

    const/16 v0, 0x68

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Landroid/support/v4/n72;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_1
    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_2
    const/4 p0, 0x2

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static j(Ljava/util/Vector;)Ljava/util/Vector;
    .locals 4

    if-nez p0, :cond_0

    invoke-static {}, Lorg/bouncycastle/crypto/tls/l0;->volatile()Ljava/util/Vector;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/support/v4/ux1;->do(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/crypto/tls/i;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/i;->for()S

    move-result v2

    invoke-static {v2}, Landroid/support/v4/ux1;->do(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static j0(Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;Ljava/util/Vector;)V
    .locals 3

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/crypto/tls/i;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/i;->if()S

    move-result v1

    invoke-static {v1}, Landroid/support/v4/zi0;->new(S)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0, v1}, Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;->trackHashAlgorithm(S)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static k(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/tls/l0;->b(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    array-length p0, p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    new-instance p0, Landroid/support/v4/n72;

    invoke-direct {p0, p2}, Landroid/support/v4/n72;-><init>(S)V

    throw p0
.end method

.method public static k0(Landroid/support/v4/rg;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/support/v4/rg;->final()Landroid/support/v4/w32;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/w32;->try()Landroid/support/v4/y90;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Landroid/support/v4/lr0;->new(Landroid/support/v4/y90;)Landroid/support/v4/lr0;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/lr0;->try()[B

    move-result-object p0

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/support/v4/n72;

    const/16 p1, 0x2e

    invoke-direct {p0, p1}, Landroid/support/v4/n72;-><init>(S)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static l(S)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/16 v1, 0x40

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method private static l0(Ljava/lang/Object;)Ljava/util/Vector;
    .locals 2

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static m(Lorg/bouncycastle/crypto/Digest;[B[B[B)V
    .locals 8

    new-instance v0, Landroid/support/v4/pi0;

    invoke-direct {v0, p0}, Landroid/support/v4/pi0;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    new-instance v1, Landroid/support/v4/gr0;

    invoke-direct {v1, p1}, Landroid/support/v4/gr0;-><init>([B)V

    invoke-virtual {v0, v1}, Landroid/support/v4/pi0;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    invoke-interface {p0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p0

    array-length p1, p3

    add-int/2addr p1, p0

    add-int/lit8 p1, p1, -0x1

    div-int/2addr p1, p0

    invoke-virtual {v0}, Landroid/support/v4/pi0;->getMacSize()I

    move-result v1

    new-array v2, v1, [B

    invoke-virtual {v0}, Landroid/support/v4/pi0;->getMacSize()I

    move-result v3

    new-array v3, v3, [B

    const/4 v4, 0x0

    move-object v6, p2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, p1, :cond_0

    array-length v7, v6

    invoke-virtual {v0, v6, v4, v7}, Landroid/support/v4/pi0;->update([BII)V

    invoke-virtual {v0, v2, v4}, Landroid/support/v4/pi0;->doFinal([BI)I

    invoke-virtual {v0, v2, v4, v1}, Landroid/support/v4/pi0;->update([BII)V

    array-length v6, p2

    invoke-virtual {v0, p2, v4, v6}, Landroid/support/v4/pi0;->update([BII)V

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/pi0;->doFinal([BI)I

    mul-int v6, p0, v5

    array-length v7, p3

    sub-int/2addr v7, v6

    invoke-static {p0, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v3, v4, p3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v5, 0x1

    move-object v6, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static m0(Ljava/util/Vector;Lorg/bouncycastle/crypto/tls/i;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    const v1, 0x8000

    if-ge v0, v1, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/i;->for()S

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/crypto/tls/i;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/i;->if()S

    move-result v2

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/i;->if()S

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/i;->for()S

    move-result v1

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/i;->for()S

    move-result v2

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Landroid/support/v4/n72;

    const/16 p1, 0x2f

    invoke-direct {p0, p1}, Landroid/support/v4/n72;-><init>(S)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'signatureAlgorithm\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'supportedSignatureAlgorithms\' must have length from 1 to (2^15 - 1)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static n([BLorg/bouncycastle/crypto/tls/h;)Lorg/bouncycastle/crypto/tls/TlsSession;
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/tls/j0;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/crypto/tls/j0;-><init>([BLorg/bouncycastle/crypto/tls/h;)V

    return-object v0
.end method

.method public static n0([BI)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    ushr-int/lit8 v0, v1, 0x18

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    ushr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    add-int/lit8 v0, p1, 0x2

    ushr-int/lit8 v2, v1, 0x8

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    add-int/lit8 p1, p1, 0x3

    int-to-byte v0, v1

    aput-byte v0, p0, p1

    return-void
.end method

.method public static native(S)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/l0;->I(S)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Landroid/support/v4/n72;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p0
.end method

.method public static new(Ljava/util/Hashtable;Ljava/util/Vector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/crypto/tls/l0;->try:Ljava/lang/Integer;

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/l0;->extends(Ljava/util/Vector;)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static o(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/l0;->interface(I)I

    move-result p0

    const/4 v0, 0x2

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static o0([BLjava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/l0;->break(I)V

    array-length v0, p0

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/l0;->r0(ILjava/io/OutputStream;)V

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public static p(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/l0;->interface(I)I

    move-result p0

    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static p0([BLjava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/l0;->class(I)V

    array-length v0, p0

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/l0;->x0(ILjava/io/OutputStream;)V

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public static package([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/l0;->while(I)V

    array-length v0, p0

    int-to-byte v0, v0

    invoke-static {p0, v0}, Landroid/support/v4/q3;->z([BB)[B

    move-result-object p0

    return-object p0
.end method

.method public static private(Ljava/util/Vector;ZLjava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    const v1, 0x8000

    if-ge v0, v1, :cond_3

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/l0;->break(I)V

    invoke-static {v0, p2}, Lorg/bouncycastle/crypto/tls/l0;->r0(ILjava/io/OutputStream;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/crypto/tls/i;

    if-nez p1, :cond_1

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/i;->for()S

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "SignatureAlgorithm.anonymous MUST NOT appear in the signature_algorithms extension"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    invoke-virtual {v1, p2}, Lorg/bouncycastle/crypto/tls/i;->do(Ljava/io/OutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'supportedSignatureAlgorithms\' must have length from 1 to (2^15 - 1)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static protected(Lorg/bouncycastle/crypto/tls/break;Lorg/bouncycastle/crypto/tls/break;)S
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/break;->case()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/tls/break;->for(I)Landroid/support/v4/rg;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/rg;->const()Lorg/bouncycastle/asn1/x509/try;

    move-result-object p1

    const/16 v0, 0x2b

    :try_start_0
    invoke-static {p1}, Lorg/bouncycastle/crypto/util/const;->for(Lorg/bouncycastle/asn1/x509/try;)Landroid/support/v4/a4;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/a4;->do()Z

    move-result v1

    if-nez v1, :cond_4

    instance-of v1, p1, Landroid/support/v4/ck1;

    const/16 v2, 0x80

    if-eqz v1, :cond_1

    invoke-static {p0, v2}, Lorg/bouncycastle/crypto/tls/l0;->k0(Landroid/support/v4/rg;I)V

    const/4 p0, 0x1

    return p0

    :cond_1
    instance-of v1, p1, Landroid/support/v4/kv;

    if-eqz v1, :cond_2

    invoke-static {p0, v2}, Lorg/bouncycastle/crypto/tls/l0;->k0(Landroid/support/v4/rg;I)V

    const/4 p0, 0x2

    return p0

    :cond_2
    instance-of p1, p1, Landroid/support/v4/k50;

    if-eqz p1, :cond_3

    invoke-static {p0, v2}, Lorg/bouncycastle/crypto/tls/l0;->k0(Landroid/support/v4/rg;I)V

    const/16 p0, 0x40

    return p0

    :cond_3
    new-instance p0, Landroid/support/v4/n72;

    invoke-direct {p0, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p0

    :cond_4
    new-instance p0, Landroid/support/v4/n72;

    const/16 p1, 0x50

    invoke-direct {p0, p1}, Landroid/support/v4/n72;-><init>(S)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v0, p0}, Landroid/support/v4/n72;-><init>(SLjava/lang/Throwable;)V

    throw p1
.end method

.method public static public(SLorg/bouncycastle/crypto/Digest;)Lorg/bouncycastle/crypto/Digest;
    .locals 0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown HashAlgorithm"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p0, Landroid/support/v4/bq1;

    check-cast p1, Landroid/support/v4/bq1;

    invoke-direct {p0, p1}, Landroid/support/v4/bq1;-><init>(Landroid/support/v4/bq1;)V

    return-object p0

    :pswitch_1
    new-instance p0, Landroid/support/v4/zp1;

    check-cast p1, Landroid/support/v4/zp1;

    invoke-direct {p0, p1}, Landroid/support/v4/zp1;-><init>(Landroid/support/v4/zp1;)V

    return-object p0

    :pswitch_2
    new-instance p0, Landroid/support/v4/yp1;

    check-cast p1, Landroid/support/v4/yp1;

    invoke-direct {p0, p1}, Landroid/support/v4/yp1;-><init>(Landroid/support/v4/yp1;)V

    return-object p0

    :pswitch_3
    new-instance p0, Landroid/support/v4/xp1;

    check-cast p1, Landroid/support/v4/xp1;

    invoke-direct {p0, p1}, Landroid/support/v4/xp1;-><init>(Landroid/support/v4/xp1;)V

    return-object p0

    :pswitch_4
    new-instance p0, Landroid/support/v4/wp1;

    check-cast p1, Landroid/support/v4/wp1;

    invoke-direct {p0, p1}, Landroid/support/v4/wp1;-><init>(Landroid/support/v4/wp1;)V

    return-object p0

    :pswitch_5
    new-instance p0, Landroid/support/v4/ow0;

    check-cast p1, Landroid/support/v4/ow0;

    invoke-direct {p0, p1}, Landroid/support/v4/ow0;-><init>(Landroid/support/v4/ow0;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static q(Lorg/bouncycastle/crypto/tls/TlsContext;)Z
    .locals 0

    invoke-interface {p0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getServerVersion()Lorg/bouncycastle/crypto/tls/a;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a;->catch()Z

    move-result p0

    return p0
.end method

.method public static q0([BLjava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/l0;->while(I)V

    array-length v0, p0

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/l0;->F0(ILjava/io/OutputStream;)V

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public static r(Lorg/bouncycastle/crypto/tls/a;)Z
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/tls/a;->case:Lorg/bouncycastle/crypto/tls/a;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a;->for()Lorg/bouncycastle/crypto/tls/a;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/crypto/tls/a;->this(Lorg/bouncycastle/crypto/tls/a;)Z

    move-result p0

    return p0
.end method

.method public static r0(ILjava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    ushr-int/lit8 v0, p0, 0x8

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public static return(ILorg/bouncycastle/crypto/Digest;)Lorg/bouncycastle/crypto/Digest;
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/l0;->c(I)S

    move-result p0

    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/tls/l0;->public(SLorg/bouncycastle/crypto/Digest;)Lorg/bouncycastle/crypto/Digest;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/crypto/tls/throw;

    check-cast p1, Lorg/bouncycastle/crypto/tls/throw;

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/tls/throw;-><init>(Lorg/bouncycastle/crypto/tls/throw;)V

    return-object p0
.end method

.method public static s(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/l0;->interface(I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static s0(I[BI)V
    .locals 1

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    return-void
.end method

.method public static static([B[B)[B
    .locals 3

    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static strictfp()[[B
    .locals 6

    const/16 v0, 0xa

    new-array v1, v0, [[B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    add-int/lit8 v3, v2, 0x1

    new-array v4, v3, [B

    add-int/lit8 v5, v2, 0x41

    int-to-byte v5, v5

    invoke-static {v4, v5}, Landroid/support/v4/q3;->c([BB)V

    aput-object v4, v1, v2

    move v2, v3

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static super(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/tls/l0;->E(J)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Landroid/support/v4/n72;

    const/16 p1, 0x50

    invoke-direct {p0, p1}, Landroid/support/v4/n72;-><init>(S)V

    throw p0
.end method

.method public static switch(Lorg/bouncycastle/crypto/tls/i;)Lorg/bouncycastle/crypto/Digest;
    .locals 0

    if-nez p0, :cond_0

    new-instance p0, Lorg/bouncycastle/crypto/tls/throw;

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/throw;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/i;->if()S

    move-result p0

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/l0;->throws(S)Lorg/bouncycastle/crypto/Digest;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static synchronized()Ljava/util/Vector;
    .locals 11

    const/4 v0, 0x5

    new-array v1, v0, [S

    fill-array-data v1, :array_0

    const/4 v2, 0x3

    new-array v3, v2, [S

    fill-array-data v3, :array_1

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_1

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v0, :cond_0

    new-instance v8, Lorg/bouncycastle/crypto/tls/i;

    aget-short v9, v1, v7

    aget-short v10, v3, v6

    invoke-direct {v8, v9, v10}, Lorg/bouncycastle/crypto/tls/i;-><init>(SS)V

    invoke-virtual {v4, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    return-object v4

    nop

    :array_0
    .array-data 2
        0x2s
        0x3s
        0x4s
        0x5s
        0x6s
    .end array-data

    nop

    :array_1
    .array-data 2
        0x1s
        0x2s
        0x3s
    .end array-data
.end method

.method public static t(Lorg/bouncycastle/crypto/tls/a;)Z
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/tls/a;->try:Lorg/bouncycastle/crypto/tls/a;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a;->for()Lorg/bouncycastle/crypto/tls/a;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/crypto/tls/a;->this(Lorg/bouncycastle/crypto/tls/a;)Z

    move-result p0

    return p0
.end method

.method public static t0([ILjava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget v1, p0, v0

    invoke-static {v1, p1}, Lorg/bouncycastle/crypto/tls/l0;->r0(ILjava/io/OutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static this(Lorg/bouncycastle/crypto/tls/TlsContext;Ljava/lang/String;[B)[B
    .locals 2

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/l0;->q(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    invoke-interface {p0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecurityParameters()Landroid/support/v4/mw1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/mw1;->case()[B

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v4/mw1;->const()I

    move-result v0

    invoke-static {p0, v1, p1, p2, v0}, Lorg/bouncycastle/crypto/tls/l0;->do(Lorg/bouncycastle/crypto/tls/TlsContext;[BLjava/lang/String;[BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static throw(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/tls/l0;->F(J)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Landroid/support/v4/n72;

    const/16 p1, 0x50

    invoke-direct {p0, p1}, Landroid/support/v4/n72;-><init>(S)V

    throw p0
.end method

.method public static throws(S)Lorg/bouncycastle/crypto/Digest;
    .locals 1

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown HashAlgorithm"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p0, Landroid/support/v4/bq1;

    invoke-direct {p0}, Landroid/support/v4/bq1;-><init>()V

    return-object p0

    :pswitch_1
    new-instance p0, Landroid/support/v4/zp1;

    invoke-direct {p0}, Landroid/support/v4/zp1;-><init>()V

    return-object p0

    :pswitch_2
    new-instance p0, Landroid/support/v4/yp1;

    invoke-direct {p0}, Landroid/support/v4/yp1;-><init>()V

    return-object p0

    :pswitch_3
    new-instance p0, Landroid/support/v4/xp1;

    invoke-direct {p0}, Landroid/support/v4/xp1;-><init>()V

    return-object p0

    :pswitch_4
    new-instance p0, Landroid/support/v4/wp1;

    invoke-direct {p0}, Landroid/support/v4/wp1;-><init>()V

    return-object p0

    :pswitch_5
    new-instance p0, Landroid/support/v4/ow0;

    invoke-direct {p0}, Landroid/support/v4/ow0;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static transient()Ljava/util/Vector;
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/tls/i;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v1}, Lorg/bouncycastle/crypto/tls/i;-><init>(SS)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/l0;->l0(Ljava/lang/Object;)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public static try(Lorg/bouncycastle/crypto/tls/TlsContext;I)[B
    .locals 3

    invoke-interface {p0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecurityParameters()Landroid/support/v4/mw1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/mw1;->case()[B

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v4/mw1;->catch()[B

    move-result-object v2

    invoke-virtual {v0}, Landroid/support/v4/mw1;->for()[B

    move-result-object v0

    invoke-static {v2, v0}, Lorg/bouncycastle/crypto/tls/l0;->static([B[B)[B

    move-result-object v0

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/l0;->q(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1, v0, p1}, Lorg/bouncycastle/crypto/tls/l0;->case([B[BI)[B

    move-result-object p0

    return-object p0

    :cond_0
    const-string v2, "key expansion"

    invoke-static {p0, v1, v2, v0, p1}, Lorg/bouncycastle/crypto/tls/l0;->do(Lorg/bouncycastle/crypto/tls/TlsContext;[BLjava/lang/String;[BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static u(Lorg/bouncycastle/crypto/tls/TlsContext;)Z
    .locals 0

    invoke-interface {p0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getServerVersion()Lorg/bouncycastle/crypto/tls/a;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/l0;->t(Lorg/bouncycastle/crypto/tls/a;)Z

    move-result p0

    return p0
.end method

.method public static u0([I[BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget v1, p0, v0

    invoke-static {v1, p1, p2}, Lorg/bouncycastle/crypto/tls/l0;->s0(I[BI)V

    add-int/lit8 p2, p2, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static v(Lorg/bouncycastle/crypto/tls/a;)Z
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/tls/a;->case:Lorg/bouncycastle/crypto/tls/a;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a;->for()Lorg/bouncycastle/crypto/tls/a;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/crypto/tls/a;->this(Lorg/bouncycastle/crypto/tls/a;)Z

    move-result p0

    return p0
.end method

.method public static v0([ILjava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/l0;->break(I)V

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/l0;->r0(ILjava/io/OutputStream;)V

    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/tls/l0;->t0([ILjava/io/OutputStream;)V

    return-void
.end method

.method public static volatile()Ljava/util/Vector;
    .locals 2

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/support/v4/ux1;->do(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-static {v1}, Landroid/support/v4/ux1;->do(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v1, 0x2

    invoke-static {v1}, Landroid/support/v4/ux1;->do(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/support/v4/ux1;->do(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static w(Lorg/bouncycastle/crypto/tls/TlsContext;)Z
    .locals 0

    invoke-interface {p0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getServerVersion()Lorg/bouncycastle/crypto/tls/a;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/l0;->v(Lorg/bouncycastle/crypto/tls/a;)Z

    move-result p0

    return p0
.end method

.method public static w0([I[BI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/l0;->break(I)V

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/crypto/tls/l0;->s0(I[BI)V

    add-int/lit8 p2, p2, 0x2

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/crypto/tls/l0;->u0([I[BI)V

    return-void
.end method

.method public static while(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/l0;->G(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Landroid/support/v4/n72;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p0
.end method

.method public static x(ILjava/util/Vector;)Z
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/l0;->d(I)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_3

    const/4 v2, 0x4

    if-eq p0, v2, :cond_3

    const/4 v2, 0x5

    if-eq p0, v2, :cond_2

    const/4 v2, 0x6

    if-eq p0, v2, :cond_2

    const/16 v2, 0xb

    if-eq p0, v2, :cond_1

    const/16 v2, 0xc

    if-eq p0, v2, :cond_1

    const/16 v2, 0x11

    if-eq p0, v2, :cond_0

    const/16 v1, 0x13

    if-eq p0, v1, :cond_2

    const/16 v1, 0x14

    if-eq p0, v1, :cond_1

    const/16 v1, 0x16

    if-eq p0, v1, :cond_3

    const/16 v1, 0x17

    if-eq p0, v1, :cond_2

    return v0

    :cond_0
    invoke-static {v1}, Landroid/support/v4/ux1;->do(S)Ljava/lang/Short;

    move-result-object p0

    :goto_0
    invoke-virtual {p1, p0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    :goto_1
    invoke-static {p0}, Landroid/support/v4/ux1;->do(S)Ljava/lang/Short;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Landroid/support/v4/ux1;->do(S)Ljava/lang/Short;

    move-result-object p0

    goto :goto_0

    :cond_3
    const/4 p0, 0x2

    goto :goto_1

    :catch_0
    return v0
.end method

.method public static x0(ILjava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    int-to-byte p0, p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public static y(ILorg/bouncycastle/crypto/tls/a;)Z
    .locals 0

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/l0;->f(I)Lorg/bouncycastle/crypto/tls/a;

    move-result-object p0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/a;->for()Lorg/bouncycastle/crypto/tls/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/tls/a;->this(Lorg/bouncycastle/crypto/tls/a;)Z

    move-result p0

    return p0
.end method

.method public static y0(I[BI)V
    .locals 2

    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 p2, p2, 0x2

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    return-void
.end method

.method public static z(I)Z
    .locals 1

    const v0, 0xffff

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static z0(JLjava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x18

    ushr-long v0, p0, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x10

    ushr-long v0, p0, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x8

    ushr-long v0, p0, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    long-to-int p1, p0

    int-to-byte p0, p1

    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method
