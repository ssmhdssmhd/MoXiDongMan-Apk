.class public Landroid/support/v4/k42;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private final do:Landroid/support/v4/ta;

.field private final for:Lorg/bouncycastle/asn1/throw;

.field private final if:Lorg/bouncycastle/asn1/catch;


# direct methods
.method public constructor <init>(Landroid/support/v4/ta;Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/throw;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/k42;->do:Landroid/support/v4/ta;

    iput-object p2, p0, Landroid/support/v4/k42;->if:Lorg/bouncycastle/asn1/catch;

    iput-object p3, p0, Landroid/support/v4/k42;->for:Lorg/bouncycastle/asn1/throw;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/ta;->case(Ljava/lang/Object;)Landroid/support/v4/ta;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/k42;->do:Landroid/support/v4/ta;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/catch;->throw(Ljava/lang/Object;)Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/k42;->if:Lorg/bouncycastle/asn1/catch;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/throw;->class(Ljava/lang/Object;)Lorg/bouncycastle/asn1/throw;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/k42;->for:Lorg/bouncycastle/asn1/throw;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "incorrect sequence size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static else(Ljava/lang/Object;)Landroid/support/v4/k42;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/k42;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/k42;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/k42;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/k42;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public case()Landroid/support/v4/ta;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/k42;->do:Landroid/support/v4/ta;

    return-object v0
.end method

.method public new()Lorg/bouncycastle/asn1/catch;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/k42;->if:Lorg/bouncycastle/asn1/catch;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 4

    new-instance v0, Lorg/bouncycastle/asn1/n;

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/bouncycastle/asn1/ASN1Encodable;

    iget-object v2, p0, Landroid/support/v4/k42;->do:Landroid/support/v4/ta;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/support/v4/k42;->if:Lorg/bouncycastle/asn1/catch;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/support/v4/k42;->for:Lorg/bouncycastle/asn1/throw;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/n;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public try()Lorg/bouncycastle/asn1/throw;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/k42;->for:Lorg/bouncycastle/asn1/throw;

    return-object v0
.end method
