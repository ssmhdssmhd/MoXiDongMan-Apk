.class public Landroid/support/v4/wv;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private do:Lorg/bouncycastle/asn1/class;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/class;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/wv;->do:Lorg/bouncycastle/asn1/class;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/math/ec/new;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/j;

    invoke-static {p1}, Landroid/support/v4/vv;->if(Lorg/bouncycastle/math/ec/new;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    iput-object v0, p0, Landroid/support/v4/wv;->do:Lorg/bouncycastle/asn1/class;

    return-void
.end method

.method public static new(Ljava/lang/Object;)Landroid/support/v4/wv;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/wv;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/wv;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/wv;

    invoke-static {p0}, Lorg/bouncycastle/asn1/class;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/class;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/wv;-><init>(Lorg/bouncycastle/asn1/class;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/wv;->do:Lorg/bouncycastle/asn1/class;

    return-object v0
.end method
