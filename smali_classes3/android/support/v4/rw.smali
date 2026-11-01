.class public Landroid/support/v4/rw;
.super Landroid/support/v4/qk2;
.source "SourceFile"


# instance fields
.field private for:J

.field private if:J

.field private new:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v4/qk2;-><init>()V

    return-void
.end method


# virtual methods
.method public case(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/support/v4/rw;->for:J

    return-void
.end method

.method public else(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/support/v4/rw;->if:J

    return-void
.end method

.method public for()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v4/rw;->for:J

    return-wide v0
.end method

.method public goto(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/support/v4/rw;->new:J

    return-void
.end method

.method public new()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v4/rw;->if:J

    return-wide v0
.end method

.method public try()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v4/rw;->new:J

    return-wide v0
.end method
