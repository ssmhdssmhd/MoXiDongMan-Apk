.class public Lorg/bouncycastle/asn1/t;
.super Lorg/bouncycastle/asn1/final;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1String;


# instance fields
.field private do:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/util/for;->class(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/t;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/final;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/t;->do:[B

    return-void
.end method

.method public static catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/t;
    .locals 3

    instance-of v0, p0, Lorg/bouncycastle/asn1/s;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/t;

    check-cast p0, Lorg/bouncycastle/asn1/s;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/s;->const()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/t;-><init>([B)V

    return-object v0

    :cond_0
    if-eqz p0, :cond_3

    instance-of v0, p0, Lorg/bouncycastle/asn1/t;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v0, Lorg/bouncycastle/asn1/t;

    check-cast p0, [B

    invoke-static {p0}, Lorg/bouncycastle/asn1/final;->else([B)Lorg/bouncycastle/asn1/final;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/s;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/s;->const()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/t;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encoding error in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    check-cast p0, Lorg/bouncycastle/asn1/t;

    return-object p0
.end method

.method public static class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/t;
    .locals 0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/import;->const()Lorg/bouncycastle/asn1/final;

    move-result-object p0

    if-nez p1, :cond_1

    instance-of p1, p0, Lorg/bouncycastle/asn1/s;

    if-nez p1, :cond_1

    instance-of p1, p0, Lorg/bouncycastle/asn1/t;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/asn1/t;

    invoke-static {p0}, Lorg/bouncycastle/asn1/class;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/class;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/class;->const()[B

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/t;-><init>([B)V

    return-object p1

    :cond_1
    :goto_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/t;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/t;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public case()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/t;->do:[B

    array-length v0, v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/m0;->do(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/bouncycastle/asn1/t;->do:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public const()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/t;->do:[B

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/t;->do:[B

    invoke-static {v0}, Lorg/bouncycastle/util/for;->for([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public goto()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/t;->do:[B

    invoke-static {v0}, Landroid/support/v4/q3;->n([B)I

    move-result v0

    return v0
.end method

.method public new(Lorg/bouncycastle/asn1/final;)Z
    .locals 1

    instance-of v0, p1, Lorg/bouncycastle/asn1/t;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/t;->do:[B

    check-cast p1, Lorg/bouncycastle/asn1/t;

    iget-object p1, p1, Lorg/bouncycastle/asn1/t;->do:[B

    invoke-static {v0, p1}, Landroid/support/v4/q3;->case([B[B)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/t;->getString()Ljava/lang/String;

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

    iget-object v0, p0, Lorg/bouncycastle/asn1/t;->do:[B

    const/16 v1, 0x14

    invoke-virtual {p1, v1, v0}, Lorg/bouncycastle/asn1/const;->this(I[B)V

    return-void
.end method
