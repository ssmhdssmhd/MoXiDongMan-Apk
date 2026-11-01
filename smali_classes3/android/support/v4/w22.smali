.class public Landroid/support/v4/w22;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private do:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/class;)V
    .locals 0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/class;->const()[B

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/v4/w22;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-static {p1}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/w22;->do:[B

    return-void
.end method

.method public static case(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/w22;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/class;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/class;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/w22;->try(Ljava/lang/Object;)Landroid/support/v4/w22;

    move-result-object p0

    return-object p0
.end method

.method public static new(Landroid/support/v4/y90;)Landroid/support/v4/w22;
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/x509/if;->try:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {p0, v0}, Landroid/support/v4/y90;->this(Lorg/bouncycastle/asn1/catch;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/w22;->try(Ljava/lang/Object;)Landroid/support/v4/w22;

    move-result-object p0

    return-object p0
.end method

.method public static try(Ljava/lang/Object;)Landroid/support/v4/w22;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/w22;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/w22;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/w22;

    invoke-static {p0}, Lorg/bouncycastle/asn1/class;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/class;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/w22;-><init>(Lorg/bouncycastle/asn1/class;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public else()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/w22;->do:[B

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/j;

    invoke-virtual {p0}, Landroid/support/v4/w22;->else()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    return-object v0
.end method
