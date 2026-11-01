.class public abstract Landroid/support/v4/bm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final do:I

.field public if:Landroid/support/v4/bm;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/bm;-><init>(ILandroid/support/v4/bm;)V

    return-void
.end method

.method public constructor <init>(ILandroid/support/v4/bm;)V
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
    iput p1, p0, Landroid/support/v4/bm;->do:I

    iput-object p2, p0, Landroid/support/v4/bm;->if:Landroid/support/v4/bm;

    return-void
.end method


# virtual methods
.method public break(ILandroid/support/v4/p92;Ljava/lang/String;Z)Landroid/support/v4/d2;
    .locals 2

    iget v0, p0, Landroid/support/v4/bm;->do:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/v4/bm;->if:Landroid/support/v4/bm;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/bm;->break(ILandroid/support/v4/p92;Ljava/lang/String;Z)Landroid/support/v4/d2;

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

.method public case(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/bm;->if:Landroid/support/v4/bm;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/bm;->case(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public do(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Landroid/support/v4/bm;->if:Landroid/support/v4/bm;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/bm;->do(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public else(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/support/v4/xz0;
    .locals 6

    iget-object v0, p0, Landroid/support/v4/bm;->if:Landroid/support/v4/bm;

    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/bm;->else(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/support/v4/xz0;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public for(Landroid/support/v4/o4;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/bm;->if:Landroid/support/v4/bm;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v4/bm;->for(Landroid/support/v4/o4;)V

    :cond_0
    return-void
.end method

.method public goto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/bm;->if:Landroid/support/v4/bm;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/bm;->goto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public if(Ljava/lang/String;Z)Landroid/support/v4/d2;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/bm;->if:Landroid/support/v4/bm;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/bm;->if(Ljava/lang/String;Z)Landroid/support/v4/d2;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public new()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/bm;->if:Landroid/support/v4/bm;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/bm;->new()V

    :cond_0
    return-void
.end method

.method public this(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/bm;->if:Landroid/support/v4/bm;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/bm;->this(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public try(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/support/v4/la0;
    .locals 6

    iget-object v0, p0, Landroid/support/v4/bm;->if:Landroid/support/v4/bm;

    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/bm;->try(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/support/v4/la0;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
