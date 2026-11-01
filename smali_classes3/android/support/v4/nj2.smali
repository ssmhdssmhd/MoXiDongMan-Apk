.class public Landroid/support/v4/nj2;
.super Landroid/support/v4/qk2;
.source "SourceFile"


# instance fields
.field private for:J

.field private if:I

.field private new:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v4/qk2;-><init>()V

    return-void
.end method


# virtual methods
.method public case(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/nj2;->if:I

    return-void
.end method

.method public else(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/support/v4/nj2;->for:J

    return-void
.end method

.method public for()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/nj2;->if:I

    return v0
.end method

.method public goto(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/nj2;->new:I

    return-void
.end method

.method public new()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v4/nj2;->for:J

    return-wide v0
.end method

.method public try()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/nj2;->new:I

    return v0
.end method
