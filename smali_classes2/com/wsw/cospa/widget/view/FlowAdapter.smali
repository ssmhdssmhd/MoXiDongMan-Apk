.class public abstract Lcom/wsw/cospa/widget/view/FlowAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/widget/view/FlowAdapter$OnDataChangedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mOnDataChangedListener:Lcom/wsw/cospa/widget/view/FlowAdapter$OnDataChangedListener;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/widget/view/FlowAdapter;->mDataList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/widget/view/FlowAdapter;->mDataList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/FlowAdapter;->mDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/FlowAdapter;->mDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public abstract getView(ILcom/wsw/cospa/widget/view/FlowLayout;)Landroid/view/View;
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/FlowAdapter;->mOnDataChangedListener:Lcom/wsw/cospa/widget/view/FlowAdapter$OnDataChangedListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/wsw/cospa/widget/view/FlowAdapter$OnDataChangedListener;->onDataChanged()V

    :cond_0
    return-void
.end method

.method public refresh(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/view/FlowAdapter;->mDataList:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/view/FlowAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnDataChangedListener(Lcom/wsw/cospa/widget/view/FlowAdapter$OnDataChangedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/view/FlowAdapter;->mOnDataChangedListener:Lcom/wsw/cospa/widget/view/FlowAdapter$OnDataChangedListener;

    return-void
.end method
