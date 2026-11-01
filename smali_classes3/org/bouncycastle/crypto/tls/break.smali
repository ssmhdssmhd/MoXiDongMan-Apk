.class public Lorg/bouncycastle/crypto/tls/break;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final if:Lorg/bouncycastle/crypto/tls/break;


# instance fields
.field public do:[Landroid/support/v4/rg;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/tls/break;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/support/v4/rg;

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/break;-><init>([Landroid/support/v4/rg;)V

    sput-object v0, Lorg/bouncycastle/crypto/tls/break;->if:Lorg/bouncycastle/crypto/tls/break;

    return-void
.end method

.method public constructor <init>([Landroid/support/v4/rg;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/break;->do:[Landroid/support/v4/rg;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'certificateList\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static else(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/break;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/l0;->W(Ljava/io/InputStream;)I

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lorg/bouncycastle/crypto/tls/break;->if:Lorg/bouncycastle/crypto/tls/break;

    return-object p0

    :cond_0
    invoke-static {v0, p0}, Lorg/bouncycastle/crypto/tls/l0;->O(ILjava/io/InputStream;)[B

    move-result-object p0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p0, Ljava/util/Vector;

    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/l0;->Q(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/l0;->K([B)Lorg/bouncycastle/asn1/final;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/rg;->try(Ljava/lang/Object;)Landroid/support/v4/rg;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Landroid/support/v4/rg;

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/rg;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    new-instance p0, Lorg/bouncycastle/crypto/tls/break;

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/tls/break;-><init>([Landroid/support/v4/rg;)V

    return-object p0
.end method


# virtual methods
.method public case()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/break;->do:[Landroid/support/v4/rg;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public do()[Landroid/support/v4/rg;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/break;->do:[Landroid/support/v4/rg;

    array-length v1, v0

    new-array v2, v1, [Landroid/support/v4/rg;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public for(I)Landroid/support/v4/rg;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/break;->do:[Landroid/support/v4/rg;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public if(Ljava/io/OutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/Vector;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/break;->do:[Landroid/support/v4/rg;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/break;->do:[Landroid/support/v4/rg;

    array-length v5, v4

    if-ge v2, v5, :cond_0

    aget-object v4, v4, v2

    const-string v5, "DER"

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/break;->do(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    array-length v4, v4

    add-int/lit8 v4, v4, 0x3

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lorg/bouncycastle/crypto/tls/l0;->class(I)V

    invoke-static {v3, p1}, Lorg/bouncycastle/crypto/tls/l0;->x0(ILjava/io/OutputStream;)V

    :goto_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2, p1}, Lorg/bouncycastle/crypto/tls/l0;->p0([BLjava/io/OutputStream;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public new()[Landroid/support/v4/rg;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/break;->do()[Landroid/support/v4/rg;

    move-result-object v0

    return-object v0
.end method

.method public try()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/break;->do:[Landroid/support/v4/rg;

    array-length v0, v0

    return v0
.end method
