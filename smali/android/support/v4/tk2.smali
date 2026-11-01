.class public Landroid/support/v4/tk2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field private final do:[Ljava/lang/Object;

.field private for:I

.field private final if:I


# direct methods
.method public constructor <init>([Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/v4/tk2;->do:[Ljava/lang/Object;

    .line 3
    iput p2, p0, Landroid/support/v4/tk2;->if:I

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Landroid/support/v4/tk2;->for:I

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v4/tk2;->for:I

    iget v1, p0, Landroid/support/v4/tk2;->if:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Landroid/support/v4/tk2;->for:I

    iget v1, p0, Landroid/support/v4/tk2;->if:I

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Landroid/support/v4/tk2;->do:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Landroid/support/v4/tk2;->for:I

    aget-object v0, v1, v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
