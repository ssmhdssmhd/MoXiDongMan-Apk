.class public Landroid/support/v4/ku;
.super Landroid/support/v4/a4;
.source "SourceFile"


# instance fields
.field private if:Landroid/support/v4/ou;


# direct methods
.method public constructor <init>(ZLandroid/support/v4/ou;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/a4;-><init>(Z)V

    iput-object p2, p0, Landroid/support/v4/ku;->if:Landroid/support/v4/ou;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroid/support/v4/ku;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroid/support/v4/ku;

    iget-object v0, p0, Landroid/support/v4/ku;->if:Landroid/support/v4/ou;

    invoke-virtual {p1}, Landroid/support/v4/ku;->if()Landroid/support/v4/ou;

    move-result-object p1

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    invoke-virtual {v0, p1}, Landroid/support/v4/ou;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Landroid/support/v4/a4;->do()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroid/support/v4/ku;->if:Landroid/support/v4/ou;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v4/ou;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public if()Landroid/support/v4/ou;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ku;->if:Landroid/support/v4/ou;

    return-object v0
.end method
