.class public Landroid/support/v4/m70;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private final do:Landroid/support/v4/n42;

.field private final for:Landroid/support/v4/b1;

.field private final if:Landroid/support/v4/fr;

.field private final new:Landroid/support/v4/b1;

.field private final try:[B


# direct methods
.method public constructor <init>(Landroid/support/v4/n42;Landroid/support/v4/fr;Landroid/support/v4/b1;Landroid/support/v4/b1;[B)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/m70;->do:Landroid/support/v4/n42;

    iput-object p2, p0, Landroid/support/v4/m70;->if:Landroid/support/v4/fr;

    iput-object p3, p0, Landroid/support/v4/m70;->for:Landroid/support/v4/b1;

    iput-object p4, p0, Landroid/support/v4/m70;->new:Landroid/support/v4/b1;

    invoke-static {p5}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/m70;->try:[B

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/n42;->new(Ljava/lang/Object;)Landroid/support/v4/n42;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/m70;->do:Landroid/support/v4/n42;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/fr;->case(Ljava/lang/Object;)Landroid/support/v4/fr;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/m70;->if:Landroid/support/v4/fr;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/b1;->try(Ljava/lang/Object;)Landroid/support/v4/b1;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/m70;->for:Landroid/support/v4/b1;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/b1;->try(Ljava/lang/Object;)Landroid/support/v4/b1;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/m70;->new:Landroid/support/v4/b1;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/class;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/class;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/class;->const()[B

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/m70;->try:[B

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "incorrect sequence size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static try(Ljava/lang/Object;)Landroid/support/v4/m70;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/m70;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/m70;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/m70;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/m70;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public case()Landroid/support/v4/n42;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/m70;->do:Landroid/support/v4/n42;

    return-object v0
.end method

.method public else()Landroid/support/v4/b1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/m70;->for:Landroid/support/v4/b1;

    return-object v0
.end method

.method public goto()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/m70;->try:[B

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    return-object v0
.end method

.method public new()Landroid/support/v4/fr;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/m70;->if:Landroid/support/v4/fr;

    return-object v0
.end method

.method public this()Landroid/support/v4/b1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/m70;->new:Landroid/support/v4/b1;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 3

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/m70;->do:Landroid/support/v4/n42;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/m70;->if:Landroid/support/v4/fr;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/m70;->for:Landroid/support/v4/b1;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/m70;->new:Landroid/support/v4/b1;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/j;

    iget-object v2, p0, Landroid/support/v4/m70;->try:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method
