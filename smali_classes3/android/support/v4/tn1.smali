.class public Landroid/support/v4/tn1;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private do:Landroid/support/v4/g10;


# direct methods
.method private constructor <init>(Landroid/support/v4/g10;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/tn1;->do:Landroid/support/v4/g10;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    new-instance v0, Landroid/support/v4/g10;

    invoke-direct {v0, p1}, Landroid/support/v4/g10;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v4/tn1;->do:Landroid/support/v4/g10;

    return-void
.end method

.method public static new(Ljava/lang/Object;)Landroid/support/v4/tn1;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/tn1;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/tn1;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/tn1;

    invoke-static {p0}, Landroid/support/v4/g10;->new(Ljava/lang/Object;)Landroid/support/v4/g10;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/tn1;-><init>(Landroid/support/v4/g10;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/tn1;->do:Landroid/support/v4/g10;

    invoke-virtual {v0}, Landroid/support/v4/g10;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    return-object v0
.end method

.method public try()Landroid/support/v4/g10;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/tn1;->do:Landroid/support/v4/g10;

    return-object v0
.end method
