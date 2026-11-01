.class public Lcom/wsw/cospa/utils/super;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/utils/super$if;
    }
.end annotation


# instance fields
.field private do:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ChapterListBean;",
            ">;"
        }
    .end annotation
.end field

.field private final for:J

.field private if:Lcom/google/common/cache/LoadingCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LoadingCache<",
            "Ljava/lang/String;",
            "Lcom/wsw/cospa/widget/ListTree$TreeNode;",
            ">;"
        }
    .end annotation
.end field

.field private final new:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ChapterListBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/utils/super;->do:Ljava/util/List;

    const-wide/32 v1, 0xc800000

    .line 3
    iput-wide v1, p0, Lcom/wsw/cospa/utils/super;->for:J

    const/16 v3, 0x3e8

    .line 4
    iput v3, p0, Lcom/wsw/cospa/utils/super;->new:I

    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/utils/super;->do:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7
    iget-object p1, p0, Lcom/wsw/cospa/utils/super;->if:Lcom/google/common/cache/LoadingCache;

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/super;->do()V

    .line 9
    :cond_0
    invoke-static {}, Lcom/google/common/cache/if;->abstract()Lcom/google/common/cache/if;

    move-result-object p1

    .line 10
    invoke-virtual {p1, v3}, Lcom/google/common/cache/if;->throws(I)Lcom/google/common/cache/if;

    move-result-object p1

    .line 11
    invoke-virtual {p1, v1, v2}, Lcom/google/common/cache/if;->package(J)Lcom/google/common/cache/if;

    move-result-object p1

    const-wide/16 v0, 0xc

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 12
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/common/cache/if;->case(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/if;

    move-result-object p1

    new-instance v0, Lcom/wsw/cospa/utils/super$if;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wsw/cospa/utils/super$if;-><init>(Lcom/wsw/cospa/utils/super;Lcom/wsw/cospa/utils/super$do;)V

    .line 13
    invoke-virtual {p1, v0}, Lcom/google/common/cache/if;->if(Lcom/google/common/cache/for;)Lcom/google/common/cache/LoadingCache;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/utils/super;->if:Lcom/google/common/cache/LoadingCache;

    return-void
.end method


# virtual methods
.method public do()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/super;->if:Lcom/google/common/cache/LoadingCache;

    invoke-interface {v0}, Lcom/google/common/cache/Cache;->invalidateAll()V

    return-void
.end method

.method public for(Ljava/lang/String;)Lcom/wsw/cospa/widget/ListTree$TreeNode;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/wsw/cospa/utils/super;->if:Lcom/google/common/cache/LoadingCache;

    invoke-interface {v1, p1}, Lcom/google/common/cache/LoadingCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/widget/ListTree$TreeNode;

    .line 2
    invoke-virtual {p1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    return-object p1

    :catch_0
    move-exception p1

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public if(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/super;->if:Lcom/google/common/cache/LoadingCache;

    invoke-interface {v0, p1}, Lcom/google/common/cache/Cache;->invalidate(Ljava/lang/Object;)V

    return-void
.end method

.method public new()Lcom/wsw/cospa/widget/ListTree;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/wsw/cospa/widget/ListTree;

    invoke-direct {v0}, Lcom/wsw/cospa/widget/ListTree;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/utils/super;->do:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wsw/cospa/bean/ChapterListBean;

    .line 3
    invoke-virtual {v2}, Lcom/wsw/cospa/bean/ChapterListBean;->getParentIdString()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {v2}, Lcom/wsw/cospa/bean/ChapterListBean;->getParentNameString()Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_0

    const-string v5, ">>"

    .line 5
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 6
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 7
    :cond_1
    array-length v4, v3

    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_1
    const/4 v9, 0x0

    if-ge v5, v4, :cond_6

    aget-object v10, v3, v5

    .line 8
    invoke-virtual {p0, v10}, Lcom/wsw/cospa/utils/super;->for(Ljava/lang/String;)Lcom/wsw/cospa/widget/ListTree$TreeNode;

    move-result-object v11

    if-nez v11, :cond_5

    const v11, 0x7f0c0059

    const-string v12, ""

    if-nez v8, :cond_3

    .line 9
    aget-object v13, v7, v8

    if-eqz v13, :cond_2

    aget-object v12, v7, v8

    :cond_2
    invoke-virtual {v0, v9, v12, v11}, Lcom/wsw/cospa/widget/ListTree;->addNode(Lcom/wsw/cospa/widget/ListTree$TreeNode;Ljava/lang/Object;I)Lcom/wsw/cospa/widget/ListTree$TreeNode;

    move-result-object v9

    goto :goto_2

    .line 10
    :cond_3
    iget-object v9, p0, Lcom/wsw/cospa/utils/super;->if:Lcom/google/common/cache/LoadingCache;

    add-int/lit8 v13, v8, -0x1

    aget-object v13, v3, v13

    invoke-interface {v9, v13}, Lcom/google/common/cache/LoadingCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wsw/cospa/widget/ListTree$TreeNode;

    aget-object v13, v7, v8

    if-eqz v13, :cond_4

    aget-object v12, v7, v8

    :cond_4
    invoke-virtual {v0, v9, v12, v11}, Lcom/wsw/cospa/widget/ListTree;->addNode(Lcom/wsw/cospa/widget/ListTree$TreeNode;Ljava/lang/Object;I)Lcom/wsw/cospa/widget/ListTree$TreeNode;

    move-result-object v9

    .line 11
    :goto_2
    invoke-virtual {p0, v10, v9}, Lcom/wsw/cospa/utils/super;->try(Ljava/lang/String;Lcom/wsw/cospa/widget/ListTree$TreeNode;)V

    :cond_5
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 12
    :cond_6
    new-instance v4, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$if;

    invoke-direct {v4, v2}, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$if;-><init>(Lcom/wsw/cospa/bean/ChapterListBean;)V

    const v2, 0x7f0c0058

    if-nez v8, :cond_7

    .line 13
    invoke-virtual {v0, v9, v4, v2}, Lcom/wsw/cospa/widget/ListTree;->addNode(Lcom/wsw/cospa/widget/ListTree$TreeNode;Ljava/lang/Object;I)Lcom/wsw/cospa/widget/ListTree$TreeNode;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->setShowExpandIcon(Z)V

    goto :goto_0

    .line 14
    :cond_7
    iget-object v5, p0, Lcom/wsw/cospa/utils/super;->if:Lcom/google/common/cache/LoadingCache;

    add-int/lit8 v8, v8, -0x1

    aget-object v3, v3, v8

    invoke-interface {v5, v3}, Lcom/google/common/cache/LoadingCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wsw/cospa/widget/ListTree$TreeNode;

    invoke-virtual {v0, v3, v4, v2}, Lcom/wsw/cospa/widget/ListTree;->addNode(Lcom/wsw/cospa/widget/ListTree$TreeNode;Ljava/lang/Object;I)Lcom/wsw/cospa/widget/ListTree$TreeNode;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->setShowExpandIcon(Z)V

    goto/16 :goto_0

    :cond_8
    return-object v0
.end method

.method public try(Ljava/lang/String;Lcom/wsw/cospa/widget/ListTree$TreeNode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/super;->if:Lcom/google/common/cache/LoadingCache;

    invoke-interface {v0, p1, p2}, Lcom/google/common/cache/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
