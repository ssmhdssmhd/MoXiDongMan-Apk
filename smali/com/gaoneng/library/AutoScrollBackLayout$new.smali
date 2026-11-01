.class Lcom/gaoneng/library/AutoScrollBackLayout$new;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaoneng/library/AutoScrollBackLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "new"
.end annotation


# instance fields
.field private do:I

.field public final synthetic for:Lcom/gaoneng/library/AutoScrollBackLayout;

.field private if:I


# direct methods
.method private constructor <init>(Lcom/gaoneng/library/AutoScrollBackLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gaoneng/library/AutoScrollBackLayout$new;->for:Lcom/gaoneng/library/AutoScrollBackLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gaoneng/library/AutoScrollBackLayout;Lcom/gaoneng/library/AutoScrollBackLayout$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/gaoneng/library/AutoScrollBackLayout$new;-><init>(Lcom/gaoneng/library/AutoScrollBackLayout;)V

    return-void
.end method


# virtual methods
.method public do(Landroid/view/View;III)V
    .locals 0

    .line 1
    iget p3, p0, Lcom/gaoneng/library/AutoScrollBackLayout$new;->do:I

    if-nez p3, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p3, p0, Lcom/gaoneng/library/AutoScrollBackLayout$new;->for:Lcom/gaoneng/library/AutoScrollBackLayout;

    invoke-static {p3, p2}, Lcom/gaoneng/library/AutoScrollBackLayout;->try(Lcom/gaoneng/library/AutoScrollBackLayout;I)I

    move-result p3

    iput p3, p0, Lcom/gaoneng/library/AutoScrollBackLayout$new;->if:I

    .line 3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "@"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    iget p3, p0, Lcom/gaoneng/library/AutoScrollBackLayout$new;->if:I

    iget-object p4, p0, Lcom/gaoneng/library/AutoScrollBackLayout$new;->for:Lcom/gaoneng/library/AutoScrollBackLayout;

    invoke-static {p4}, Lcom/gaoneng/library/AutoScrollBackLayout;->new(Lcom/gaoneng/library/AutoScrollBackLayout;)I

    move-result p4

    if-lt p3, p4, :cond_3

    .line 5
    iget-object p3, p0, Lcom/gaoneng/library/AutoScrollBackLayout$new;->for:Lcom/gaoneng/library/AutoScrollBackLayout;

    iget-boolean p3, p3, Lcom/gaoneng/library/AutoScrollBackLayout;->do:Z

    if-eqz p3, :cond_1

    .line 6
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " show()!!! scrollState="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/gaoneng/library/AutoScrollBackLayout$new;->do:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",scrollDistance="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/gaoneng/library/AutoScrollBackLayout$new;->if:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",firstVisibleItem="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/gaoneng/library/AutoScrollBackLayout$new;->for:Lcom/gaoneng/library/AutoScrollBackLayout;

    invoke-static {p1}, Lcom/gaoneng/library/AutoScrollBackLayout;->for(Lcom/gaoneng/library/AutoScrollBackLayout;)Lcom/gaoneng/library/AutoScrollBackLayout$if;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/gaoneng/library/AutoScrollBackLayout$new;->for:Lcom/gaoneng/library/AutoScrollBackLayout;

    invoke-static {p1}, Lcom/gaoneng/library/AutoScrollBackLayout;->for(Lcom/gaoneng/library/AutoScrollBackLayout;)Lcom/gaoneng/library/AutoScrollBackLayout$if;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9
    iget-object p1, p0, Lcom/gaoneng/library/AutoScrollBackLayout$new;->for:Lcom/gaoneng/library/AutoScrollBackLayout;

    invoke-static {p1}, Lcom/gaoneng/library/AutoScrollBackLayout;->for(Lcom/gaoneng/library/AutoScrollBackLayout;)Lcom/gaoneng/library/AutoScrollBackLayout$if;

    move-result-object p2

    const-wide/16 p3, 0x5dc

    invoke-virtual {p1, p2, p3, p4}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/gaoneng/library/AutoScrollBackLayout$new;->for:Lcom/gaoneng/library/AutoScrollBackLayout;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/gaoneng/library/AutoScrollBackLayout;->import(Z)V

    :cond_3
    return-void
.end method

.method public if(Landroid/view/View;I)V
    .locals 4

    .line 1
    iput p2, p0, Lcom/gaoneng/library/AutoScrollBackLayout$new;->do:I

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/gaoneng/library/AutoScrollBackLayout$new;->for:Lcom/gaoneng/library/AutoScrollBackLayout;

    iget-boolean v0, v0, Lcom/gaoneng/library/AutoScrollBackLayout;->do:Z

    const-string v1, ",showScrollDistance="

    const-string v2, ",scrollDistance="

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " scrollState="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/gaoneng/library/AutoScrollBackLayout$new;->if:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/gaoneng/library/AutoScrollBackLayout$new;->for:Lcom/gaoneng/library/AutoScrollBackLayout;

    invoke-static {v3}, Lcom/gaoneng/library/AutoScrollBackLayout;->new(Lcom/gaoneng/library/AutoScrollBackLayout;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    if-nez p2, :cond_3

    .line 5
    iget-object p2, p0, Lcom/gaoneng/library/AutoScrollBackLayout$new;->for:Lcom/gaoneng/library/AutoScrollBackLayout;

    iget-boolean p2, p2, Lcom/gaoneng/library/AutoScrollBackLayout;->do:Z

    if-eqz p2, :cond_1

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " hide()!!! scrollState="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/gaoneng/library/AutoScrollBackLayout$new;->if:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/gaoneng/library/AutoScrollBackLayout$new;->for:Lcom/gaoneng/library/AutoScrollBackLayout;

    invoke-static {p1}, Lcom/gaoneng/library/AutoScrollBackLayout;->new(Lcom/gaoneng/library/AutoScrollBackLayout;)I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/gaoneng/library/AutoScrollBackLayout$new;->for:Lcom/gaoneng/library/AutoScrollBackLayout;

    invoke-static {p1}, Lcom/gaoneng/library/AutoScrollBackLayout;->for(Lcom/gaoneng/library/AutoScrollBackLayout;)Lcom/gaoneng/library/AutoScrollBackLayout$if;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/gaoneng/library/AutoScrollBackLayout$new;->for:Lcom/gaoneng/library/AutoScrollBackLayout;

    invoke-static {p1}, Lcom/gaoneng/library/AutoScrollBackLayout;->for(Lcom/gaoneng/library/AutoScrollBackLayout;)Lcom/gaoneng/library/AutoScrollBackLayout$if;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9
    iget-object p1, p0, Lcom/gaoneng/library/AutoScrollBackLayout$new;->for:Lcom/gaoneng/library/AutoScrollBackLayout;

    invoke-static {p1}, Lcom/gaoneng/library/AutoScrollBackLayout;->for(Lcom/gaoneng/library/AutoScrollBackLayout;)Lcom/gaoneng/library/AutoScrollBackLayout$if;

    move-result-object p2

    iget v0, p0, Lcom/gaoneng/library/AutoScrollBackLayout$new;->if:I

    iget-object v1, p0, Lcom/gaoneng/library/AutoScrollBackLayout$new;->for:Lcom/gaoneng/library/AutoScrollBackLayout;

    invoke-static {v1}, Lcom/gaoneng/library/AutoScrollBackLayout;->new(Lcom/gaoneng/library/AutoScrollBackLayout;)I

    move-result v1

    if-lt v0, v1, :cond_2

    const-wide/16 v0, 0x5dc

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method
