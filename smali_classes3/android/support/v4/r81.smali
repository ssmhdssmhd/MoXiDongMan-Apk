.class public Landroid/support/v4/r81;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private do:Lorg/bouncycastle/asn1/class;

.field private if:Landroid/support/v4/s81;


# direct methods
.method public constructor <init>(Landroid/support/v4/s81;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/r81;->if:Landroid/support/v4/s81;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/class;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/r81;->do:Lorg/bouncycastle/asn1/class;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/j;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    iput-object v0, p0, Landroid/support/v4/r81;->do:Lorg/bouncycastle/asn1/class;

    return-void
.end method

.method public static case(Ljava/lang/Object;)Landroid/support/v4/r81;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/r81;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/r81;

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/class;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v4/r81;

    check-cast p0, Lorg/bouncycastle/asn1/class;

    invoke-direct {v0, p0}, Landroid/support/v4/r81;-><init>(Lorg/bouncycastle/asn1/class;)V

    return-object v0

    :cond_1
    new-instance v0, Landroid/support/v4/r81;

    invoke-static {p0}, Landroid/support/v4/s81;->case(Ljava/lang/Object;)Landroid/support/v4/s81;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/r81;-><init>(Landroid/support/v4/s81;)V

    return-object v0
.end method


# virtual methods
.method public new()Landroid/support/v4/b1;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/r81;->if:Landroid/support/v4/s81;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v4/b1;

    sget-object v1, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lorg/bouncycastle/asn1/catch;

    invoke-direct {v0, v1}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;)V

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/s81;->new()Landroid/support/v4/b1;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/r81;->if:Landroid/support/v4/s81;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/r81;->do:Lorg/bouncycastle/asn1/class;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/s81;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    return-object v0
.end method

.method public try()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/r81;->if:Landroid/support/v4/s81;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/r81;->do:Lorg/bouncycastle/asn1/class;

    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/class;->const()[B

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/s81;->try()Lorg/bouncycastle/asn1/class;

    move-result-object v0

    goto :goto_0
.end method
