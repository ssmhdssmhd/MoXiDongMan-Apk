.class public Landroid/support/v4/iz0;
.super Landroid/support/v4/dz0;
.source "SourceFile"


# instance fields
.field private for:I

.field private new:I

.field private try:Landroid/support/v4/qe0;


# direct methods
.method public constructor <init>(IILandroid/support/v4/qe0;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v4/dz0;-><init>(ZLandroid/support/v4/ez0;)V

    iput p1, p0, Landroid/support/v4/iz0;->for:I

    iput p2, p0, Landroid/support/v4/iz0;->new:I

    new-instance p1, Landroid/support/v4/qe0;

    invoke-direct {p1, p3}, Landroid/support/v4/qe0;-><init>(Landroid/support/v4/qe0;)V

    iput-object p1, p0, Landroid/support/v4/iz0;->try:Landroid/support/v4/qe0;

    return-void
.end method


# virtual methods
.method public case()I
    .locals 1

    iget v0, p0, Landroid/support/v4/iz0;->new:I

    return v0
.end method

.method public for()Landroid/support/v4/qe0;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/iz0;->try:Landroid/support/v4/qe0;

    return-object v0
.end method

.method public new()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/iz0;->try:Landroid/support/v4/qe0;

    invoke-virtual {v0}, Landroid/support/v4/ay0;->new()I

    move-result v0

    return v0
.end method

.method public try()I
    .locals 1

    iget v0, p0, Landroid/support/v4/iz0;->for:I

    return v0
.end method
