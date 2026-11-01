.class public Landroid/support/v4/aa0;
.super Landroid/support/v4/qk2;
.source "SourceFile"


# instance fields
.field private for:I

.field private if:J

.field private new:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v4/qk2;-><init>()V

    return-void
.end method


# virtual methods
.method public case([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/aa0;->new:[B

    return-void
.end method

.method public else(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/support/v4/aa0;->if:J

    return-void
.end method

.method public for()[B
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/aa0;->new:[B

    return-object v0
.end method

.method public goto(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/aa0;->for:I

    return-void
.end method

.method public new()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v4/aa0;->if:J

    return-wide v0
.end method

.method public try()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/aa0;->for:I

    return v0
.end method
