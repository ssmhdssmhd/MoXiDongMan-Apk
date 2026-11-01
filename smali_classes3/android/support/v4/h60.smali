.class public Landroid/support/v4/h60;
.super Landroid/support/v4/a4;
.source "SourceFile"


# instance fields
.field private if:Landroid/support/v4/l60;


# direct methods
.method public constructor <init>(ZLandroid/support/v4/l60;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/a4;-><init>(Z)V

    iput-object p2, p0, Landroid/support/v4/h60;->if:Landroid/support/v4/l60;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroid/support/v4/h60;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroid/support/v4/h60;

    iget-object v0, p0, Landroid/support/v4/h60;->if:Landroid/support/v4/l60;

    invoke-virtual {p1}, Landroid/support/v4/h60;->if()Landroid/support/v4/l60;

    move-result-object p1

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    invoke-virtual {v0, p1}, Landroid/support/v4/l60;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/h60;->if:Landroid/support/v4/l60;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/l60;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public if()Landroid/support/v4/l60;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/h60;->if:Landroid/support/v4/l60;

    return-object v0
.end method
