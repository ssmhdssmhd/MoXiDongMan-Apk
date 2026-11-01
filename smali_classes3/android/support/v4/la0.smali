.class public abstract Landroid/support/v4/la0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final do:I

.field public if:Landroid/support/v4/la0;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/la0;-><init>(ILandroid/support/v4/la0;)V

    return-void
.end method

.method public constructor <init>(ILandroid/support/v4/la0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x50000

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput p1, p0, Landroid/support/v4/la0;->do:I

    iput-object p2, p0, Landroid/support/v4/la0;->if:Landroid/support/v4/la0;

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/String;Z)Landroid/support/v4/d2;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/la0;->if:Landroid/support/v4/la0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/la0;->do(Ljava/lang/String;Z)Landroid/support/v4/d2;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public for()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/la0;->if:Landroid/support/v4/la0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/la0;->for()V

    :cond_0
    return-void
.end method

.method public if(Landroid/support/v4/o4;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/la0;->if:Landroid/support/v4/la0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v4/la0;->if(Landroid/support/v4/o4;)V

    :cond_0
    return-void
.end method

.method public new(ILandroid/support/v4/p92;Ljava/lang/String;Z)Landroid/support/v4/d2;
    .locals 2

    iget v0, p0, Landroid/support/v4/la0;->do:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/v4/la0;->if:Landroid/support/v4/la0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/la0;->new(ILandroid/support/v4/p92;Ljava/lang/String;Z)Landroid/support/v4/d2;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method
