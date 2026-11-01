.class public Landroid/support/v4/zg2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/util/Selector;


# instance fields
.field private do:Landroid/support/v4/ah2;

.field private for:Lorg/bouncycastle/x509/class;

.field private if:Landroid/support/v4/ah2;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public case(Landroid/support/v4/ah2;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/zg2;->if:Landroid/support/v4/ah2;

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Landroid/support/v4/zg2;

    invoke-direct {v0}, Landroid/support/v4/zg2;-><init>()V

    iget-object v1, p0, Landroid/support/v4/zg2;->for:Lorg/bouncycastle/x509/class;

    iput-object v1, v0, Landroid/support/v4/zg2;->for:Lorg/bouncycastle/x509/class;

    iget-object v1, p0, Landroid/support/v4/zg2;->do:Landroid/support/v4/ah2;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v4/ah2;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/ah2;

    invoke-virtual {v0, v1}, Landroid/support/v4/zg2;->try(Landroid/support/v4/ah2;)V

    :cond_0
    iget-object v1, p0, Landroid/support/v4/zg2;->if:Landroid/support/v4/ah2;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/support/v4/ah2;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/ah2;

    invoke-virtual {v0, v1}, Landroid/support/v4/zg2;->case(Landroid/support/v4/ah2;)V

    :cond_1
    return-object v0
.end method

.method public do()Lorg/bouncycastle/x509/class;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/zg2;->for:Lorg/bouncycastle/x509/class;

    return-object v0
.end method

.method public for()Landroid/support/v4/ah2;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/zg2;->if:Landroid/support/v4/ah2;

    return-object v0
.end method

.method public if()Landroid/support/v4/ah2;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/zg2;->do:Landroid/support/v4/ah2;

    return-object v0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    instance-of v1, p1, Lorg/bouncycastle/x509/class;

    if-nez v1, :cond_0

    return v0

    :cond_0
    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/x509/class;

    iget-object v2, p0, Landroid/support/v4/zg2;->do:Landroid/support/v4/ah2;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lorg/bouncycastle/x509/class;->if()Ljava/security/cert/X509Certificate;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/ah2;->match(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    iget-object v2, p0, Landroid/support/v4/zg2;->if:Landroid/support/v4/ah2;

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lorg/bouncycastle/x509/class;->for()Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/support/v4/ah2;->match(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    iget-object v1, p0, Landroid/support/v4/zg2;->for:Lorg/bouncycastle/x509/class;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Lorg/bouncycastle/x509/class;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_3
    const/4 p1, 0x1

    return p1

    :catch_0
    return v0
.end method

.method public new(Lorg/bouncycastle/x509/class;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/zg2;->for:Lorg/bouncycastle/x509/class;

    return-void
.end method

.method public try(Landroid/support/v4/ah2;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/zg2;->do:Landroid/support/v4/ah2;

    return-void
.end method
