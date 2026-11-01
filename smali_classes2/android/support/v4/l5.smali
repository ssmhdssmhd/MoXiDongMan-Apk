.class public final Landroid/support/v4/l5;
.super Landroid/support/v4/oz;
.source "SourceFile"


# instance fields
.field private final for:Z

.field private final new:I

.field private final try:I


# direct methods
.method public constructor <init>(Landroid/support/v4/z8;[Landroid/support/v4/yn1;ZII)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/support/v4/oz;-><init>(Landroid/support/v4/z8;[Landroid/support/v4/yn1;)V

    .line 2
    iput-boolean p3, p0, Landroid/support/v4/l5;->for:Z

    .line 3
    iput p4, p0, Landroid/support/v4/l5;->new:I

    .line 4
    iput p5, p0, Landroid/support/v4/l5;->try:I

    return-void
.end method


# virtual methods
.method public for()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/l5;->new:I

    return v0
.end method

.method public new()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/l5;->try:I

    return v0
.end method

.method public try()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/l5;->for:Z

    return v0
.end method
