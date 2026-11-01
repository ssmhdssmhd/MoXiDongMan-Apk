.class public Landroid/support/v4/vy1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private do:Ljava/lang/String;

.field private if:D


# direct methods
.method public constructor <init>(Ljava/lang/String;D)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/v4/vy1;->do:Ljava/lang/String;

    .line 3
    iput-wide p2, p0, Landroid/support/v4/vy1;->if:D

    return-void
.end method


# virtual methods
.method public do()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/vy1;->do:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    check-cast p1, Landroid/support/v4/vy1;

    .line 3
    iget-object v1, p0, Landroid/support/v4/vy1;->do:Ljava/lang/String;

    iget-object v2, p1, Landroid/support/v4/vy1;->do:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v1, p0, Landroid/support/v4/vy1;->if:D

    iget-wide v3, p1, Landroid/support/v4/vy1;->if:D

    cmpl-double p1, v1, v3

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/support/v4/vy1;->do:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0xfd

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x17

    .line 2
    iget-wide v2, p0, Landroid/support/v4/vy1;->if:D

    const-wide v4, 0x412e848000000000L    # 1000000.0

    mul-double v2, v2, v4

    double-to-int v0, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public if()D
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v4/vy1;->if:D

    return-wide v0
.end method
