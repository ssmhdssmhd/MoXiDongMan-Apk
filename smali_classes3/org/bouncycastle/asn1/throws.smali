.class public Lorg/bouncycastle/asn1/throws;
.super Lorg/bouncycastle/asn1/class;
.source "SourceFile"


# static fields
.field private static final new:I = 0x3e8


# instance fields
.field private final for:[Lorg/bouncycastle/asn1/class;

.field private final if:I


# direct methods
.method public constructor <init>([B)V
    .locals 1

    const/16 v0, 0x3e8

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/throws;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/bouncycastle/asn1/throws;-><init>([B[Lorg/bouncycastle/asn1/class;I)V

    return-void
.end method

.method private constructor <init>([B[Lorg/bouncycastle/asn1/class;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/class;-><init>([B)V

    iput-object p2, p0, Lorg/bouncycastle/asn1/throws;->for:[Lorg/bouncycastle/asn1/class;

    iput p3, p0, Lorg/bouncycastle/asn1/throws;->if:I

    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/class;)V
    .locals 1

    const/16 v0, 0x3e8

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/throws;-><init>([Lorg/bouncycastle/asn1/class;I)V

    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/class;I)V
    .locals 1

    invoke-static {p1}, Lorg/bouncycastle/asn1/throws;->native([Lorg/bouncycastle/asn1/class;)[B

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/asn1/throws;-><init>([B[Lorg/bouncycastle/asn1/class;I)V

    return-void
.end method

.method private static native([Lorg/bouncycastle/asn1/class;)[B
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_0

    :try_start_0
    aget-object v2, p0, v1

    check-cast v2, Lorg/bouncycastle/asn1/j;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/class;->const()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception converting octets "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p0, p0, v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " found in input should only contain DEROctetString"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic super(Lorg/bouncycastle/asn1/throws;)[Lorg/bouncycastle/asn1/class;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/throws;->for:[Lorg/bouncycastle/asn1/class;

    return-object p0
.end method

.method public static throw(Lorg/bouncycastle/asn1/super;)Lorg/bouncycastle/asn1/throws;
    .locals 4

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/class;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/super;->super()Ljava/util/Enumeration;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/class;

    aput-object v3, v0, v1

    move v1, v2

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/bouncycastle/asn1/throws;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/throws;-><init>([Lorg/bouncycastle/asn1/class;)V

    return-object p0
.end method

.method private while()Ljava/util/Vector;
    .locals 7

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/asn1/class;->do:[B

    array-length v4, v3

    if-ge v2, v4, :cond_1

    iget v4, p0, Lorg/bouncycastle/asn1/throws;->if:I

    add-int v5, v2, v4

    array-length v6, v3

    if-le v5, v6, :cond_0

    array-length v4, v3

    goto :goto_1

    :cond_0
    add-int/2addr v4, v2

    :goto_1
    sub-int/2addr v4, v2

    new-array v5, v4, [B

    invoke-static {v3, v2, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v3, Lorg/bouncycastle/asn1/j;

    invoke-direct {v3, v5}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget v3, p0, Lorg/bouncycastle/asn1/throws;->if:I

    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public case()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/throws;->import()Ljava/util/Enumeration;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v2}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/final;->case()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    return v1
.end method

.method public const()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/class;->do:[B

    return-object v0
.end method

.method public goto()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public import()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/throws;->for:[Lorg/bouncycastle/asn1/class;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/throws;->while()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/throws$do;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/throws$do;-><init>(Lorg/bouncycastle/asn1/throws;)V

    return-object v0
.end method

.method public try(Lorg/bouncycastle/asn1/const;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x24

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/const;->try(I)V

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/const;->try(I)V

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/throws;->import()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/const;->const(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/const;->try(I)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/const;->try(I)V

    return-void
.end method
