.class public Landroid/support/v4/s42;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final for:I = 0x0

.field public static final new:I = 0x1


# instance fields
.field private do:Landroid/support/v4/tg0;

.field private if:Landroid/support/v4/tg0;


# direct methods
.method public constructor <init>(ILandroid/support/v4/tg0;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/u;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/asn1/u;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {p0, v0}, Landroid/support/v4/s42;-><init>(Lorg/bouncycastle/asn1/import;)V

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/import;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    invoke-static {p1, v1}, Landroid/support/v4/tg0;->case(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/tg0;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/s42;->if:Landroid/support/v4/tg0;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1, v1}, Landroid/support/v4/tg0;->case(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/tg0;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/s42;->do:Landroid/support/v4/tg0;

    :goto_0
    return-void
.end method

.method public static new(Ljava/lang/Object;)Landroid/support/v4/s42;
    .locals 3

    if-eqz p0, :cond_2

    instance-of v0, p0, Landroid/support/v4/s42;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/import;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v4/s42;

    check-cast p0, Lorg/bouncycastle/asn1/import;

    invoke-direct {v0, p0}, Landroid/support/v4/s42;-><init>(Lorg/bouncycastle/asn1/import;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    check-cast p0, Landroid/support/v4/s42;

    return-object p0
.end method


# virtual methods
.method public case()Landroid/support/v4/tg0;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/s42;->do:Landroid/support/v4/tg0;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 4

    iget-object v0, p0, Landroid/support/v4/s42;->do:Landroid/support/v4/tg0;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/u;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/v4/s42;->do:Landroid/support/v4/tg0;

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/u;

    iget-object v2, p0, Landroid/support/v4/s42;->if:Landroid/support/v4/tg0;

    invoke-direct {v0, v1, v1, v2}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public try()Landroid/support/v4/tg0;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/s42;->if:Landroid/support/v4/tg0;

    return-object v0
.end method
