.class public Landroid/support/v4/zk1;
.super Landroid/support/v4/rk1;
.source "SourceFile"


# instance fields
.field private for:[[S

.field private new:[[S

.field private try:[S


# direct methods
.method public constructor <init>(I[[S[[S[S)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/support/v4/rk1;-><init>(ZI)V

    iput-object p2, p0, Landroid/support/v4/zk1;->for:[[S

    iput-object p3, p0, Landroid/support/v4/zk1;->new:[[S

    iput-object p4, p0, Landroid/support/v4/zk1;->try:[S

    return-void
.end method


# virtual methods
.method public for()[[S
    .locals 1

    iget-object v0, p0, Landroid/support/v4/zk1;->for:[[S

    return-object v0
.end method

.method public new()[S
    .locals 1

    iget-object v0, p0, Landroid/support/v4/zk1;->try:[S

    return-object v0
.end method

.method public try()[[S
    .locals 1

    iget-object v0, p0, Landroid/support/v4/zk1;->new:[[S

    return-object v0
.end method
