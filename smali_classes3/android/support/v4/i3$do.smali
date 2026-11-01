.class public Landroid/support/v4/i3$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/i3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final do:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field public for:Z

.field public if:I

.field public final synthetic new:Landroid/support/v4/i3;


# direct methods
.method public constructor <init>(Landroid/support/v4/i3;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroid/support/v4/i3$do;->new:Landroid/support/v4/i3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Landroid/support/v4/i3$do;->if:I

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Landroid/support/v4/i3$do;->for:Z

    .line 4
    iput-object p2, p0, Landroid/support/v4/i3$do;->do:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v4/i3$do;->if:I

    iget-object v1, p0, Landroid/support/v4/i3$do;->do:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/i3$do;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/support/v4/i3$do;->for:Z

    .line 3
    iget-object v0, p0, Landroid/support/v4/i3$do;->do:[Ljava/lang/Object;

    iget v1, p0, Landroid/support/v4/i3$do;->if:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v4/i3$do;->if:I

    aget-object v0, v0, v1

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/i3$do;->for:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/support/v4/i3$do;->new:Landroid/support/v4/i3;

    iget-object v1, p0, Landroid/support/v4/i3$do;->do:[Ljava/lang/Object;

    iget v2, p0, Landroid/support/v4/i3$do;->if:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v4/i3;->remove(Ljava/lang/Object;)Z

    .line 3
    iput-boolean v3, p0, Landroid/support/v4/i3$do;->for:Z

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
