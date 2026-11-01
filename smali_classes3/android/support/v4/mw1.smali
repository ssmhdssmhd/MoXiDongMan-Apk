.class public Landroid/support/v4/mw1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public break:[B

.field public case:[B

.field public catch:[B

.field public class:S

.field public const:Z

.field public do:I

.field public else:[B

.field public final:Z

.field public for:S

.field public goto:[B

.field public if:I

.field public new:I

.field public super:Z

.field public this:[B

.field public try:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/mw1;->do:I

    iput v0, p0, Landroid/support/v4/mw1;->if:I

    const/4 v1, 0x0

    iput-short v1, p0, Landroid/support/v4/mw1;->for:S

    iput v0, p0, Landroid/support/v4/mw1;->new:I

    iput v0, p0, Landroid/support/v4/mw1;->try:I

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/v4/mw1;->case:[B

    iput-object v2, p0, Landroid/support/v4/mw1;->else:[B

    iput-object v2, p0, Landroid/support/v4/mw1;->goto:[B

    iput-object v2, p0, Landroid/support/v4/mw1;->this:[B

    iput-object v2, p0, Landroid/support/v4/mw1;->break:[B

    iput-object v2, p0, Landroid/support/v4/mw1;->catch:[B

    iput-short v0, p0, Landroid/support/v4/mw1;->class:S

    iput-boolean v1, p0, Landroid/support/v4/mw1;->const:Z

    iput-boolean v1, p0, Landroid/support/v4/mw1;->final:Z

    iput-boolean v1, p0, Landroid/support/v4/mw1;->super:Z

    return-void
.end method


# virtual methods
.method public break()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/mw1;->catch:[B

    return-object v0
.end method

.method public case()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/mw1;->case:[B

    return-object v0
.end method

.method public catch()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/mw1;->goto:[B

    return-object v0
.end method

.method public class()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/mw1;->this:[B

    return-object v0
.end method

.method public const()I
    .locals 1

    iget v0, p0, Landroid/support/v4/mw1;->try:I

    return v0
.end method

.method public do()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/mw1;->case:[B

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/q3;->c([BB)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/mw1;->case:[B

    :cond_0
    return-void
.end method

.method public else()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/mw1;->break:[B

    return-object v0
.end method

.method public final()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/mw1;->super:Z

    return v0
.end method

.method public for()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/mw1;->else:[B

    return-object v0
.end method

.method public goto()I
    .locals 1

    iget v0, p0, Landroid/support/v4/mw1;->new:I

    return v0
.end method

.method public if()I
    .locals 1

    iget v0, p0, Landroid/support/v4/mw1;->if:I

    return v0
.end method

.method public new()S
    .locals 1

    iget-short v0, p0, Landroid/support/v4/mw1;->for:S

    return v0
.end method

.method public this()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/mw1;->break:[B

    return-object v0
.end method

.method public try()I
    .locals 1

    iget v0, p0, Landroid/support/v4/mw1;->do:I

    return v0
.end method
