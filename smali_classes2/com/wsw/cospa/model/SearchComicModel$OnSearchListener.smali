.class public interface abstract Lcom/wsw/cospa/model/SearchComicModel$OnSearchListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/model/SearchComicModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSearchListener"
.end annotation


# virtual methods
.method public abstract checkIsExist(Lcom/wsw/cospa/bean/SearchComicBean;)Ljava/lang/Boolean;
.end method

.method public abstract getItemCount()I
.end method

.method public abstract loadMoreFinish(Ljava/lang/Boolean;)V
.end method

.method public abstract loadMoreSearchBook(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/SearchComicBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract refreshFinish(Ljava/lang/Boolean;)V
.end method

.method public abstract refreshSearchBook()V
.end method

.method public abstract searchBookError(Ljava/lang/Boolean;)V
.end method
