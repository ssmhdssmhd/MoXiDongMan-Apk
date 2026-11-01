.class public Landroid/support/v4/q41;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private do:I

.field private for:I

.field private if:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public case(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/q41;->do:I

    return-void
.end method

.method public do()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/q41;->do:I

    return v0
.end method

.method public for()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/q41;->if:Z

    return v0
.end method

.method public if()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/q41;->for:I

    return v0
.end method

.method public new(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/q41;->for:I

    return-void
.end method

.method public try(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v4/q41;->if:Z

    return-void
.end method
