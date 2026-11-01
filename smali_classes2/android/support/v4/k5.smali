.class public final Landroid/support/v4/k5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private do:Z

.field private for:I

.field private if:I

.field private new:I

.field private try:Landroid/support/v4/z8;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public break(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/k5;->if:I

    return-void
.end method

.method public case(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/k5;->new:I

    return-void
.end method

.method public do()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/k5;->new:I

    return v0
.end method

.method public else(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v4/k5;->do:Z

    return-void
.end method

.method public for()Landroid/support/v4/z8;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/k5;->try:Landroid/support/v4/z8;

    return-object v0
.end method

.method public goto(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/k5;->for:I

    return-void
.end method

.method public if()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/k5;->for:I

    return v0
.end method

.method public new()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/k5;->if:I

    return v0
.end method

.method public this(Landroid/support/v4/z8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/k5;->try:Landroid/support/v4/z8;

    return-void
.end method

.method public try()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/k5;->do:Z

    return v0
.end method
