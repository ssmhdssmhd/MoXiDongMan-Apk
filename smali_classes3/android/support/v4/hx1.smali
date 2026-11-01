.class public Landroid/support/v4/hx1;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# static fields
.field public static final for:Landroid/support/v4/hx1;

.field public static final if:Landroid/support/v4/hx1;

.field public static final new:Landroid/support/v4/hx1;

.field public static final try:Landroid/support/v4/hx1;


# instance fields
.field private do:Lorg/bouncycastle/asn1/new;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/support/v4/hx1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/support/v4/hx1;-><init>(I)V

    sput-object v0, Landroid/support/v4/hx1;->if:Landroid/support/v4/hx1;

    new-instance v0, Landroid/support/v4/hx1;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/support/v4/hx1;-><init>(I)V

    sput-object v0, Landroid/support/v4/hx1;->for:Landroid/support/v4/hx1;

    new-instance v0, Landroid/support/v4/hx1;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/support/v4/hx1;-><init>(I)V

    sput-object v0, Landroid/support/v4/hx1;->new:Landroid/support/v4/hx1;

    new-instance v0, Landroid/support/v4/hx1;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/support/v4/hx1;-><init>(I)V

    sput-object v0, Landroid/support/v4/hx1;->try:Landroid/support/v4/hx1;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/new;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/new;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/hx1;->do:Lorg/bouncycastle/asn1/new;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/new;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/hx1;->do:Lorg/bouncycastle/asn1/new;

    return-void
.end method

.method public static new(Ljava/lang/Object;)Landroid/support/v4/hx1;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/hx1;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/hx1;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/hx1;

    invoke-static {p0}, Lorg/bouncycastle/asn1/new;->class(Ljava/lang/Object;)Lorg/bouncycastle/asn1/new;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/hx1;-><init>(Lorg/bouncycastle/asn1/new;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static try(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/hx1;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/new;->const(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/new;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/hx1;->new(Ljava/lang/Object;)Landroid/support/v4/hx1;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public case()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/hx1;->do:Lorg/bouncycastle/asn1/new;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/new;->final()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/hx1;->do:Lorg/bouncycastle/asn1/new;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroid/support/v4/hx1;->do:Lorg/bouncycastle/asn1/new;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/new;->final()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/support/v4/hx1;->if:Landroid/support/v4/hx1;

    invoke-virtual {v2}, Landroid/support/v4/hx1;->case()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    if-ne v0, v2, :cond_0

    const-string v0, "(CPD)"

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/support/v4/hx1;->for:Landroid/support/v4/hx1;

    invoke-virtual {v2}, Landroid/support/v4/hx1;->case()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    if-ne v0, v2, :cond_1

    const-string v0, "(VSD)"

    goto :goto_0

    :cond_1
    sget-object v2, Landroid/support/v4/hx1;->new:Landroid/support/v4/hx1;

    invoke-virtual {v2}, Landroid/support/v4/hx1;->case()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    if-ne v0, v2, :cond_2

    const-string v0, "(VPKC)"

    goto :goto_0

    :cond_2
    sget-object v2, Landroid/support/v4/hx1;->try:Landroid/support/v4/hx1;

    invoke-virtual {v2}, Landroid/support/v4/hx1;->case()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    if-ne v0, v2, :cond_3

    const-string v0, "(CCPD)"

    goto :goto_0

    :cond_3
    const-string v0, "?"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
