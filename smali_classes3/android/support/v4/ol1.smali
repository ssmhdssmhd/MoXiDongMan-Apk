.class public Landroid/support/v4/ol1;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field public do:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(Landroid/support/v4/kr0;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/ol1;->do:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/mq0;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/u;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, p1}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Landroid/support/v4/ol1;->do:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/tc1;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/u;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, p1}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Landroid/support/v4/ol1;->do:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/vq0;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/u;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Landroid/support/v4/ol1;->do:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/x81;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/u;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, p1}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Landroid/support/v4/ol1;->do:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/final;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/ol1;->do:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method private case(Lorg/bouncycastle/asn1/import;)Landroid/support/v4/mq0;
    .locals 1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/import;->final()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/mq0;->case(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/mq0;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static try(Ljava/lang/Object;)Landroid/support/v4/ol1;
    .locals 3

    if-eqz p0, :cond_3

    instance-of v0, p0, Landroid/support/v4/ol1;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/super;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v4/ol1;

    check-cast p0, Lorg/bouncycastle/asn1/super;

    invoke-direct {v0, p0}, Landroid/support/v4/ol1;-><init>(Lorg/bouncycastle/asn1/final;)V

    return-object v0

    :cond_1
    instance-of v0, p0, Lorg/bouncycastle/asn1/import;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/support/v4/ol1;

    check-cast p0, Lorg/bouncycastle/asn1/import;

    invoke-direct {v0, p0}, Landroid/support/v4/ol1;-><init>(Lorg/bouncycastle/asn1/final;)V

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in factory: "

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
    check-cast p0, Landroid/support/v4/ol1;

    return-object p0
.end method


# virtual methods
.method public else()Lorg/bouncycastle/asn1/goto;
    .locals 4

    iget-object v0, p0, Landroid/support/v4/ol1;->do:Lorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v1, v0, Lorg/bouncycastle/asn1/import;

    if-eqz v1, :cond_4

    check-cast v0, Lorg/bouncycastle/asn1/import;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v0, 0x4

    if-ne v1, v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/goto;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unknown tag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v0, v3}, Landroid/support/v4/tc1;->case(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/tc1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/tc1;->this()Lorg/bouncycastle/asn1/goto;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-direct {p0, v0}, Landroid/support/v4/ol1;->case(Lorg/bouncycastle/asn1/import;)Landroid/support/v4/mq0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/mq0;->this()Lorg/bouncycastle/asn1/goto;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-static {v0, v3}, Landroid/support/v4/vq0;->try(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/vq0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/vq0;->break()Lorg/bouncycastle/asn1/goto;

    move-result-object v0

    return-object v0

    :cond_4
    invoke-static {v0}, Landroid/support/v4/kr0;->try(Ljava/lang/Object;)Landroid/support/v4/kr0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/kr0;->goto()Lorg/bouncycastle/asn1/goto;

    move-result-object v0

    return-object v0
.end method

.method public goto()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ol1;->do:Lorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lorg/bouncycastle/asn1/import;

    return v0
.end method

.method public new()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 4

    iget-object v0, p0, Landroid/support/v4/ol1;->do:Lorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v1, v0, Lorg/bouncycastle/asn1/import;

    if-eqz v1, :cond_4

    check-cast v0, Lorg/bouncycastle/asn1/import;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-static {v0, v3}, Landroid/support/v4/x81;->try(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/x81;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unknown tag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v0, v3}, Landroid/support/v4/tc1;->case(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/tc1;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-direct {p0, v0}, Landroid/support/v4/ol1;->case(Lorg/bouncycastle/asn1/import;)Landroid/support/v4/mq0;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-static {v0, v3}, Landroid/support/v4/vq0;->try(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/vq0;

    move-result-object v0

    return-object v0

    :cond_4
    invoke-static {v0}, Landroid/support/v4/kr0;->try(Ljava/lang/Object;)Landroid/support/v4/kr0;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ol1;->do:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    return-object v0
.end method
