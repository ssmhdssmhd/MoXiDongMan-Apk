.class public Landroid/support/v4/zh1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private case:Z

.field private final do:Landroid/view/View;

.field private else:Z

.field private for:I

.field private if:I

.field private new:I

.field private try:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/support/v4/zh1;->case:Z

    .line 3
    iput-boolean v0, p0, Landroid/support/v4/zh1;->else:Z

    .line 4
    iput-object p1, p0, Landroid/support/v4/zh1;->do:Landroid/view/View;

    return-void
.end method

.method private const()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v4/zh1;->do:Landroid/view/View;

    iget v1, p0, Landroid/support/v4/zh1;->new:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Landroid/support/v4/zh1;->if:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 2
    iget-object v0, p0, Landroid/support/v4/zh1;->do:Landroid/view/View;

    iget v1, p0, Landroid/support/v4/zh1;->try:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, Landroid/support/v4/zh1;->for:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public break(II)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/zh1;->else:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v2, p0, Landroid/support/v4/zh1;->case:Z

    if-nez v2, :cond_0

    return v1

    :cond_0
    if-eqz v0, :cond_3

    .line 2
    iget-boolean v2, p0, Landroid/support/v4/zh1;->case:Z

    if-eqz v2, :cond_3

    .line 3
    iget v0, p0, Landroid/support/v4/zh1;->try:I

    if-ne v0, p1, :cond_2

    iget v0, p0, Landroid/support/v4/zh1;->new:I

    if-eq v0, p2, :cond_1

    goto :goto_0

    :cond_1
    return v1

    .line 4
    :cond_2
    :goto_0
    iput p1, p0, Landroid/support/v4/zh1;->try:I

    .line 5
    iput p2, p0, Landroid/support/v4/zh1;->new:I

    .line 6
    invoke-direct {p0}, Landroid/support/v4/zh1;->const()V

    const/4 p1, 0x1

    return p1

    :cond_3
    if-eqz v0, :cond_4

    .line 7
    invoke-virtual {p0, p1}, Landroid/support/v4/zh1;->this(I)Z

    move-result p1

    return p1

    .line 8
    :cond_4
    invoke-virtual {p0, p2}, Landroid/support/v4/zh1;->catch(I)Z

    move-result p1

    return p1
.end method

.method public case()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/zh1;->case:Z

    return v0
.end method

.method public catch(I)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/zh1;->case:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v4/zh1;->new:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Landroid/support/v4/zh1;->new:I

    .line 3
    invoke-direct {p0}, Landroid/support/v4/zh1;->const()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public class(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v4/zh1;->case:Z

    return-void
.end method

.method public do()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/zh1;->for:I

    return v0
.end method

.method public else()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/zh1;->do:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Landroid/support/v4/zh1;->if:I

    .line 2
    iget-object v0, p0, Landroid/support/v4/zh1;->do:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Landroid/support/v4/zh1;->for:I

    .line 3
    invoke-direct {p0}, Landroid/support/v4/zh1;->const()V

    return-void
.end method

.method public for()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/zh1;->try:I

    return v0
.end method

.method public goto(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v4/zh1;->else:Z

    return-void
.end method

.method public if()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/zh1;->if:I

    return v0
.end method

.method public new()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/zh1;->new:I

    return v0
.end method

.method public this(I)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/zh1;->else:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v4/zh1;->try:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Landroid/support/v4/zh1;->try:I

    .line 3
    invoke-direct {p0}, Landroid/support/v4/zh1;->const()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public try()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/zh1;->else:Z

    return v0
.end method
