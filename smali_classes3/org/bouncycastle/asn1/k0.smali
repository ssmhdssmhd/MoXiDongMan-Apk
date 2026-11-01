.class Lorg/bouncycastle/asn1/k0;
.super Lorg/bouncycastle/asn1/super;
.source "SourceFile"


# instance fields
.field private if:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/asn1/super;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/k0;->if:[B

    return-void
.end method

.method private import()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/j0;

    iget-object v1, p0, Lorg/bouncycastle/asn1/k0;->if:[B

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/j0;-><init>([B)V

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/asn1/super;->do:Ljava/util/Vector;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/k0;->if:[B

    return-void
.end method


# virtual methods
.method public break()Lorg/bouncycastle/asn1/final;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/k0;->if:[B

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/k0;->import()V

    :cond_0
    invoke-super {p0}, Lorg/bouncycastle/asn1/super;->break()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    return-object v0
.end method

.method public case()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/k0;->if:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/m0;->do(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/bouncycastle/asn1/k0;->if:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-super {p0}, Lorg/bouncycastle/asn1/super;->break()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/final;->case()I

    move-result v0

    return v0
.end method

.method public declared-synchronized final(I)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/k0;->if:[B

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/k0;->import()V

    :cond_0
    invoke-super {p0, p1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized size()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/k0;->if:[B

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/k0;->import()V

    :cond_0
    invoke-super {p0}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized super()Ljava/util/Enumeration;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/k0;->if:[B

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/bouncycastle/asn1/super;->super()Ljava/util/Enumeration;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v1, Lorg/bouncycastle/asn1/j0;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/j0;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public this()Lorg/bouncycastle/asn1/final;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/k0;->if:[B

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/k0;->import()V

    :cond_0
    invoke-super {p0}, Lorg/bouncycastle/asn1/super;->this()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    return-object v0
.end method

.method public try(Lorg/bouncycastle/asn1/const;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/k0;->if:[B

    if-eqz v0, :cond_0

    const/16 v1, 0x30

    invoke-virtual {p1, v1, v0}, Lorg/bouncycastle/asn1/const;->this(I[B)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lorg/bouncycastle/asn1/super;->break()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/final;->try(Lorg/bouncycastle/asn1/const;)V

    :goto_0
    return-void
.end method
