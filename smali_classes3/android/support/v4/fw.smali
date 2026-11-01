.class public Landroid/support/v4/fw;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private do:Landroid/support/v4/zv;

.field private if:Landroid/support/v4/bw;


# direct methods
.method public constructor <init>(Landroid/support/v4/bw;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/fw;->if:Landroid/support/v4/bw;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/zv;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/fw;->do:Landroid/support/v4/zv;

    return-void
.end method

.method public static case(Ljava/lang/Object;)Landroid/support/v4/fw;
    .locals 3

    if-eqz p0, :cond_4

    instance-of v0, p0, Landroid/support/v4/fw;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    :try_start_0
    check-cast p0, [B

    invoke-static {p0}, Lorg/bouncycastle/asn1/final;->else([B)Lorg/bouncycastle/asn1/final;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/fw;->case(Ljava/lang/Object;)Landroid/support/v4/fw;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to construct sequence from byte[]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    instance-of v0, p0, Lorg/bouncycastle/asn1/super;

    if-eqz v0, :cond_2

    invoke-static {p0}, Landroid/support/v4/zv;->goto(Ljava/lang/Object;)Landroid/support/v4/zv;

    move-result-object p0

    new-instance v0, Landroid/support/v4/fw;

    invoke-direct {v0, p0}, Landroid/support/v4/fw;-><init>(Landroid/support/v4/zv;)V

    return-object v0

    :cond_2
    instance-of v0, p0, Lorg/bouncycastle/asn1/import;

    if-eqz v0, :cond_3

    invoke-static {p0}, Lorg/bouncycastle/asn1/import;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/import;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/support/v4/bw;->try(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/bw;

    move-result-object p0

    new-instance v0, Landroid/support/v4/fw;

    invoke-direct {v0, p0}, Landroid/support/v4/fw;-><init>(Landroid/support/v4/bw;)V

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t convert from object to DVCSResponse: "

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

    :cond_4
    :goto_0
    check-cast p0, Landroid/support/v4/fw;

    return-object p0
.end method

.method public static else(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/fw;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/super;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/fw;->case(Ljava/lang/Object;)Landroid/support/v4/fw;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public new()Landroid/support/v4/zv;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/fw;->do:Landroid/support/v4/zv;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 3

    iget-object v0, p0, Landroid/support/v4/fw;->do:Landroid/support/v4/zv;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/zv;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/u;

    iget-object v1, p0, Landroid/support/v4/fw;->if:Landroid/support/v4/bw;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroid/support/v4/fw;->do:Landroid/support/v4/zv;

    const-string v1, "}\n"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DVCSResponse {\ndvCertInfo: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v4/fw;->do:Landroid/support/v4/zv;

    invoke-virtual {v2}, Landroid/support/v4/zv;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DVCSResponse {\ndvErrorNote: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v4/fw;->if:Landroid/support/v4/bw;

    invoke-virtual {v2}, Landroid/support/v4/bw;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public try()Landroid/support/v4/bw;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/fw;->if:Landroid/support/v4/bw;

    return-object v0
.end method
