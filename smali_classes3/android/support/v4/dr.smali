.class public Landroid/support/v4/dr;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field public do:Lorg/bouncycastle/asn1/class;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/class;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/dr;->do:Lorg/bouncycastle/asn1/class;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/j;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    invoke-direct {p0, v0}, Landroid/support/v4/dr;-><init>(Lorg/bouncycastle/asn1/class;)V

    return-void
.end method

.method public static new(Ljava/lang/Object;)Landroid/support/v4/dr;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/dr;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/dr;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/dr;

    invoke-static {p0}, Lorg/bouncycastle/asn1/class;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/class;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/dr;-><init>(Lorg/bouncycastle/asn1/class;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/dr;->do:Lorg/bouncycastle/asn1/class;

    return-object v0
.end method

.method public try()Lorg/bouncycastle/asn1/class;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/dr;->do:Lorg/bouncycastle/asn1/class;

    return-object v0
.end method
