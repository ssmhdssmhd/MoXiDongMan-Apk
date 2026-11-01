.class public Landroid/support/v4/iw;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private do:Lorg/bouncycastle/asn1/class;

.field private for:Lorg/bouncycastle/asn1/super;

.field private if:Landroid/support/v4/v00;


# direct methods
.method public constructor <init>(Landroid/support/v4/u42;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/n;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/n;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Landroid/support/v4/iw;->for:Lorg/bouncycastle/asn1/super;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/v00;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/iw;->if:Landroid/support/v4/v00;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/class;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/iw;->do:Lorg/bouncycastle/asn1/class;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/iw;->for:Lorg/bouncycastle/asn1/super;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/j;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    iput-object v0, p0, Landroid/support/v4/iw;->do:Lorg/bouncycastle/asn1/class;

    return-void
.end method

.method public constructor <init>([Landroid/support/v4/u42;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/n;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/n;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Landroid/support/v4/iw;->for:Lorg/bouncycastle/asn1/super;

    return-void
.end method

.method public static case(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/iw;
    .locals 0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/import;->const()Lorg/bouncycastle/asn1/final;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/iw;->try(Ljava/lang/Object;)Landroid/support/v4/iw;

    move-result-object p0

    return-object p0
.end method

.method public static try(Ljava/lang/Object;)Landroid/support/v4/iw;
    .locals 3

    instance-of v0, p0, Landroid/support/v4/iw;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/iw;

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/class;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v4/iw;

    check-cast p0, Lorg/bouncycastle/asn1/class;

    invoke-direct {v0, p0}, Landroid/support/v4/iw;-><init>(Lorg/bouncycastle/asn1/class;)V

    return-object v0

    :cond_1
    instance-of v0, p0, Lorg/bouncycastle/asn1/super;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/support/v4/iw;

    invoke-static {p0}, Landroid/support/v4/v00;->case(Ljava/lang/Object;)Landroid/support/v4/v00;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/iw;-><init>(Landroid/support/v4/v00;)V

    return-object v0

    :cond_2
    instance-of v0, p0, Lorg/bouncycastle/asn1/import;

    if-eqz v0, :cond_3

    new-instance v0, Landroid/support/v4/iw;

    check-cast p0, Lorg/bouncycastle/asn1/import;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lorg/bouncycastle/asn1/super;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/iw;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown object submitted to getInstance: "

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
.end method


# virtual methods
.method public else()Lorg/bouncycastle/asn1/class;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/iw;->do:Lorg/bouncycastle/asn1/class;

    return-object v0
.end method

.method public goto()Landroid/support/v4/v00;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/iw;->if:Landroid/support/v4/v00;

    return-object v0
.end method

.method public new()[Landroid/support/v4/u42;
    .locals 4

    iget-object v0, p0, Landroid/support/v4/iw;->for:Lorg/bouncycastle/asn1/super;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    new-array v1, v0, [Landroid/support/v4/u42;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_1

    iget-object v3, p0, Landroid/support/v4/iw;->for:Lorg/bouncycastle/asn1/super;

    invoke-virtual {v3, v2}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/u42;->else(Ljava/lang/Object;)Landroid/support/v4/u42;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 3

    iget-object v0, p0, Landroid/support/v4/iw;->do:Lorg/bouncycastle/asn1/class;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/final;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/iw;->if:Landroid/support/v4/v00;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/v00;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Lorg/bouncycastle/asn1/u;

    iget-object v1, p0, Landroid/support/v4/iw;->for:Lorg/bouncycastle/asn1/super;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroid/support/v4/iw;->do:Lorg/bouncycastle/asn1/class;

    const-string v1, "}\n"

    const-string v2, "Data {\n"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v4/iw;->do:Lorg/bouncycastle/asn1/class;

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/iw;->if:Landroid/support/v4/v00;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v4/iw;->if:Landroid/support/v4/v00;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v4/iw;->for:Lorg/bouncycastle/asn1/super;

    goto :goto_0
.end method
