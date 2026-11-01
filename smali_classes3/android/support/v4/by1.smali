.class public Landroid/support/v4/by1;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private do:Landroid/support/v4/ay1;

.field private if:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/by1;->if:Z

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/ay1;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/by1;->do:Landroid/support/v4/ay1;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v4/by1;->if:Z

    return-void
.end method

.method public static new(Ljava/lang/Object;)Landroid/support/v4/by1;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/by1;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/by1;

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/this;

    if-nez v0, :cond_3

    const/4 v0, 0x5

    invoke-static {p0, v0}, Lorg/bouncycastle/asn1/break;->if(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    new-instance v0, Landroid/support/v4/by1;

    invoke-static {p0}, Landroid/support/v4/ay1;->new(Ljava/lang/Object;)Landroid/support/v4/ay1;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/by1;-><init>(Landroid/support/v4/ay1;)V

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0

    :cond_3
    :goto_0
    new-instance p0, Landroid/support/v4/by1;

    invoke-direct {p0}, Landroid/support/v4/by1;-><init>()V

    return-object p0
.end method


# virtual methods
.method public case()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/by1;->if:Z

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/by1;->if:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/bouncycastle/asn1/h;->do:Lorg/bouncycastle/asn1/h;

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/by1;->do:Landroid/support/v4/ay1;

    invoke-virtual {v0}, Landroid/support/v4/ay1;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    return-object v0
.end method

.method public try()Landroid/support/v4/ay1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/by1;->do:Landroid/support/v4/ay1;

    return-object v0
.end method
