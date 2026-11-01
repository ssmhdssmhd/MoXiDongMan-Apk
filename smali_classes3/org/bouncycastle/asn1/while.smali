.class public Lorg/bouncycastle/asn1/while;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final do:Ljava/io/InputStream;

.field private final for:[[B

.field private final if:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-static {p1}, Lorg/bouncycastle/asn1/m0;->for(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/while;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/while;->do:Ljava/io/InputStream;

    iput p2, p0, Lorg/bouncycastle/asn1/while;->if:I

    const/16 p1, 0xb

    new-array p1, p1, [[B

    iput-object p1, p0, Lorg/bouncycastle/asn1/while;->for:[[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p1, p1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/asn1/while;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method private case(Z)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/while;->do:Ljava/io/InputStream;

    instance-of v1, v0, Lorg/bouncycastle/asn1/i0;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/bouncycastle/asn1/i0;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/i0;->new(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public do(ZI)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/while;->do:Ljava/io/InputStream;

    instance-of v1, v0, Lorg/bouncycastle/asn1/i0;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lorg/bouncycastle/asn1/while;->if(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "indefinite-length primitive encoding encountered"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/16 v1, 0x11

    const/16 v2, 0x10

    const/4 v3, 0x4

    if-eqz p1, :cond_4

    if-eq p2, v3, :cond_3

    if-eq p2, v2, :cond_2

    if-ne p2, v1, :cond_5

    new-instance p1, Lorg/bouncycastle/asn1/r;

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/r;-><init>(Lorg/bouncycastle/asn1/while;)V

    return-object p1

    :cond_2
    new-instance p1, Lorg/bouncycastle/asn1/p;

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/p;-><init>(Lorg/bouncycastle/asn1/while;)V

    return-object p1

    :cond_3
    new-instance p1, Lorg/bouncycastle/asn1/extends;

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/extends;-><init>(Lorg/bouncycastle/asn1/while;)V

    return-object p1

    :cond_4
    if-eq p2, v3, :cond_8

    if-eq p2, v2, :cond_7

    if-eq p2, v1, :cond_6

    :cond_5
    new-instance p1, Landroid/support/v4/native;

    const-string p2, "implicit tagging not implemented"

    invoke-direct {p1, p2}, Landroid/support/v4/native;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Landroid/support/v4/native;

    const-string p2, "sequences must use constructed encoding (see X.690 8.9.1/8.10.1)"

    invoke-direct {p1, p2}, Landroid/support/v4/native;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Landroid/support/v4/native;

    const-string p2, "sets must use constructed encoding (see X.690 8.11.1/8.12.1)"

    invoke-direct {p1, p2}, Landroid/support/v4/native;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Lorg/bouncycastle/asn1/k;

    check-cast v0, Lorg/bouncycastle/asn1/h0;

    invoke-direct {p1, v0}, Lorg/bouncycastle/asn1/k;-><init>(Lorg/bouncycastle/asn1/h0;)V

    return-object p1
.end method

.method public for()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/while;->do:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/bouncycastle/asn1/while;->case(Z)V

    iget-object v2, p0, Lorg/bouncycastle/asn1/while;->do:Ljava/io/InputStream;

    invoke-static {v2, v0}, Lorg/bouncycastle/asn1/else;->catch(Ljava/io/InputStream;I)I

    move-result v2

    and-int/lit8 v3, v0, 0x20

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    iget-object v3, p0, Lorg/bouncycastle/asn1/while;->do:Ljava/io/InputStream;

    iget v5, p0, Lorg/bouncycastle/asn1/while;->if:I

    invoke-static {v3, v5}, Lorg/bouncycastle/asn1/else;->this(Ljava/io/InputStream;I)I

    move-result v3

    if-gez v3, :cond_5

    if-eqz v1, :cond_4

    new-instance v1, Lorg/bouncycastle/asn1/i0;

    iget-object v3, p0, Lorg/bouncycastle/asn1/while;->do:Ljava/io/InputStream;

    iget v5, p0, Lorg/bouncycastle/asn1/while;->if:I

    invoke-direct {v1, v3, v5}, Lorg/bouncycastle/asn1/i0;-><init>(Ljava/io/InputStream;I)V

    new-instance v3, Lorg/bouncycastle/asn1/while;

    iget v5, p0, Lorg/bouncycastle/asn1/while;->if:I

    invoke-direct {v3, v1, v5}, Lorg/bouncycastle/asn1/while;-><init>(Ljava/io/InputStream;I)V

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    new-instance v0, Lorg/bouncycastle/asn1/return;

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/asn1/return;-><init>(ILorg/bouncycastle/asn1/while;)V

    return-object v0

    :cond_2
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    new-instance v0, Lorg/bouncycastle/asn1/interface;

    invoke-direct {v0, v4, v2, v3}, Lorg/bouncycastle/asn1/interface;-><init>(ZILorg/bouncycastle/asn1/while;)V

    return-object v0

    :cond_3
    invoke-virtual {v3, v2}, Lorg/bouncycastle/asn1/while;->if(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "indefinite-length primitive encoding encountered"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v4, Lorg/bouncycastle/asn1/h0;

    iget-object v5, p0, Lorg/bouncycastle/asn1/while;->do:Ljava/io/InputStream;

    invoke-direct {v4, v5, v3}, Lorg/bouncycastle/asn1/h0;-><init>(Ljava/io/InputStream;I)V

    and-int/lit8 v3, v0, 0x40

    if-eqz v3, :cond_6

    new-instance v0, Lorg/bouncycastle/asn1/z;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/h0;->for()[B

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/asn1/z;-><init>(ZI[B)V

    return-object v0

    :cond_6
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    new-instance v0, Lorg/bouncycastle/asn1/interface;

    new-instance v3, Lorg/bouncycastle/asn1/while;

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/while;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/asn1/interface;-><init>(ZILorg/bouncycastle/asn1/while;)V

    return-object v0

    :cond_7
    const/4 v0, 0x4

    if-eqz v1, :cond_c

    if-eq v2, v0, :cond_b

    const/16 v0, 0x8

    if-eq v2, v0, :cond_a

    const/16 v0, 0x10

    if-eq v2, v0, :cond_9

    const/16 v0, 0x11

    if-ne v2, v0, :cond_8

    new-instance v0, Lorg/bouncycastle/asn1/r;

    new-instance v1, Lorg/bouncycastle/asn1/while;

    invoke-direct {v1, v4}, Lorg/bouncycastle/asn1/while;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/r;-><init>(Lorg/bouncycastle/asn1/while;)V

    return-object v0

    :cond_8
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown tag "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " encountered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Lorg/bouncycastle/asn1/p;

    new-instance v1, Lorg/bouncycastle/asn1/while;

    invoke-direct {v1, v4}, Lorg/bouncycastle/asn1/while;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/p;-><init>(Lorg/bouncycastle/asn1/while;)V

    return-object v0

    :cond_a
    new-instance v0, Lorg/bouncycastle/asn1/a;

    new-instance v1, Lorg/bouncycastle/asn1/while;

    invoke-direct {v1, v4}, Lorg/bouncycastle/asn1/while;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/a;-><init>(Lorg/bouncycastle/asn1/while;)V

    return-object v0

    :cond_b
    new-instance v0, Lorg/bouncycastle/asn1/extends;

    new-instance v1, Lorg/bouncycastle/asn1/while;

    invoke-direct {v1, v4}, Lorg/bouncycastle/asn1/while;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/extends;-><init>(Lorg/bouncycastle/asn1/while;)V

    return-object v0

    :cond_c
    if-eq v2, v0, :cond_d

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/while;->for:[[B

    invoke-static {v2, v4, v0}, Lorg/bouncycastle/asn1/else;->new(ILorg/bouncycastle/asn1/h0;[[B)Lorg/bouncycastle/asn1/final;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/support/v4/native;

    const-string v2, "corrupted stream detected"

    invoke-direct {v1, v2, v0}, Landroid/support/v4/native;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_d
    new-instance v0, Lorg/bouncycastle/asn1/k;

    invoke-direct {v0, v4}, Lorg/bouncycastle/asn1/k;-><init>(Lorg/bouncycastle/asn1/h0;)V

    return-object v0
.end method

.method public if(I)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x10

    if-eq p1, v0, :cond_1

    const/16 v0, 0x11

    if-ne p1, v0, :cond_0

    new-instance p1, Lorg/bouncycastle/asn1/strictfp;

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/strictfp;-><init>(Lorg/bouncycastle/asn1/while;)V

    return-object p1

    :cond_0
    new-instance v0, Landroid/support/v4/native;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown BER object encountered: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/support/v4/native;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Lorg/bouncycastle/asn1/abstract;

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/abstract;-><init>(Lorg/bouncycastle/asn1/while;)V

    return-object p1

    :cond_2
    new-instance p1, Lorg/bouncycastle/asn1/a;

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/a;-><init>(Lorg/bouncycastle/asn1/while;)V

    return-object p1

    :cond_3
    new-instance p1, Lorg/bouncycastle/asn1/extends;

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/extends;-><init>(Lorg/bouncycastle/asn1/while;)V

    return-object p1
.end method

.method public new(ZI)Lorg/bouncycastle/asn1/final;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/asn1/while;->do:Ljava/io/InputStream;

    check-cast p1, Lorg/bouncycastle/asn1/h0;

    new-instance v1, Lorg/bouncycastle/asn1/u;

    new-instance v2, Lorg/bouncycastle/asn1/j;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/h0;->for()[B

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    invoke-direct {v1, v0, p2, v2}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/while;->try()Landroid/support/v4/import;

    move-result-object p1

    iget-object v1, p0, Lorg/bouncycastle/asn1/while;->do:Ljava/io/InputStream;

    instance-of v1, v1, Lorg/bouncycastle/asn1/i0;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/support/v4/import;->new()I

    move-result v1

    if-ne v1, v2, :cond_1

    new-instance v1, Lorg/bouncycastle/asn1/volatile;

    invoke-virtual {p1, v0}, Landroid/support/v4/import;->for(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-direct {v1, v2, p2, p1}, Lorg/bouncycastle/asn1/volatile;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/volatile;

    invoke-static {p1}, Lorg/bouncycastle/asn1/static;->do(Landroid/support/v4/import;)Lorg/bouncycastle/asn1/package;

    move-result-object p1

    invoke-direct {v1, v0, p2, p1}, Lorg/bouncycastle/asn1/volatile;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    :goto_0
    return-object v1

    :cond_2
    invoke-virtual {p1}, Landroid/support/v4/import;->new()I

    move-result v1

    if-ne v1, v2, :cond_3

    new-instance v1, Lorg/bouncycastle/asn1/u;

    invoke-virtual {p1, v0}, Landroid/support/v4/import;->for(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-direct {v1, v2, p2, p1}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_1

    :cond_3
    new-instance v1, Lorg/bouncycastle/asn1/u;

    invoke-static {p1}, Lorg/bouncycastle/asn1/b;->do(Landroid/support/v4/import;)Lorg/bouncycastle/asn1/super;

    move-result-object p1

    invoke-direct {v1, v0, p2, p1}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    :goto_1
    return-object v1
.end method

.method public try()Landroid/support/v4/import;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/while;->for()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, v1, Lorg/bouncycastle/asn1/InMemoryRepresentable;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/bouncycastle/asn1/InMemoryRepresentable;

    invoke-interface {v1}, Lorg/bouncycastle/asn1/InMemoryRepresentable;->getLoadedObject()Lorg/bouncycastle/asn1/final;

    move-result-object v1

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method
