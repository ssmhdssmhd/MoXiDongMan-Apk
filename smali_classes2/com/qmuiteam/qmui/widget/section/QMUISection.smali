.class public Lcom/qmuiteam/qmui/widget/section/QMUISection;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<H::",
        "Lcom/qmuiteam/qmui/widget/section/QMUISection$Model<",
        "TH;>;T::",
        "Lcom/qmuiteam/qmui/widget/section/QMUISection$Model<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final break:I = -0x1

.field public static final catch:I = -0x2

.field public static final class:I = -0x3

.field public static final const:I = -0x4

.field public static final final:I = -0x4

.field public static final super:I = -0x3e8

.field public static final this:I = -0x1


# instance fields
.field private case:Z

.field private do:Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TH;"
        }
    .end annotation
.end field

.field private else:Z

.field private for:Z

.field private goto:Z

.field private if:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private new:Z

.field private try:Z


# direct methods
.method public constructor <init>(Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/widget/section/QMUISection;-><init>(Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;Ljava/util/List;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;Ljava/util/List;Z)V
    .locals 7
    .param p1    # Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;",
            "Ljava/util/List<",
            "TT;>;Z)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 2
    invoke-direct/range {v0 .. v6}, Lcom/qmuiteam/qmui/widget/section/QMUISection;-><init>(Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;Ljava/util/List;ZZZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;Ljava/util/List;ZZZZ)V
    .locals 1
    .param p1    # Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;",
            "Ljava/util/List<",
            "TT;>;ZZZZ)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUISection;->else:Z

    .line 5
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUISection;->goto:Z

    .line 6
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUISection;->do:Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUISection;->if:Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    .line 8
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 9
    :cond_0
    iput-boolean p3, p0, Lcom/qmuiteam/qmui/widget/section/QMUISection;->for:Z

    .line 10
    iput-boolean p4, p0, Lcom/qmuiteam/qmui/widget/section/QMUISection;->new:Z

    .line 11
    iput-boolean p5, p0, Lcom/qmuiteam/qmui/widget/section/QMUISection;->try:Z

    .line 12
    iput-boolean p6, p0, Lcom/qmuiteam/qmui/widget/section/QMUISection;->case:Z

    return-void
.end method

.method public static final goto(I)Z
    .locals 1

    const/4 v0, -0x4

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public break()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUISection;->else:Z

    return v0
.end method

.method public case(I)Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUISection;->if:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUISection;->if:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public catch()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUISection;->case:Z

    return v0
.end method

.method public class()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUISection;->try:Z

    return v0
.end method

.method public const()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUISection;->for:Z

    return v0
.end method

.method public do()Lcom/qmuiteam/qmui/widget/section/QMUISection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/qmuiteam/qmui/widget/section/QMUISection<",
            "TH;TT;>;"
        }
    .end annotation

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUISection;->if:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;

    .line 3
    invoke-interface {v1}, Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;->cloneForDiff()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    new-instance v7, Lcom/qmuiteam/qmui/widget/section/QMUISection;

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUISection;->do:Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;

    invoke-interface {v0}, Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;->cloneForDiff()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;

    iget-boolean v3, p0, Lcom/qmuiteam/qmui/widget/section/QMUISection;->for:Z

    iget-boolean v4, p0, Lcom/qmuiteam/qmui/widget/section/QMUISection;->new:Z

    iget-boolean v5, p0, Lcom/qmuiteam/qmui/widget/section/QMUISection;->try:Z

    iget-boolean v6, p0, Lcom/qmuiteam/qmui/widget/section/QMUISection;->case:Z

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/qmuiteam/qmui/widget/section/QMUISection;-><init>(Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;Ljava/util/List;ZZZZ)V

    .line 5
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUISection;->else:Z

    iput-boolean v0, v7, Lcom/qmuiteam/qmui/widget/section/QMUISection;->else:Z

    .line 6
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUISection;->goto:Z

    iput-boolean v0, v7, Lcom/qmuiteam/qmui/widget/section/QMUISection;->goto:Z

    return-object v7
.end method

.method public else()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUISection;->if:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUISection;->new:Z

    return v0
.end method

.method public for(Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUISection;->if:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public if(Lcom/qmuiteam/qmui/widget/section/QMUISection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qmuiteam/qmui/widget/section/QMUISection<",
            "TH;TT;>;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUISection;->try:Z

    iput-boolean v0, p1, Lcom/qmuiteam/qmui/widget/section/QMUISection;->try:Z

    .line 2
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUISection;->case:Z

    iput-boolean v0, p1, Lcom/qmuiteam/qmui/widget/section/QMUISection;->case:Z

    .line 3
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUISection;->for:Z

    iput-boolean v0, p1, Lcom/qmuiteam/qmui/widget/section/QMUISection;->for:Z

    .line 4
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUISection;->new:Z

    iput-boolean v0, p1, Lcom/qmuiteam/qmui/widget/section/QMUISection;->new:Z

    .line 5
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUISection;->else:Z

    iput-boolean v0, p1, Lcom/qmuiteam/qmui/widget/section/QMUISection;->else:Z

    .line 6
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUISection;->goto:Z

    iput-boolean v0, p1, Lcom/qmuiteam/qmui/widget/section/QMUISection;->goto:Z

    return-void
.end method

.method public import(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUISection;->case:Z

    return-void
.end method

.method public native(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUISection;->try:Z

    return-void
.end method

.method public new(Ljava/util/List;ZZ)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;ZZ)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 1
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/section/QMUISection;->if:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 2
    :cond_0
    iput-boolean p3, p0, Lcom/qmuiteam/qmui/widget/section/QMUISection;->try:Z

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 3
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/section/QMUISection;->if:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4
    :cond_2
    iput-boolean p3, p0, Lcom/qmuiteam/qmui/widget/section/QMUISection;->case:Z

    :goto_0
    return-void
.end method

.method public public(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUISection;->for:Z

    return-void
.end method

.method public return(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUISection;->new:Z

    return-void
.end method

.method public super()Lcom/qmuiteam/qmui/widget/section/QMUISection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/qmuiteam/qmui/widget/section/QMUISection<",
            "TH;TT;>;"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/qmuiteam/qmui/widget/section/QMUISection;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/section/QMUISection;->do:Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/section/QMUISection;->if:Ljava/util/ArrayList;

    iget-boolean v3, p0, Lcom/qmuiteam/qmui/widget/section/QMUISection;->for:Z

    iget-boolean v4, p0, Lcom/qmuiteam/qmui/widget/section/QMUISection;->new:Z

    iget-boolean v5, p0, Lcom/qmuiteam/qmui/widget/section/QMUISection;->try:Z

    iget-boolean v6, p0, Lcom/qmuiteam/qmui/widget/section/QMUISection;->case:Z

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/qmuiteam/qmui/widget/section/QMUISection;-><init>(Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;Ljava/util/List;ZZZZ)V

    .line 2
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUISection;->else:Z

    iput-boolean v0, v7, Lcom/qmuiteam/qmui/widget/section/QMUISection;->else:Z

    .line 3
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUISection;->goto:Z

    iput-boolean v0, v7, Lcom/qmuiteam/qmui/widget/section/QMUISection;->goto:Z

    return-object v7
.end method

.method public this()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUISection;->goto:Z

    return v0
.end method

.method public throw(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUISection;->goto:Z

    return-void
.end method

.method public try()Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TH;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUISection;->do:Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;

    return-object v0
.end method

.method public while(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUISection;->else:Z

    return-void
.end method
