.class public Landroid/support/v4/v51;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final for:I = 0x0

.field public static final new:I = 0x1


# instance fields
.field private final do:I

.field private final if:Lorg/bouncycastle/asn1/break;


# direct methods
.method public constructor <init>(Landroid/support/v4/yc1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/v51;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/zx1;)V
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/u;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/asn1/u;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {p0, v0}, Landroid/support/v4/v51;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    instance-of v0, p1, Lorg/bouncycastle/asn1/super;

    if-nez v0, :cond_2

    instance-of v0, p1, Landroid/support/v4/yc1;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/asn1/import;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/v51;->do:I

    check-cast p1, Lorg/bouncycastle/asn1/import;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/import;->const()Lorg/bouncycastle/asn1/final;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/zx1;->try(Ljava/lang/Object;)Landroid/support/v4/zx1;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown check object in integrity check."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/v51;->do:I

    invoke-static {p1}, Landroid/support/v4/yc1;->new(Ljava/lang/Object;)Landroid/support/v4/yc1;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Landroid/support/v4/v51;->if:Lorg/bouncycastle/asn1/break;

    return-void
.end method

.method public static new(Ljava/lang/Object;)Landroid/support/v4/v51;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/v51;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/v51;

    return-object p0

    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v0, Landroid/support/v4/v51;

    check-cast p0, [B

    invoke-static {p0}, Lorg/bouncycastle/asn1/final;->else([B)Lorg/bouncycastle/asn1/final;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/v51;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unable to parse integrity check details."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-eqz p0, :cond_2

    new-instance v0, Landroid/support/v4/v51;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, p0}, Landroid/support/v4/v51;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public case()I
    .locals 1

    iget v0, p0, Landroid/support/v4/v51;->do:I

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 3

    iget-object v0, p0, Landroid/support/v4/v51;->if:Lorg/bouncycastle/asn1/break;

    instance-of v1, v0, Landroid/support/v4/zx1;

    if-eqz v1, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/u;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v4/v51;->if:Lorg/bouncycastle/asn1/break;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/u;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/break;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    return-object v0
.end method

.method public try()Lorg/bouncycastle/asn1/break;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/v51;->if:Lorg/bouncycastle/asn1/break;

    return-object v0
.end method
