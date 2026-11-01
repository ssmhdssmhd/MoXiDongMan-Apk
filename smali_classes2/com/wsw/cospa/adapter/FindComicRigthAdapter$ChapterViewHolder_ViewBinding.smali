.class public Lcom/wsw/cospa/adapter/FindComicRigthAdapter$ChapterViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private do:Lcom/wsw/cospa/adapter/FindComicRigthAdapter$ChapterViewHolder;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/adapter/FindComicRigthAdapter$ChapterViewHolder;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/adapter/FindComicRigthAdapter$ChapterViewHolder_ViewBinding;->do:Lcom/wsw/cospa/adapter/FindComicRigthAdapter$ChapterViewHolder;

    .line 3
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904b4

    const-string v2, "field \'parentName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/adapter/FindComicRigthAdapter$ChapterViewHolder;->parentName:Landroid/widget/TextView;

    .line 4
    const-class v0, Lcom/google/android/flexbox/FlexboxLayout;

    const v1, 0x7f09043f

    const-string v2, "field \'kindGroup\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/flexbox/FlexboxLayout;

    iput-object p2, p1, Lcom/wsw/cospa/adapter/FindComicRigthAdapter$ChapterViewHolder;->kindGroup:Lcom/google/android/flexbox/FlexboxLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/FindComicRigthAdapter$ChapterViewHolder_ViewBinding;->do:Lcom/wsw/cospa/adapter/FindComicRigthAdapter$ChapterViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/wsw/cospa/adapter/FindComicRigthAdapter$ChapterViewHolder_ViewBinding;->do:Lcom/wsw/cospa/adapter/FindComicRigthAdapter$ChapterViewHolder;

    .line 3
    iput-object v1, v0, Lcom/wsw/cospa/adapter/FindComicRigthAdapter$ChapterViewHolder;->parentName:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/wsw/cospa/adapter/FindComicRigthAdapter$ChapterViewHolder;->kindGroup:Lcom/google/android/flexbox/FlexboxLayout;

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
