.class public Landroid/support/v4/k51;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# static fields
.field public static final case:I = 0x5

.field public static final else:I = 0x6

.field public static final for:I = 0x1

.field public static final if:I = 0x0

.field public static final new:I = 0x2

.field public static final try:I = 0x3


# instance fields
.field private do:Lorg/bouncycastle/asn1/new;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/new;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/new;-><init>(I)V

    invoke-direct {p0, v0}, Landroid/support/v4/k51;-><init>(Lorg/bouncycastle/asn1/new;)V

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/new;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/k51;->do:Lorg/bouncycastle/asn1/new;

    return-void
.end method

.method public static new(Ljava/lang/Object;)Landroid/support/v4/k51;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/k51;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/k51;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/k51;

    invoke-static {p0}, Lorg/bouncycastle/asn1/new;->class(Ljava/lang/Object;)Lorg/bouncycastle/asn1/new;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/k51;-><init>(Lorg/bouncycastle/asn1/new;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/k51;->do:Lorg/bouncycastle/asn1/new;

    return-object v0
.end method

.method public try()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/k51;->do:Lorg/bouncycastle/asn1/new;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/new;->final()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
