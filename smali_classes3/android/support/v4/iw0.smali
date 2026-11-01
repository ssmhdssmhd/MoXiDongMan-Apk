.class public Landroid/support/v4/iw0;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private final do:Landroid/support/v4/ta;

.field private final if:Lorg/bouncycastle/asn1/super;


# direct methods
.method public constructor <init>(Landroid/support/v4/ta;Lorg/bouncycastle/asn1/super;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/iw0;->do:Landroid/support/v4/ta;

    iput-object p2, p0, Landroid/support/v4/iw0;->if:Lorg/bouncycastle/asn1/super;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/ta;->case(Ljava/lang/Object;)Landroid/support/v4/ta;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/iw0;->do:Landroid/support/v4/ta;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/iw0;->if:Lorg/bouncycastle/asn1/super;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "incorrect sequence size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static try(Ljava/lang/Object;)Landroid/support/v4/iw0;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/iw0;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/iw0;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/iw0;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/iw0;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public case()Landroid/support/v4/ta;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/iw0;->do:Landroid/support/v4/ta;

    return-object v0
.end method

.method public new()[Landroid/support/v4/ta;
    .locals 3

    iget-object v0, p0, Landroid/support/v4/iw0;->if:Lorg/bouncycastle/asn1/super;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    new-array v0, v0, [Landroid/support/v4/ta;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/support/v4/iw0;->if:Lorg/bouncycastle/asn1/super;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Landroid/support/v4/iw0;->if:Lorg/bouncycastle/asn1/super;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/ta;->case(Ljava/lang/Object;)Landroid/support/v4/ta;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 2

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/iw0;->do:Landroid/support/v4/ta;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/iw0;->if:Lorg/bouncycastle/asn1/super;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method
