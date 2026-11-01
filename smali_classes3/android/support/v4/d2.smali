.class public abstract Landroid/support/v4/d2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final do:I

.field public if:Landroid/support/v4/d2;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/d2;-><init>(ILandroid/support/v4/d2;)V

    return-void
.end method

.method public constructor <init>(ILandroid/support/v4/d2;)V
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
    iput p1, p0, Landroid/support/v4/d2;->do:I

    iput-object p2, p0, Landroid/support/v4/d2;->if:Landroid/support/v4/d2;

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/d2;->if:Landroid/support/v4/d2;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/d2;->do(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public for(Ljava/lang/String;)Landroid/support/v4/d2;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/d2;->if:Landroid/support/v4/d2;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v4/d2;->for(Ljava/lang/String;)Landroid/support/v4/d2;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public if(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/d2;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/d2;->if:Landroid/support/v4/d2;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/d2;->if(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/d2;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public new()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/d2;->if:Landroid/support/v4/d2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/d2;->new()V

    :cond_0
    return-void
.end method

.method public try(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/d2;->if:Landroid/support/v4/d2;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/d2;->try(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
