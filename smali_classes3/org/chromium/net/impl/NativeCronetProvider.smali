.class public Lorg/chromium/net/impl/NativeCronetProvider;
.super Lorg/chromium/net/new;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation build Lorg/chromium/base/annotations/UsedByReflection;
        value = "CronetProvider.java"
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/chromium/net/new;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public case()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Landroid/support/v4/im0;->if()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public else()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    .line 1
    instance-of v0, p1, Lorg/chromium/net/impl/NativeCronetProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/net/new;->do:Landroid/content/Context;

    check-cast p1, Lorg/chromium/net/impl/NativeCronetProvider;

    iget-object p1, p1, Lorg/chromium/net/new;->do:Landroid/content/Context;

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public for()Lorg/chromium/net/for$do;
    .locals 2

    .line 1
    new-instance v0, Lorg/chromium/net/impl/goto;

    iget-object v1, p0, Lorg/chromium/net/new;->do:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/chromium/net/impl/goto;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v1, Lorg/chromium/net/case$do;

    invoke-direct {v1, v0}, Lorg/chromium/net/case$do;-><init>(Lorg/chromium/net/catch;)V

    return-object v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1
    const-class v2, Lorg/chromium/net/impl/NativeCronetProvider;

    aput-object v2, v0, v1

    iget-object v1, p0, Lorg/chromium/net/new;->do:Landroid/content/Context;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public try()Ljava/lang/String;
    .locals 1

    const-string v0, "App-Packaged-Cronet-Provider"

    return-object v0
.end method
