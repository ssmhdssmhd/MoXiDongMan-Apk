.class public Landroid/support/v4/eh;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private do:Landroid/support/v4/b1;

.field private for:Lorg/bouncycastle/asn1/class;

.field private if:Lorg/bouncycastle/asn1/class;


# direct methods
.method public constructor <init>(Landroid/support/v4/b1;[B[B)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/eh;->do:Landroid/support/v4/b1;

    new-instance p1, Lorg/bouncycastle/asn1/j;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    iput-object p1, p0, Landroid/support/v4/eh;->if:Lorg/bouncycastle/asn1/class;

    new-instance p1, Lorg/bouncycastle/asn1/j;

    invoke-direct {p1, p3}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    iput-object p1, p0, Landroid/support/v4/eh;->for:Lorg/bouncycastle/asn1/class;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/b1;->try(Ljava/lang/Object;)Landroid/support/v4/b1;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/eh;->do:Landroid/support/v4/b1;

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/class;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/class;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/eh;->if:Lorg/bouncycastle/asn1/class;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/class;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/class;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/eh;->for:Lorg/bouncycastle/asn1/class;

    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/support/v4/eh;-><init>(Landroid/support/v4/b1;[B[B)V

    return-void
.end method

.method public static case(Ljava/lang/Object;)Landroid/support/v4/eh;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/eh;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/eh;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/eh;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/eh;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private new(Landroid/support/v4/import;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public else()Landroid/support/v4/b1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/eh;->do:Landroid/support/v4/b1;

    return-object v0
.end method

.method public goto()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/eh;->if:Lorg/bouncycastle/asn1/class;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/class;->const()[B

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 2

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/eh;->do:Landroid/support/v4/b1;

    invoke-direct {p0, v0, v1}, Landroid/support/v4/eh;->new(Landroid/support/v4/import;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/eh;->if:Lorg/bouncycastle/asn1/class;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/eh;->for:Lorg/bouncycastle/asn1/class;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method

.method public try()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/eh;->for:Lorg/bouncycastle/asn1/class;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/class;->const()[B

    move-result-object v0

    return-object v0
.end method
