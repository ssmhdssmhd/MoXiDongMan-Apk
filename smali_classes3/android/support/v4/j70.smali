.class public Landroid/support/v4/j70;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private do:Lorg/bouncycastle/asn1/goto;

.field private for:Lorg/bouncycastle/asn1/throw;

.field private if:Landroid/support/v4/h70;


# direct methods
.method public constructor <init>(Landroid/support/v4/h70;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/j70;-><init>(Landroid/support/v4/h70;Lorg/bouncycastle/asn1/throw;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/h70;Lorg/bouncycastle/asn1/throw;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/goto;

    if-nez p2, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x2

    :goto_0
    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    iput-object v0, p0, Landroid/support/v4/j70;->do:Lorg/bouncycastle/asn1/goto;

    iput-object p1, p0, Landroid/support/v4/j70;->if:Landroid/support/v4/h70;

    iput-object p2, p0, Landroid/support/v4/j70;->for:Lorg/bouncycastle/asn1/throw;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/goto;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/goto;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/j70;->do:Lorg/bouncycastle/asn1/goto;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/h70;->else(Ljava/lang/Object;)Landroid/support/v4/h70;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/j70;->if:Landroid/support/v4/h70;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/import;

    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/throw;->const(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/throw;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/j70;->for:Lorg/bouncycastle/asn1/throw;

    :cond_0
    return-void
.end method

.method public static try(Ljava/lang/Object;)Landroid/support/v4/j70;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/j70;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/j70;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/j70;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/j70;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public case()Lorg/bouncycastle/asn1/throw;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/j70;->for:Lorg/bouncycastle/asn1/throw;

    return-object v0
.end method

.method public else()Lorg/bouncycastle/asn1/goto;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/j70;->do:Lorg/bouncycastle/asn1/goto;

    return-object v0
.end method

.method public new()Landroid/support/v4/h70;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/j70;->if:Landroid/support/v4/h70;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 5

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/j70;->do:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/j70;->if:Landroid/support/v4/h70;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/j70;->for:Lorg/bouncycastle/asn1/throw;

    if-eqz v1, :cond_0

    new-instance v2, Lorg/bouncycastle/asn1/volatile;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v1}, Lorg/bouncycastle/asn1/volatile;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/package;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/package;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method
