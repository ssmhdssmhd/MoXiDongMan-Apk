.class public Landroid/support/v4/c7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private break:I

.field private case:I

.field private do:Z

.field private else:I

.field private for:Z

.field private goto:I

.field private if:Z

.field private new:Z

.field private this:I

.field private try:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public break()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/c7;->do:Z

    return v0
.end method

.method public case()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/c7;->try:Z

    return v0
.end method

.method public catch(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/c7;->break:I

    return-void
.end method

.method public class(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v4/c7;->if:Z

    return-void
.end method

.method public const(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v4/c7;->for:Z

    return-void
.end method

.method public do()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/c7;->break:I

    return v0
.end method

.method public else()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/c7;->if:Z

    return v0
.end method

.method public final(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v4/c7;->try:Z

    return-void
.end method

.method public for()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/c7;->goto:I

    return v0
.end method

.method public goto()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/c7;->for:Z

    return v0
.end method

.method public if()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/c7;->else:I

    return v0
.end method

.method public import(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v4/c7;->new:Z

    return-void
.end method

.method public native(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v4/c7;->do:Z

    return-void
.end method

.method public new()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/c7;->this:I

    return v0
.end method

.method public public(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/c7;->case:I

    return-void
.end method

.method public super(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/c7;->else:I

    return-void
.end method

.method public this()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/c7;->new:Z

    return v0
.end method

.method public throw(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/c7;->goto:I

    return-void
.end method

.method public try()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/c7;->case:I

    return v0
.end method

.method public while(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/c7;->this:I

    return-void
.end method
