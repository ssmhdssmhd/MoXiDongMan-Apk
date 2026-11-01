.class public abstract Landroid/support/v4/ry;
.super Lfreemarker/ext/beans/else;
.source "SourceFile"


# instance fields
.field private break:Z

.field private catch:Z

.field private this:Z


# direct methods
.method public constructor <init>(Landroid/support/v4/we2;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lfreemarker/template/this;->c(Landroid/support/v4/we2;)Landroid/support/v4/we2;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lfreemarker/ext/beans/else;-><init>(Landroid/support/v4/we2;Z)V

    .line 2
    invoke-virtual {p0}, Lfreemarker/ext/beans/else;->case()Landroid/support/v4/we2;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/we2;->intValue()I

    move-result p1

    sget v1, Landroid/support/v4/ul2;->try:I

    if-lt p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroid/support/v4/ry;->this:Z

    .line 3
    iput-boolean v0, p0, Landroid/support/v4/ry;->break:Z

    return-void
.end method


# virtual methods
.method public abstract(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v4/ry;->catch:Z

    return-void
.end method

.method public continue(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v4/ry;->this:Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lfreemarker/ext/beans/else;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Landroid/support/v4/ry;

    .line 3
    iget-boolean v0, p0, Landroid/support/v4/ry;->this:Z

    invoke-virtual {p1}, Landroid/support/v4/ry;->package()Z

    move-result v2

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/ry;->break:Z

    iget-boolean v2, p1, Landroid/support/v4/ry;->break:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/ry;->catch:Z

    iget-boolean p1, p1, Landroid/support/v4/ry;->catch:Z

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public extends()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/ry;->break:Z

    return v0
.end method

.method public finally()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/ry;->catch:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    invoke-super {p0}, Lfreemarker/ext/beans/else;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-boolean v1, p0, Landroid/support/v4/ry;->this:Z

    const/16 v2, 0x4cf

    const/16 v3, 0x4d5

    if-eqz v1, :cond_0

    const/16 v1, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v1, 0x4d5

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-boolean v1, p0, Landroid/support/v4/ry;->break:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x4cf

    goto :goto_1

    :cond_1
    const/16 v1, 0x4d5

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-boolean v1, p0, Landroid/support/v4/ry;->catch:Z

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/16 v2, 0x4d5

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method

.method public package()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/ry;->this:Z

    return v0
.end method

.method public private(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v4/ry;->break:Z

    return-void
.end method
