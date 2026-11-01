.class public Landroid/support/v4/wk1;
.super Landroid/support/v4/rk1;
.source "SourceFile"


# instance fields
.field private case:[S

.field private else:[I

.field private for:[[S

.field private goto:[Landroid/support/v4/ds0;

.field private new:[S

.field private try:[[S


# direct methods
.method public constructor <init>([[S[S[[S[S[I[Landroid/support/v4/ds0;)V
    .locals 3

    array-length v0, p5

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget v0, p5, v0

    const/4 v2, 0x0

    aget v2, p5, v2

    sub-int/2addr v0, v2

    invoke-direct {p0, v1, v0}, Landroid/support/v4/rk1;-><init>(ZI)V

    iput-object p1, p0, Landroid/support/v4/wk1;->for:[[S

    iput-object p2, p0, Landroid/support/v4/wk1;->new:[S

    iput-object p3, p0, Landroid/support/v4/wk1;->try:[[S

    iput-object p4, p0, Landroid/support/v4/wk1;->case:[S

    iput-object p5, p0, Landroid/support/v4/wk1;->else:[I

    iput-object p6, p0, Landroid/support/v4/wk1;->goto:[Landroid/support/v4/ds0;

    return-void
.end method


# virtual methods
.method public case()[[S
    .locals 1

    iget-object v0, p0, Landroid/support/v4/wk1;->try:[[S

    return-object v0
.end method

.method public else()[Landroid/support/v4/ds0;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/wk1;->goto:[Landroid/support/v4/ds0;

    return-object v0
.end method

.method public for()[S
    .locals 1

    iget-object v0, p0, Landroid/support/v4/wk1;->new:[S

    return-object v0
.end method

.method public goto()[I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/wk1;->else:[I

    return-object v0
.end method

.method public new()[S
    .locals 1

    iget-object v0, p0, Landroid/support/v4/wk1;->case:[S

    return-object v0
.end method

.method public try()[[S
    .locals 1

    iget-object v0, p0, Landroid/support/v4/wk1;->for:[[S

    return-object v0
.end method
