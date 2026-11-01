.class public Landroid/support/v4/pj2;
.super Landroid/support/v4/qk2;
.source "SourceFile"


# instance fields
.field private case:I

.field private for:J

.field private if:I

.field private new:J

.field private try:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/support/v4/qk2;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Landroid/support/v4/pj2;->for:J

    .line 3
    iput-wide v0, p0, Landroid/support/v4/pj2;->new:J

    .line 4
    iput-wide v0, p0, Landroid/support/v4/pj2;->try:J

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroid/support/v4/pj2;->case:I

    return-void
.end method


# virtual methods
.method public break(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/support/v4/pj2;->try:J

    return-void
.end method

.method public case()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/pj2;->if:I

    return v0
.end method

.method public catch(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/pj2;->if:I

    return-void
.end method

.method public class(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/support/v4/pj2;->new:J

    return-void
.end method

.method public else()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v4/pj2;->new:J

    return-wide v0
.end method

.method public for()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v4/pj2;->for:J

    return-wide v0
.end method

.method public goto(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/support/v4/pj2;->for:J

    return-void
.end method

.method public new()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/pj2;->case:I

    return v0
.end method

.method public this(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/pj2;->case:I

    return-void
.end method

.method public try()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v4/pj2;->try:J

    return-wide v0
.end method
